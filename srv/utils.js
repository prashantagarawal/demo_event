const logger = cds.log('messaging', { label: 'message-srv' });

// logging
function logMessageContentFromEvent(messageContent) {
	logger.info(`Parsed Message Header Details:`);
	logger.info(`Type: ${messageContent.type}`);
	logger.info(`Spec Version: ${messageContent.specversion}`);
	logger.info(`Source: ${messageContent.source}`);
	logger.info(`ID: ${messageContent.id}`);
	logger.info(`Time: ${messageContent.time}`);
	logger.info(`Data Content Type: ${messageContent.datacontenttype}`);
	logger.info(`Payload: ${messageContent.data}`);
}
exports.logMessageContentFromEvent = logMessageContentFromEvent;

function logSalesOrder(messageContent) {
	if (!messageContent) {
		logger.error('Message content is undefined or null');
		return;
	}
	// Log data payload
	const data = messageContent;
	logger.info(`--------Data Payload----------------`);
	logger.info(`Sales Order: ${data.SalesOrder}`);
	//logger.info(`Event Raised DateTime: ${data.EventRaisedDateTime}`);    // this was present in original message content
	logger.info(`Sales Order Type: ${data.SalesOrderType}`);
	logger.info(`Sales Organization: ${data.SalesOrganization}`);
	logger.info(`Distribution Channel: ${data.DistributionChannel}`);
	logger.info(`Organization Division: ${data.OrganizationDivision}`);
	logger.info(`Sold To Party: ${data.SoldToParty}`);
}
exports.logSalesOrder = logSalesOrder;

function logSalesOrderItems(salesOrderItems) {
	if (!salesOrderItems || salesOrderItems.length === 0) {
		logger.error('Sales order items are undefined or empty');
		return;
	}
	logger.info('Sales Order ID: ' + salesOrderItems[0].SalesOrder + '\n');
	for (let i = 0; i < salesOrderItems.length; i++) {
		logger.info('######## Item ' + (i + 1) + ' ########');
		logger.info('Sales Order Item: ' + salesOrderItems[i].SalesOrderItem);
		logger.info(
			'Sales Oder Item Category: ' + salesOrderItems[i].SalesOrderItemCategory
		);
		logger.info(
			'Sales Oder Item Text: ' + salesOrderItems[i].SalesOrderItemText
		);
		logger.info('Sales Order Material: ' + salesOrderItems[i].Material);
		logger.info(
			'Sales Order Requested Quantity: ' + salesOrderItems[i].RequestedQuantity
		);
		logger.info('');
	}
}
exports.logSalesOrderItems = logSalesOrderItems;

function logBusinessPartner(businessPartner) {
	logger.info('Business Partner Logs in progress');
	// TODO
}
exports.logBusinessPartner = logBusinessPartner;

function logProduct(product) {
	if (!product) {
		logger.error('Product is undefined or null');
		return;
	}
	logger.info('######### Product ########');
	logger.info('Product ID: ' + product.Product);
	logger.info('Product Type: ' + product.ProductType);
	logger.info('CreationDateTime: ' + product.CreationDateTime);
	logger.info('Last changed: ' + product.LastChangeDate);
	logger.info('');
}
exports.logProduct = logProduct;

function logPurchaseRequisition(messageContent) {
	if (!messageContent) {
		logger.error('Message content is undefined or null');
		return;
	}
	logger.info('######### Purchase Requisition ########');
	logger.info('Purchase Requisiton: ' + messageContent.PurchaseRequisition);
	logger.info(
		'Purchase Requisiton Type: ' + messageContent.PurchaseRequistionType
	);
	logger.info('PurReqnDescription: ' + messageContent.PurReqnDescription);
}
exports.logPurchaseRequisition = logPurchaseRequisition;

function logPurchaseRequisitionItem(messageContent) {
	logger.info('TO BE IMPLEMENTED');
	// TODO
}
exports.logPurchaseRequisitionItem = logPurchaseRequisitionItem;

function logPurchaseOrder(messageContent) {
	if (!messageContent) {
		logger.error('Message content is undefined or null');
		return;
	}
	logger.info('######### Purchase Order ########');
	logger.info('Purchase Order: ' + messageContent.PurchaseOrder);
	logger.info('Purchase Order Type: ' + messageContent.PurchaseOrderType);
	logger.info('Creation Date : ' + messageContent.CreationDate);
}
exports.logPurchaseOrder = logPurchaseOrder;

