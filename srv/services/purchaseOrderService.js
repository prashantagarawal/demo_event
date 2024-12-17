const cds = require('@sap/cds');

let PURCHASEORDER;
let PurchaseOrder;

// Initialize the connection to the PURCHASEORDER service
async function initializeService() {
	if (!PURCHASEORDER) {
		PURCHASEORDER = await cds.connect.to('PURCHASEORDER');
	}
	({ PurchaseOrder } = PURCHASEORDER.entities);
	return PURCHASEORDER;
}

async function getPurchaseOrderById(purchaseOrderId) {
	await initializeService();
	const purchaseorder = await PURCHASEORDER.run(
		SELECT.one
			.from(PurchaseOrder, (PurchaseOrder) => {
				PurchaseOrder`*`,
					PurchaseOrder._PurchaseOrderItem((_PurchaseOrderItem) => {
						_PurchaseOrderItem`*`;
					}),
					PurchaseOrder._PurchaseOrderNote((_PurchaseOrderNote) => {
						_PurchaseOrderNote`*`;
					}),
					PurchaseOrder._PurchaseOrderPartner((_PurchaseOrderPartner) => {
						_PurchaseOrderPartner`*`;
					}),
					PurchaseOrder._SupplierAddress((_SupplierAddress) => {
						_SupplierAddress`*`;
					});
			})
			.where({ PurchaseOrder: purchaseOrderId })
	);
	return purchaseorder;
}

async function getPurchaseOrderItems(purchaseOrderId) {
	await initializeService();
	return await PURCHASEORDER.run(
		SELECT.from('PurchaseOrderItem')
			.where({ PurchaseOrder: purchaseOrderId })
			.columns('*')
	);
}

async function runQuery(query) {
	await initializeService();
	return await PURCHASEORDER.run(query);
}

// Export functions to make them available for use in other files
module.exports = {
	getPurchaseOrderById,
	getPurchaseOrderItems,
	runQuery,
	initializeService,
};
