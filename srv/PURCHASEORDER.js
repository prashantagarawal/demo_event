const cds = require('@sap/cds');
const purchaseOrderService = require('./services/purchaseOrderService'); // Import service functions

module.exports = async (srv) => {
	await purchaseOrderService.initializeService();
	// Using CDS API
	const PURCHASEORDER = await cds.connect.to('PURCHASEORDER');
	srv.on('READ', 'POSubcontractingComponent', (req) =>
		PURCHASEORDER.run(req.query)
	);
	srv.on('READ', 'PurOrderItemDeliveryAddress', (req) =>
		PURCHASEORDER.run(req.query)
	);
	srv.on('READ', 'PurOrderItemPricingElement', (req) =>
		PURCHASEORDER.run(req.query)
	);
	srv.on('READ', 'PurchaseOrder', (req) => PURCHASEORDER.run(req.query));
	srv.on('READ', 'PurchaseOrderAccountAssignment', (req) =>
		PURCHASEORDER.run(req.query)
	);
	srv.on('READ', 'PurchaseOrderInvoicingPlan', (req) =>
		PURCHASEORDER.run(req.query)
	);
	srv.on('READ', 'PurchaseOrderInvoicingPlanItem', (req) =>
		PURCHASEORDER.run(req.query)
	);
	srv.on('READ', 'PurchaseOrderItem', (req) => PURCHASEORDER.run(req.query));
	srv.on('READ', 'PurchaseOrderItemNote', (req) =>
		PURCHASEORDER.run(req.query)
	);
	srv.on('READ', 'PurchaseOrderNote', (req) => PURCHASEORDER.run(req.query));
	srv.on('READ', 'PurchaseOrderPartner', (req) => PURCHASEORDER.run(req.query));
	srv.on('READ', 'PurchaseOrderScheduleLine', (req) =>
		PURCHASEORDER.run(req.query)
	);
	srv.on('READ', 'PurchaseOrderSupplierAddress', (req) =>
		PURCHASEORDER.run(req.query)
	);
};
