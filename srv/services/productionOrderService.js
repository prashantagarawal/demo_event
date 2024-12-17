const cds = require('@sap/cds');

let SIECAPI_PRODUCTION_ORDER_2_SRV;
let A_ProductionOrder_2;

async function initializeService() {
	if (!SIECAPI_PRODUCTION_ORDER_2_SRV) {
		SIECAPI_PRODUCTION_ORDER_2_SRV = await cds.connect.to(
			'SIECAPI_PRODUCTION_ORDER_2_SRV'
		);
	}
	({ A_ProductionOrder_2 } = SIECAPI_PRODUCTION_ORDER_2_SRV.entities);
	return SIECAPI_PRODUCTION_ORDER_2_SRV;
}

async function getProductionOrderById(productionOrderId) {
	await initializeService();
	const productionOrder = await SIECAPI_PRODUCTION_ORDER_2_SRV.run(
		SELECT.one
			.from(A_ProductionOrder_2, (A_ProductionOrder_2) => {
				A_ProductionOrder_2`*`,
					A_ProductionOrder_2.to_ProductionOrderComponent(
						(to_ProductionOrderComponent) => {
							to_ProductionOrderComponent`*`;
						}
					),
					A_ProductionOrder_2.to_ProductionOrderComponentExt(
						(to_ProductionOrderComponentExt) => {
							to_ProductionOrderComponentExt`*`;
						}
					),
					A_ProductionOrder_2.to_ProductionOrderComponentExt4(
						(to_ProductionOrderComponentExt4) => {
							to_ProductionOrderComponentExt4`*`;
						}
					),
					A_ProductionOrder_2.to_ProductionOrderItem(
						(to_ProductionOrderItem) => {
							to_ProductionOrderItem`*`;
						}
					),
					A_ProductionOrder_2.to_ProductionOrderOperation(
						(to_ProductionOrderOperation) => {
							to_ProductionOrderOperation`*`;
						}
					),
					A_ProductionOrder_2.to_ProductionOrderStatus(
						(to_ProductionOrderStatus) => {
							to_ProductionOrderStatus`*`;
						}
					),
					A_ProductionOrder_2.to_ProductionRsceTools(
						(to_ProductionRsceTools) => {
							to_ProductionRsceTools`*`;
						}
					);
			})
			.where({ ManufacturingOrder: productionOrderId })
	);

	return productionOrder;
}

async function getProductionOrderItems(productionOrderId) {
	await initializeService();
	return await SIECAPI_PRODUCTION_ORDER_2_SRV.run(
		SELECT.from('A_ProductionOrderItem_2')
			.where({ ManufacturingOrder: productionOrderId })
			.columns('*')
	);
}

async function runQuery(query) {
	await initializeService();
	return await SIECAPI_PRODUCTION_ORDER_2_SRV.run(query);
}

// Export functions to make them available for use in other files
module.exports = {
	getProductionOrderById,
	getProductionOrderItems,
	runQuery,
	initializeService,
};
