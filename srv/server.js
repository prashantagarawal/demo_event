const cds = require('@sap/cds');
const {
	getOutboundMessage,
	logMessage,
	determineQueueType,
	determineMessageType,
	determinePublishTopic,
	logMessageContentFromEvent,
} = require('./utils');
const solace = require('solclientjs').debug;

const SOLACE_HOST = process.env.SOLACE_HOST;
const SOLACE_VPN = process.env.SOLACE_VPN;
const SOLACE_USERNAME = process.env.SOLACE_USERNAME;
const SOLACE_PASSWORD = process.env.SOLACE_PASSWORD;

let topic_prefix;

module.exports = cds.server;

cds.on('served', async () => {
	try {
		let subscribers = [];
		const db = await cds.connect.to('db');
		const { Queues } = db.entities;
		const queues = await SELECT.from(Queues, (queues) => {
			queues`*`,
				queues.topics((topic) => {
					topic`*`;
				});
		});

		//Determin Publish topic prefix
		try {
			if (!queues || queues.length === 0) {
				throw new Error('Queue is empty or undefined.');
			}

			if (!queues[0].topics || queues[0].topics.length === 0) {
				throw new Error('Topics are empty or undefined.');
			}

			const str = queues[0].topics[0].topic; 
    		const parts = str.split('/'); 

			if (parts.length < 3) {
       			throw new Error('The topic does not contain enough segments.');
   			}

    		topic_prefix = parts.slice(0, 3).join('/');
			topic_prefix += '/'

		} catch (error) {
			console.error('Error:', error.message);
		}

		console.log('Service is served and ready to accept requests.');
		initializeSolaceFactory();
		queues?.forEach((queue) => {
			queue.topics?.forEach((topic) => {
				let subscriber = createSubscriber(queue?.queue, topic?.topic);
				subscriber.run(process.argv);
				subscribers.push(subscriber);
			});
		});

		process.stdin.resume();

		process.on('SIGINT', () => {
			subscribers.forEach((subscriber) => subscriber.exit());
		});
	} catch (error) {
		console.error('Error during service initialization:', error);
	}
});

function initializeSolaceFactory() {
	try {
		const factoryProps = new solace.SolclientFactoryProperties();
		factoryProps.profile = solace.SolclientFactoryProfiles.version10;
		solace.SolclientFactory.init(factoryProps);
		solace.SolclientFactory.setLogLevel(solace.LogLevel.WARN);
	} catch (error) {
		console.error('Error initializing Solace factory:', error);
	}
}

