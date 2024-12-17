const cds = require('@sap/cds');
const outboundDeliveryService = require('./services/outboundDeliveryService'); // Import service functions

module.exports = async (srv) => {
	await outboundDeliveryService.initializeService();
	// Using CDS API
	const SIECAPI_OUTBOUND_DELIVERY_SRV = await cds.connect.to(
		'SIECAPI_OUTBOUND_DELIVERY_SRV'
	);
	srv.on('READ', 'A_HandlingUnitHeaderDelivery', (req) =>
		SIECAPI_OUTBOUND_DELIVERY_SRV.run(req.query)
	);
	srv.on('READ', 'A_HandlingUnitItemDelivery', (req) =>
		SIECAPI_OUTBOUND_DELIVERY_SRV.run(req.query)
	);
	srv.on('READ', 'A_MaintenanceItemObject', (req) =>
		SIECAPI_OUTBOUND_DELIVERY_SRV.run(req.query)
	);
	srv.on('READ', 'A_OutbDeliveryAddress', (req) =>
		SIECAPI_OUTBOUND_DELIVERY_SRV.run(req.query)
	);
	srv.on('READ', 'A_OutbDeliveryAddress2', (req) =>
		SIECAPI_OUTBOUND_DELIVERY_SRV.run(req.query)
	);
	srv.on('READ', 'A_OutbDeliveryDocFlow', (req) =>
		SIECAPI_OUTBOUND_DELIVERY_SRV.run(req.query)
	);
	srv.on('READ', 'A_OutbDeliveryHeader', (req) =>
		SIECAPI_OUTBOUND_DELIVERY_SRV.run(req.query)
	);
	srv.on('READ', 'A_OutbDeliveryHeaderText', (req) =>
		SIECAPI_OUTBOUND_DELIVERY_SRV.run(req.query)
	);
	srv.on('READ', 'A_OutbDeliveryItem', (req) =>
		SIECAPI_OUTBOUND_DELIVERY_SRV.run(req.query)
	);
	srv.on('READ', 'A_OutbDeliveryItemText', (req) =>
		SIECAPI_OUTBOUND_DELIVERY_SRV.run(req.query)
	);
	srv.on('READ', 'A_OutbDeliveryPartner', (req) =>
		SIECAPI_OUTBOUND_DELIVERY_SRV.run(req.query)
	);
	srv.on('READ', 'A_SerialNmbrDelivery', (req) =>
		SIECAPI_OUTBOUND_DELIVERY_SRV.run(req.query)
	);
};
