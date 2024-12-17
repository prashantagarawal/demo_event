const cds = require('@sap/cds');

let PRODUCT;
let Product;

// Initialize the connection to the PRODUCT service
async function initializeService() {
	if (!PRODUCT) {
		PRODUCT = await cds.connect.to('PRODUCT');
	}
	({ Product } = PRODUCT.entities);
	return PRODUCT;
}

// Function to get a specific Sales Order by ID
async function getProductByKey(ProductKey) {
	await initializeService();
	const product = await PRODUCT.run(
		SELECT.one
			.from(Product, (Product) => {
				Product`*`,
					Product._ProductDescription((productDescription) => {
						productDescription`*`;
					}),
					Product._ProductPlant((productPlant) => {
						productPlant`*`;
					}),
					Product._ProductProcurement((productProcurement) => {
						productProcurement`*`;
					}),
					Product._ProductQualityManagement((productQualityManagement) => {
						productQualityManagement`*`;
					}),
					Product._ProductSales((productSales) => {
						productSales`*`;
					}),
					Product._ProductSalesDelivery((productSalesDelivery) => {
						productSalesDelivery`*`;
					}),
					Product._ProductStorage((productStorage) => {
						productStorage`*`;
					}),
					Product._ProductUnitOfMeasure((productUnitOfMeasure) => {
						productUnitOfMeasure`*`;
					}),
					Product._ProductValuation((productValuation) => {
						productValuation`*`;
					});
			})
			.where({ Product: ProductKey })
	);
	return product;
}

async function runQuery(query) {
	await initializeService();
	return await PRODUCT.run(query);
}

// Export functions to make them available for use in other files
module.exports = {
	getProductByKey,
	runQuery,
	initializeService,
};
