const cds = require('@sap/cds');

let SIECAPI_OUTBOUND_DELIVERY_SRV;
let A_OutbDeliveryHeader;
async function initializeService() {
	if (!SIECAPI_OUTBOUND_DELIVERY_SRV) {
		SIECAPI_OUTBOUND_DELIVERY_SRV = await cds.connect.to(
			'SIECAPI_OUTBOUND_DELIVERY_SRV'
		);
	}
	({ A_OutbDeliveryHeader } = SIECAPI_OUTBOUND_DELIVERY_SRV.entities);
	return SIECAPI_OUTBOUND_DELIVERY_SRV;
}

async function getOutboundDeliveryById(outboundDeliveryId) {
	await initializeService();
	const OutbDelivery = await SIECAPI_OUTBOUND_DELIVERY_SRV.run(
		SELECT.one.from(A_OutbDeliveryHeader, (A_OutbDeliveryHeader) => {
			A_OutbDeliveryHeader`*`,
			A_OutbDeliveryHeader.to_DeliveryDocumentItem(
				(to_DeliveryDocumentItem) => {
					to_DeliveryDocumentItem`*`;
				}
			),
			A_OutbDeliveryHeader.to_DeliveryDocumentPartner(
				(to_DeliveryDocumentPartner) => {
					to_DeliveryDocumentPartner`*`;
				}
			),
			A_OutbDeliveryHeader.to_HandlingUnitHeaderDelivery(
				(to_HandlingUnitHeaderDelivery) => {
					to_HandlingUnitHeaderDelivery`*`;
				}
			),
			A_OutbDeliveryHeader.to_DeliveryDocumentText(
				(to_DeliveryDocumentText) => {
					to_DeliveryDocumentText`*`;
				}
			);
			}).where({ DeliveryDocument: outboundDeliveryId })
	);

	return OutbDelivery;
}

// Export functions to make them available for use in other files
module.exports = {
	getOutboundDeliveryById,
	initializeService,
};
