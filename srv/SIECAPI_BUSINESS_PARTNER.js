const cds = require('@sap/cds');

module.exports = async (srv) => {
	// Using CDS API
	const SIECAPI_BUSINESS_PARTNER = await cds.connect.to(
		'SIECAPI_BUSINESS_PARTNER'
	);
	srv.on('READ', 'A_AddressEmailAddress', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_AddressFaxNumber', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_AddressHomePageURL', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_AddressPhoneNumber', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BPAddrDepdntIntlLocNumber', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BPContactToAddress', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BPContactToFuncAndDept', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BPCreditWorthiness', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BPDataController', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BPFinancialServicesExtn', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BPFinancialServicesReporting', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BPFiscalYearInformation', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BPIntlAddressVersion', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BPRelationship', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BuPaAddressUsage', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BuPaIdentification', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BuPaIndustry', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BusPartAddrDepdntTaxNmbr', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BusinessPartner', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BusinessPartnerAddress', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BusinessPartnerBank', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BusinessPartnerContact', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BusinessPartnerPaymentCard', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BusinessPartnerRating', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BusinessPartnerRole', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_BusinessPartnerTaxNumber', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_CustAddrDepdntExtIdentifier', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_CustAddrDepdntInformation', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_CustSalesPartnerFunc', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_CustSlsAreaAddrDepdntInfo', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_CustSlsAreaAddrDepdntTaxInfo', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_CustUnldgPtAddrDepdntInfo', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_Customer', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_CustomerCompany', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_CustomerCompanyText', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_CustomerDunning', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_CustomerSalesArea', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_CustomerSalesAreaTax', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_CustomerSalesAreaText', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_CustomerTaxGrouping', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_CustomerText', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_CustomerUnloadingPoint', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_CustomerWithHoldingTax', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_Supplier', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_SupplierCompany', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_SupplierCompanyText', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_SupplierDunning', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_SupplierPartnerFunc', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_SupplierPurchasingOrg', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_SupplierPurchasingOrgText', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_SupplierText', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
	srv.on('READ', 'A_SupplierWithHoldingTax', (req) =>
		SIECAPI_BUSINESS_PARTNER.run(req.query)
	);
};
