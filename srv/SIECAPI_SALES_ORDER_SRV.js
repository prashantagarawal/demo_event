const cds = require('@sap/cds');
const salesOrderService = require('./services/salesOrderService'); // Import service functions

module.exports = async (srv) => {
	// Using CDS API
	const SIECAPI_SALES_ORDER_SRV = await cds.connect.to(
		'SIECAPI_SALES_ORDER_SRV'
	);
	srv.on('READ', 'A_SalesOrder', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderBillingPlan', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderBillingPlanItem', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderHeaderPartner', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderHeaderPrElement', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderItem', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderItemBillingPlan', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderItemPartner', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderItemPartnerAddress', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderItemPrElement', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderItemRelatedObject', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderItemText', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderItmPrecdgProcFlow', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderItmSubsqntProcFlow', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderPartnerAddress', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderPrecdgProcFlow', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderRelatedObject', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderScheduleLine', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderSubsqntProcFlow', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SlsOrdPaymentPlanItemDetails', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SalesOrderText', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
	srv.on('READ', 'A_SlsOrderItemBillingPlanItem', (req) =>
		SIECAPI_SALES_ORDER_SRV.run(req.query)
	);
};
