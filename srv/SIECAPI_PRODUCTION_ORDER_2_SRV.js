const cds = require('@sap/cds');
const purchaseOrderService = require('./services/purchaseOrderService'); // Import service functions

module.exports = async (srv) => {
	await purchaseOrderService.initializeService();
	// Using CDS API
	const SIECAPI_PRODUCTION_ORDER_2_SRV = await cds.connect.to(
		'SIECAPI_PRODUCTION_ORDER_2_SRV'
	);
	srv.on('READ', 'A_ProductionOrderComponent_2', (req) =>
		SIECAPI_PRODUCTION_ORDER_2_SRV.run(req.query)
	);
	srv.on('READ', 'A_ProductionOrderComponent_3', (req) =>
		SIECAPI_PRODUCTION_ORDER_2_SRV.run(req.query)
	);
	srv.on('READ', 'A_ProductionOrderComponent_4', (req) =>
		SIECAPI_PRODUCTION_ORDER_2_SRV.run(req.query)
	);
	srv.on('READ', 'A_ProductionOrderItem_2', (req) =>
		SIECAPI_PRODUCTION_ORDER_2_SRV.run(req.query)
	);
	srv.on('READ', 'A_ProductionOrderOperation_2', (req) =>
		SIECAPI_PRODUCTION_ORDER_2_SRV.run(req.query)
	);
	srv.on('READ', 'A_ProductionOrderStatus_2', (req) =>
		SIECAPI_PRODUCTION_ORDER_2_SRV.run(req.query)
	);
	srv.on('READ', 'A_ProductionOrder_2', (req) =>
		SIECAPI_PRODUCTION_ORDER_2_SRV.run(req.query)
	);
	srv.on('READ', 'A_ProductionRsceTools_2', (req) =>
		SIECAPI_PRODUCTION_ORDER_2_SRV.run(req.query)
	);
};
