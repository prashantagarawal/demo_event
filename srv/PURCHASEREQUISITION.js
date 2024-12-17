const cds = require('@sap/cds');
const purchaseRequisitionService = require('./services/purchaseRequisitionService'); // Import service functions

module.exports = async (srv) => {
	await purchaseRequisitionService.initializeService();
	// Using CDS API
	const PURCHASEREQUISITION = await cds.connect.to('PURCHASEREQUISITION');
	srv.on('READ', 'PurchaseReqn', (req) => PURCHASEREQUISITION.run(req.query));
	srv.on('READ', 'PurchaseReqnAcctAssgmt', (req) =>
		PURCHASEREQUISITION.run(req.query)
	);
	srv.on('READ', 'PurchaseReqnDelivAddress', (req) =>
		PURCHASEREQUISITION.run(req.query)
	);
	srv.on('READ', 'PurchaseReqnItem', (req) =>
		PURCHASEREQUISITION.run(req.query)
	);
	srv.on('READ', 'PurchaseReqnItemText', (req) =>
		PURCHASEREQUISITION.run(req.query)
	);
};
