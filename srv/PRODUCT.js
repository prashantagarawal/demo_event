const cds = require('@sap/cds');
const productService = require('./services/productService'); // Import service functions

module.exports = async (srv) => {
	await productService.initializeService();
	// Using CDS API
	const PRODUCT = await cds.connect.to('PRODUCT');
	srv.on('READ', 'ProdSalesDeliverySalesTax', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'Product', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductDescription', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductPlant', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductPlantCosting', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductPlantForecast', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductPlantInspTypeSetting', (req) =>
		PRODUCT.run(req.query)
	);
	srv.on('READ', 'ProductPlantInternationalTrade', (req) =>
		PRODUCT.run(req.query)
	);
	srv.on('READ', 'ProductPlantMRP', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductPlantProcurement', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductPlantPurchaseTax', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductPlantQualityManagement', (req) =>
		PRODUCT.run(req.query)
	);
	srv.on('READ', 'ProductPlantSales', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductPlantStorage', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductPlantStorageLocation', (req) =>
		PRODUCT.run(req.query)
	);
	srv.on('READ', 'ProductPlantSupplyPlanning', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductPlantWorkScheduling', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductProcurement', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductQualityManagement', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductSales', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductSalesDelivery', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductStorage', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductUnitOfMeasure', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductUnitOfMeasureEAN', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductValuation', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductValuationAccounting', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductValuationCosting', (req) => PRODUCT.run(req.query));
	srv.on('READ', 'ProductValuationLedgerAccount', (req) =>
		PRODUCT.run(req.query)
	);
	srv.on('READ', 'ProductValuationLedgerPrices', (req) =>
		PRODUCT.run(req.query)
	);
};