function logPurchaseOrderItem(messageContent) {
	logger.info('TO BE IMPLEMENTED');
	// TODO
}
exports.logPurchaseOrderItem = logPurchaseOrderItem;

function logProductionOrder(messageContent) {
	logger.info('Production Order Logs in progress');
	// TODO
}
exports.logProductionOrder = logProductionOrder;

function logProductionOrderItem(messageContent) {
	logger.info('Production Order Items Logs in progress');
	// TODO
}
exports.logProductionOrderItem = logProductionOrderItem;

function logOutboundDelivery(messageContent) {
	logger.info('Outbound Delivery Logs in progress');
	// TODO
}
exports.logOutboundDelivery = logOutboundDelivery;

function logOutboundDeliveryItem(messageContent) {
	logger.info('Outbound Delivery Items Logs in progress');
	// TODO
}
exports.logOutboundDeliveryItem = logOutboundDeliveryItem;

function logBillingDocument(messageContent) {
	logger.info('Billing Document Logs in progress');
	// TODO
}
exports.logBillingDocument = logBillingDocument;

function logBillingDocumentItem(messageContent) {
	logger.info('Billing Document Items Logs in progress');
	// TODO
}
exports.logBillingDocumentItem = logBillingDocumentItem;

function logBillingDocumentItemPartner(messageContent) {
	logger.info('Billing Document Item Partners Logs in progress');
	// TODO
}
exports.logBillingDocumentItemPartner = logBillingDocumentItemPartner;

function determineMessageType(messageContentType) {
	if (!messageContentType) {
		throw new Error('Message content type is undefined or null');
	}
	let messageType = '';

	if (messageContentType.includes('Created')) {
		messageType = MESSAGETYPES.CREATED;
	} else if (messageContentType.includes('Changed')) {
		messageType = MESSAGETYPES.CHANGED;
	} else {
		throw new error('Unknown MessageType: ' + messageContentType);
	}

	return messageType;
}
exports.determineMessageType = determineMessageType;

function determineQueueType(messageContentType) {
	if (!messageContentType) {
		throw new Error('Message content type is undefined or null');
	}
	let queueType = '';
	if (messageContentType.includes('SalesOrder')) {
		queueType = QUEUETYPE.SALESORDER;
	} else if (messageContentType.includes('BusinessPartner')) {
		queueType = QUEUETYPE.BUSINESSPARTNER;
	} else if (messageContentType.includes('ProductionOrder')) {
		queueType = QUEUETYPE.PRODUCTIONORDER;
	} else if (messageContentType.includes('Product')) {
		queueType = QUEUETYPE.PRODUCT;
	} else if (messageContentType.includes('PurchaseRequisition')) {
		queueType = QUEUETYPE.PURCHASEREQUISITION;
	} else if (messageContentType.includes('PurchaseOrder')) {
		queueType = QUEUETYPE.PURCHASEORDER;
	} else if (messageContentType.includes('OutboundDelivery')) {
		queueType = QUEUETYPE.OUTBOUNDDELIVERY;
	} else if (messageContentType.includes('BillingDocument')) {
		queueType = QUEUETYPE.BILLINGDOCUMENT;
	} else {
		throw new error('Unknown QueueType: ' + messageContentType);
	}

	return queueType;
}
exports.determineQueueType = determineQueueType;

async function determinePublishTopic(queueType, topic_prefix) {
	if (!queueType || !topic_prefix) {
		throw new Error('Queue type or topic prefix is undefined or null');
	}
	const db = await cds.connect.to('db');
	const { TopicFilters } = db.entities;
	//let publishTopic = process.env.PUBLISH_TOPIC_ROOT;
	let publishTopic = topic_prefix;
	publishTopic = publishTopic + queueType + '/>';
	const topicsFilters = await SELECT.from(TopicFilters)
		.where({ rootTopic: queueType })
		.orderBy('level');
	return { publishTopic, topicsFilters };
}
exports.determinePublishTopic = determinePublishTopic;

