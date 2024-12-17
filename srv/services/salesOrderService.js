const cds = require('@sap/cds');

let SIECAPI_SALES_ORDER_SRV;
let A_SalesOrder;

// Initialize the connection to the SIECAPI_SALES_ORDER_SRV service
async function initializeService() {
	if (!SIECAPI_SALES_ORDER_SRV) {
		SIECAPI_SALES_ORDER_SRV = await cds.connect.to('SIECAPI_SALES_ORDER_SRV');
	}
	({ A_SalesOrder } = SIECAPI_SALES_ORDER_SRV.entities);
	return SIECAPI_SALES_ORDER_SRV;
}

// Function to get a specific Sales Order by ID
async function getSalesOrderById(salesOrderId) {
	await initializeService();
	const salesOrder = await SIECAPI_SALES_ORDER_SRV.run(
		SELECT.one
			.from(A_SalesOrder, (A_SalesOrder) => {
				A_SalesOrder`*`,
					A_SalesOrder.to_BillingPlan((to_BillingPlan) => {
						to_BillingPlan`*`;
					}),
					A_SalesOrder.to_Item((to_Item) => {
						to_Item`*`;
					}),
					A_SalesOrder.to_Partner((to_Partner) => {
						to_Partner`*`;
					}),
					A_SalesOrder.to_PaymentPlanItemDetails(
						(to_PaymentPlanItemDetails) => {
							to_PaymentPlanItemDetails`*`;
						}
					),
					A_SalesOrder.to_PrecedingProcFlowDoc((to_PrecedingProcFlowDoc) => {
						to_PrecedingProcFlowDoc`*`;
					}),
					A_SalesOrder.to_PricingElement((to_PricingElement) => {
						to_PricingElement`*`;
					}),
					A_SalesOrder.to_RelatedObject((to_RelatedObject) => {
						to_RelatedObject`*`;
					}),
					A_SalesOrder.to_SubsequentProcFlowDoc((to_SubsequentProcFlowDoc) => {
						to_SubsequentProcFlowDoc`*`;
					}),
					A_SalesOrder.to_Text((to_Text) => {
						to_Text`*`;
					});
			})
			.where({ SalesOrder: salesOrderId })
	);

	return salesOrder;
}

// Export functions to make them available for use in other files
module.exports = {
	getSalesOrderById,
	initializeService,
};
