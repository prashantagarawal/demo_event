const cds = require('@sap/cds');

let SIECAPI_BUSINESS_PARTNER;
let A_BusinessPartner;

// Initialize the connection to the SIECAPI_BUSINESS_PARTNER service
async function initializeService() {
	if (!SIECAPI_BUSINESS_PARTNER) {
		SIECAPI_BUSINESS_PARTNER = await cds.connect.to('SIECAPI_BUSINESS_PARTNER');
	}
	({ A_BusinessPartner, A_CustSalesPartnerFunc } =
		SIECAPI_BUSINESS_PARTNER.entities);

	return SIECAPI_BUSINESS_PARTNER;
}

// Function to get a specific Sales Order by ID
async function getBusinessPartnerByKey(BusinessPartnerKey) {
	await initializeService();
	const businessPartner = await SIECAPI_BUSINESS_PARTNER.run(
		SELECT.one
			.from(A_BusinessPartner, (A_BusinessPartner) => {
				A_BusinessPartner`*`,
					A_BusinessPartner.to_BPCreditWorthiness`*`,
					A_BusinessPartner.to_BPDataController`*`,
					A_BusinessPartner.to_BPEmployment`*`,
					A_BusinessPartner.to_BPFinServicesReporting`*`,
					A_BusinessPartner.to_BPFiscalYearInformation`*`,
					A_BusinessPartner.to_BPRelationship`*`,
					A_BusinessPartner.to_BPTaxCompliance`*`,
					A_BusinessPartner.to_BuPaIdentification`*`,
					A_BusinessPartner.to_BuPaIndustry`*`,
					A_BusinessPartner.to_BusinessPartner`*`,
					A_BusinessPartner.to_BusinessPartnerAddress`*`,
					A_BusinessPartner.to_BusinessPartnerAlias`*`,
					A_BusinessPartner.to_BusinessPartnerBank`*`,
					A_BusinessPartner.to_BusinessPartnerContact`*`,
					A_BusinessPartner.to_BusinessPartnerIsBank`*`,
					A_BusinessPartner.to_BusinessPartnerRating`*`,
					A_BusinessPartner.to_BusinessPartnerRole`*`,
					A_BusinessPartner.to_BusinessPartnerTax`*`,
					A_BusinessPartner.to_BusPartAddrDepdntTaxNmbr`*`,
					A_BusinessPartner.to_Customer`*`,
					A_BusinessPartner.to_PaymentCard`*`,
					A_BusinessPartner.to_Supplier`*`;
			})
			.where({ BusinessPartner: BusinessPartnerKey })
	);

	businessPartner.to_CustSalesPartnerFunc = await SIECAPI_BUSINESS_PARTNER.run(
		SELECT.from(A_CustSalesPartnerFunc).where({
			BPCustomerNumber: BusinessPartnerKey,
		})
	);

	if (!businessPartner) {
		throw new Error(
			`Business Partner with key ${BusinessPartnerKey} not found`
		);
	}
	return businessPartner;
}

// Export functions to make them available for use in other files
module.exports = {
	getBusinessPartnerByKey,
	initializeService,
};
