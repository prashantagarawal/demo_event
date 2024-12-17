const cds = require('@sap/cds');
const billingDocumentService = require('./services/billingDocumentService'); // Import service functions

module.exports = async (srv) => {
	// Using CDS API
	const SIECAPI_BILLING_DOCUMENT_SRV = await cds.connect.to(
		'SIECAPI_BILLING_DOCUMENT_SRV'
	);
	srv.on('READ', 'A_BillingDocument', (req) =>
		SIECAPI_BILLING_DOCUMENT_SRV.run(req.query)
	);
	srv.on('READ', 'A_BillingDocumentItem', (req) =>
		SIECAPI_BILLING_DOCUMENT_SRV.run(req.query)
	);
	srv.on('READ', 'A_BillingDocumentItemPartner', (req) =>
		SIECAPI_BILLING_DOCUMENT_SRV.run(req.query)
	);
	srv.on('READ', 'A_BillingDocumentItemPrcgElmnt', (req) =>
		SIECAPI_BILLING_DOCUMENT_SRV.run(req.query)
	);
	srv.on('READ', 'A_BillingDocumentItemText', (req) =>
		SIECAPI_BILLING_DOCUMENT_SRV.run(req.query)
	);
	srv.on('READ', 'A_BillingDocumentPartner', (req) =>
		SIECAPI_BILLING_DOCUMENT_SRV.run(req.query)
	);
	srv.on('READ', 'A_BillingDocumentPrcgElmnt', (req) =>
		SIECAPI_BILLING_DOCUMENT_SRV.run(req.query)
	);
	srv.on('READ', 'A_BillingDocumentText', (req) =>
		SIECAPI_BILLING_DOCUMENT_SRV.run(req.query)
	);
};
