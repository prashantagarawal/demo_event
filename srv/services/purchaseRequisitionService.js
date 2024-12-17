const cds = require('@sap/cds');

let PURCHASEREQUISITION;
let PurchaseReqn;

async function initializeService() {
	if (!PURCHASEREQUISITION) {
		PURCHASEREQUISITION = await cds.connect.to('PURCHASEREQUISITION');
	}
	({ PurchaseReqn } = PURCHASEREQUISITION.entities);
	return PURCHASEREQUISITION;
}

async function getPurchaseRequisitionById(purchaseRequisitionId) {
	await initializeService();
	const PurchaseReq = await PURCHASEREQUISITION.run(
		SELECT.one
			.from(PurchaseReqn, (PurchaseReqn) => {
				PurchaseReqn`*`, PurchaseReqn._PurchaseRequisitionItem`*`;
			})
			.where({ PurchaseRequisition: purchaseRequisitionId })
	);
	return PurchaseReq;
}

// Export functions to make them available for use in other files
module.exports = {
	getPurchaseRequisitionById,
	initializeService,
};