function logMessage(outboundMessage, queueType) {
	switch (queueType) {
		case QUEUETYPE.SALESORDER:
			logSalesOrder(outboundMessage);
			break;
		case QUEUETYPE.BUSINESSPARTNER:
			logBusinessPartner(outboundMessage);
			break;
		case QUEUETYPE.PRODUCT:
			logProduct(outboundMessage);
			break;
		case QUEUETYPE.PURCHASEREQUISITION:
			logPurchaseRequisition(outboundMessage);
			break;
		case QUEUETYPE.PURCHASEORDER:
			logPurchaseOrder(outboundMessage);
			break;
		case QUEUETYPE.PRODUCTIONORDER:
			logProductionOrder(outboundMessage);
			break;
		case QUEUETYPE.OUTBOUNDDELIVERY:
			logOutboundDelivery(outboundMessage);
			break;
		case QUEUETYPE.BILLINGDOCUMENT:
			logBillingDocument(outboundMessage);
			break;
		default:
			log.info(
				'Unkown queueType: ' + queueType + '. No message was sent to a topic'
			);
	}
}
exports.logMessage = logMessage;

const { getSalesOrderById } = require('./services/salesOrderService');
const {
	getBusinessPartnerByKey,
} = require('./services/businessPartnerService');
const { getProductByKey } = require('./services/productService');
const {
	getPurchaseRequisitionById,
} = require('./services/purchaseRequisitionService');
const { getPurchaseOrderById } = require('./services/purchaseOrderService');
const { getProductionOrderById } = require('./services/productionOrderService');
const {
	getOutboundDeliveryById,
} = require('./services/outboundDeliveryService');
const { getBillingDocumentById } = require('./services/billingDocumentService');

async function getOutboundMessage(messageContent, queueType) {
	if (!messageContent || !queueType) {
		throw new Error('Message content or queue type is undefined or null');
	}
	let outboundMessage = '';
	if (!messageContent.data) {
		throw new Error('No message content: ' + messageContent);
	}
	try {
		switch (queueType) {
			case QUEUETYPE.SALESORDER:
				outboundMessage = await getSalesOrderById(
					messageContent.data.SalesOrder
				);
				break;
			case QUEUETYPE.BUSINESSPARTNER:
				outboundMessage = await getBusinessPartnerByKey(
					messageContent.data.BusinessPartner
				);
				break;
			case QUEUETYPE.PRODUCT:
				outboundMessage = await getProductByKey(messageContent.data.Product);
				break;
			case QUEUETYPE.PURCHASEREQUISITION:
				outboundMessage = await getPurchaseRequisitionById(
					messageContent.data.PurchaseRequisition
				);
				break;
			case QUEUETYPE.PURCHASEORDER:
				outboundMessage = await getPurchaseOrderById(
					messageContent.data.PurchaseOrder
				);
				break;
			case QUEUETYPE.PRODUCTIONORDER:
				outboundMessage = await getProductionOrderById(
					messageContent.data.ProductionOrder
				);
				break;
			case QUEUETYPE.OUTBOUNDDELIVERY:
				outboundMessage = await getOutboundDeliveryById(
					messageContent.data.OutboundDelivery
				);
				break;
			case QUEUETYPE.BILLINGDOCUMENT:
				outboundMessage = await getBillingDocumentById(
					messageContent.data.BillingDocument
				);
				break;
			default:
				log.info(
					`Invalid queue type: ${queueType}. No message sent to the queue.`
				);
		}
	} catch {
		throw new Error('Could not fetch outbound message');
	}

	return outboundMessage;
}
exports.getOutboundMessage = getOutboundMessage;

// enums
const MESSAGETYPES = Object.freeze({
	CHANGED: 'changed',
	CREATED: 'created',
});
exports.MESSAGETYPES = MESSAGETYPES;

const QUEUETYPE = Object.freeze({
	SALESORDER: 'salesorder',
	BUSINESSPARTNER: 'businesspartner',
	PRODUCT: 'product',
	PURCHASEREQUISITION: 'purchaserequisition',
	PURCHASEORDER: 'purchaseorder',
	PRODUCTIONORDER: 'productionorder',
	OUTBOUNDDELIVERY: 'outbounddelivery',
	BILLINGDOCUMENT: 'billingdocument',
});
exports.QUEUETYPE = QUEUETYPE;