function createSubscriber(queueName, topicName) {
	if (!queueName || !topicName) {
		throw new Error('Queue name or topic name is undefined or null');
	}
	const subscriber = {
		session: null,
		flow: null,
		queueName,
		topicName,
		consuming: false,
		subscribed: false,

		log: function (message) {
			const now = new Date();
			const timestamp = `[${now.toTimeString().split(' ')[0]}] `;
			console.log(timestamp + message);
		},

		run: function (argv) {
			this.connect(argv);
		},

		connect: function () {
			if (this.session) {
				this.log('Already connected and ready to consume messages.');
				return;
			}

			this.log(
				`Connecting to Solace PubSub+ Event Broker using url: ${SOLACE_HOST}`
			);
			this.log(`Client username: ${SOLACE_USERNAME}`);
			this.log(`Solace PubSub+ Event Broker VPN name: ${SOLACE_VPN}`);

			try {
				this.session = solace.SolclientFactory.createSession({
					url: SOLACE_HOST,
					vpnName: SOLACE_VPN,
					userName: SOLACE_USERNAME,
					password: SOLACE_PASSWORD,
				});

				this.attachSessionEventListeners();
				this.session.connect();
			} catch (error) {
				this.log(`Error during session creation: ${error}`);
			}
		},

		attachSessionEventListeners: function () {
			this.session.on(solace.SessionEventCode.UP_NOTICE, () => {
				this.log(
					'Successfully connected and ready to start the message subscriber.'
				);
				this.startConsume();
			});

			this.session.on(solace.SessionEventCode.CONNECT_FAILED_ERROR, (event) => {
				this.log(
					`Connection failed: ${event.infoStr}. Check parameters and connectivity.`
				);
			});

			this.session.on(solace.SessionEventCode.DISCONNECTED, () => {
				this.log('Disconnected.');
				this.cleanupSession();
			});
		},

		startConsume: function () {
			if (!this.session) {
				this.log('Cannot start consuming because session is not established.');
				return;
			}

			if (this.consuming) {
				this.log(`Already consuming from queue "${this.queueName}".`);
				return;
			}

			this.log(`Starting subscriber for queue: ${this.queueName}`);
			try {
				this.messageSubscriber = this.session.createMessageConsumer({
					queueDescriptor: {
						name: this.queueName,
						type: solace.QueueType.QUEUE,
					},
					acknowledgeMode: solace.MessageConsumerAcknowledgeMode.CLIENT,
					createIfMissing: true,
				});

				this.attachMessageConsumerListeners();
				this.messageSubscriber.connect();
			} catch (error) {
				this.log(`Error during message consumer creation: ${error}`);
			}
		},

		attachMessageConsumerListeners: async function () {
			this.messageSubscriber.on(solace.MessageConsumerEventName.UP, () => {
				this.subscribe();
				this.consuming = true;
				this.log('Ready to receive messages.');
			});

			this.messageSubscriber.on(
				solace.MessageConsumerEventName.CONNECT_FAILED_ERROR,
				() => {
					this.log(
						`Failed to bind to queue "${this.queueName}". Ensure the queue exists.`
					);
					this.exit();
				}
			);

			this.messageSubscriber.on(
				solace.MessageConsumerEventName.MESSAGE,
				async (message) => {
					this.log(`Received message: "${message.getBinaryAttachment()}"`);

					try {
						const cleanMessage = message
							.getBinaryAttachment()
							.replace(/[^\x20-\x7E]/g, '')
							.replace(/^[^{]*/, '');

						const messageContent = JSON.parse(cleanMessage);
						if (!messageContent) {
							this.log('Message content is undefined or null');
							return;
						}
						logMessageContentFromEvent(messageContent);
						const queueType = determineQueueType(messageContent.type);
						const messageType = determineMessageType(messageContent.type);
						const { publishTopic, topicsFilters } = await determinePublishTopic(
							queueType,
							topic_prefix
						);
						const outboundMessage = await getOutboundMessage(
							messageContent,
							queueType
						);

						logMessage(outboundMessage, queueType);

						if (publishTopic) {
							let finalPublishTopic = publishTopic;

							// Split the publishTopic at '>'
							const [baseTopic, suffix] = publishTopic.split('/>');

							// Initialize finalPublishTopic with baseTopic
							finalPublishTopic = baseTopic;

							// Loop over topicsFilters and find matching properties
							topicsFilters.forEach((filterObj) => {
								const filterValue = filterObj.filter;
								if (outboundMessage.hasOwnProperty(filterValue)) {
									const matchingProperty = outboundMessage[filterValue];
									if (matchingProperty) {
										this.log(
											`Matching property for filter "${filterValue}": ${matchingProperty}`
										);
										finalPublishTopic += `/${matchingProperty}`;
									} else {
										this.log(
											`No matching property found for filter "${filterValue}", using '*' as default`
										);
										finalPublishTopic += `/*`;
									}
								} else {
									this.log(
										`No matching property found for filter "${filterValue}"`
									);
								}
							});

							finalPublishTopic += '/>';

							const solaceMessage = solace.SolclientFactory.createMessage();
							solaceMessage.setDestination(
								solace.SolclientFactory.createTopicDestination(
									finalPublishTopic
								)
							);
							solaceMessage.setBinaryAttachment(
								JSON.stringify(outboundMessage)
							);
							solaceMessage.setDeliveryMode(
								solace.MessageDeliveryModeType.DIRECT
							);

							this.session.send(solaceMessage);
							this.log(`Published message to topic: ${finalPublishTopic}`);
						} else {
							this.log('No matching type for publishing. Message not sent.');
							return;
						}
					} catch (error) {
						this.log(`Error parsing message: ${error.message}`);
					}

					message.acknowledge();
				}
			);

			this.messageSubscriber.on(solace.MessageConsumerEventName.DOWN, () => {
				this.log('Message consumer is down.');
				this.consuming = false;
			});

			this.messageSubscriber.on(
				solace.MessageConsumerEventName.SUBSCRIPTION_ERROR,
				(event) => {
					this.log(`Subscription error: ${event.reason}`);
				}
			);

			this.messageSubscriber.on(
				solace.MessageConsumerEventName.SUBSCRIPTION_OK,
				(event) => {
					this.subscribed = !this.subscribed;
					const action = this.subscribed ? 'Subscribed' : 'Unsubscribed';
					this.log(`${action} to topic: ${event.correlationKey}`);
				}
			);
		},

		subscribe: function () {
			if (!this.messageSubscriber) {
				this.log('Cannot subscribe as message subscriber is not initialized.');
				return;
			}

			if (this.subscribed) {
				this.log(`Already subscribed to "${this.topicName}".`);
				return;
			}

			this.log(`Subscribing to topic: ${this.topicName}`);
			try {
				this.messageSubscriber.addSubscription(
					solace.SolclientFactory.createTopicDestination(this.topicName),
					this.topicName,
					10000
				);
			} catch (error) {
				this.log(`Subscription error: ${error}`);
			}
		},

		exit: function () {
			this.unsubscribe();
			setTimeout(() => {
				this.stopConsume();
				this.disconnect();
				process.exit();
			}, 1000);
		},

		stopConsume: function () {
			if (this.session && this.consuming) {
				this.log(`Stopping consumption from queue: ${this.queueName}`);
				try {
					this.messageSubscriber.disconnect();
					this.messageSubscriber.dispose();
				} catch (error) {
					this.log(`Error during consumption stop: ${error}`);
				}
			}
		},

		unsubscribe: function () {
			if (this.session && this.subscribed) {
				this.log(`Unsubscribing from topic: ${this.topicName}`);
				try {
					this.messageSubscriber.removeSubscription(
						solace.SolclientFactory.createTopicDestination(this.topicName),
						this.topicName,
						10000
					);
				} catch (error) {
					this.log(`Error during unsubscribe: ${error}`);
				}
			}
		},

		disconnect: function () {
			this.log('Disconnecting from Solace PubSub+ Event Broker...');
			if (this.session) {
				try {
					setTimeout(() => this.session.disconnect(), 1000);
				} catch (error) {
					this.log(`Error during disconnect: ${error}`);
				}
			}
		},

		cleanupSession: function () {
			this.consuming = false;
			if (this.session) {
				this.session.dispose();
				this.session = null;
			}
		},
	};

	subscriber.log(
		`Subscriber initialized for queue: "${queueName}", topic: "${topicName}"`
	);
	return subscriber;
}
