const cds = require('@sap/cds');

let SIECAPI_BILLING_DOCUMENT_SRV;
let A_BillingDocument;

async function initializeService() {
	if (!SIECAPI_BILLING_DOCUMENT_SRV) {
		SIECAPI_BILLING_DOCUMENT_SRV = await cds.connect.to(
			'SIECAPI_BILLING_DOCUMENT_SRV'
		);
	}

	({ A_BillingDocument, A_BillingDocumentItem } =
		SIECAPI_BILLING_DOCUMENT_SRV.entities);
	return SIECAPI_BILLING_DOCUMENT_SRV;
}

async function getBillingDocumentById(billingDocumentId) {
	await initializeService();
	const billingDocument = await SIECAPI_BILLING_DOCUMENT_SRV.run(
		SELECT.one
			.from(A_BillingDocument, (billingDocument) => {
				billingDocument`*`,
					billingDocument.to_Item`*`,
					billingDocument.to_Partner`*`,
					billingDocument.to_PricingElement`*`,
					billingDocument.to_Text`*`;
			})
			.where({ BillingDocument: billingDocumentId })
	);

	return billingDocument;
}

// Export functions to make them available for use in other files
module.exports = {
	getBillingDocumentById,
	initializeService,
};
