using SIECAPI_BILLING_DOCUMENT_SRV from './external/SIECAPI_BILLING_DOCUMENT_SRV.cds';

service SIECAPI_BILLING_DOCUMENT_SRVService {
    @readonly
    entity A_BillingDocument as projection on SIECAPI_BILLING_DOCUMENT_SRV.A_BillingDocument
    {        key BillingDocument, SDDocumentCategory, BillingDocumentCategory, BillingDocumentType, CreationDate, CreationTime, LastChangeDate, LastChangeDateTime, LogicalSystem, SalesOrganization, DistributionChannel, Division, BillingDocumentDate, BillingDocumentIsCancelled, CancelledBillingDocument, ForeignTrade, IsExportDelivery, BillingDocCombinationCriteria, ManualInvoiceMaintIsRelevant, IsIntrastatReportingRelevant, IsIntrastatReportingExcluded, TotalNetAmount, TransactionCurrency, StatisticsCurrency, TaxAmount, TotalGrossAmount, CustomerPriceGroup, PriceListType, TaxDepartureCountry, VATRegistration, VATRegistrationOrigin, VATRegistrationCountry, HierarchyTypePricing, CustomerTaxClassification1, CustomerTaxClassification2, CustomerTaxClassification3, CustomerTaxClassification4, CustomerTaxClassification5, CustomerTaxClassification6, CustomerTaxClassification7, CustomerTaxClassification8, CustomerTaxClassification9, IsEUTriangularDeal, SDPricingProcedure, ShippingCondition, IncotermsVersion, IncotermsClassification, IncotermsTransferLocation, IncotermsLocation1, IncotermsLocation2, PayerParty, ContractAccount, CustomerPaymentTerms, PaymentMethod, PaymentReference, FixedValueDate, AdditionalValueDays, SEPAMandate, CompanyCode, FiscalYear, AccountingDocument, CustomerAccountAssignmentGroup, AccountingExchangeRateIsSet, AbsltAccountingExchangeRate, AcctgExchangeRateIsIndrctQtan, ExchangeRateDate, ExchangeRateType, DocumentReferenceID, AssignmentReference, DunningArea, DunningBlockingReason, DunningKey, InternalFinancialDocument, IsRelevantForAccrual, SoldToParty, PartnerCompany, PurchaseOrderByCustomer, CustomerGroup, Country, CityCode, SalesDistrict, Region, County, CreditControlArea, CustomerRebateAgreement, SalesDocumentCondition, OverallSDProcessStatus, OverallBillingStatus, AccountingPostingStatus, AccountingTransferStatus, BillingIssueType, InvoiceListStatus, OvrlItmGeneralIncompletionSts, OverallPricingIncompletionSts, InvoiceClearingStatus, BillingDocumentListType, BillingDocumentListDate     }    
;
    @readonly
    entity A_BillingDocumentItem as projection on SIECAPI_BILLING_DOCUMENT_SRV.A_BillingDocumentItem
    {        key BillingDocument, key BillingDocumentItem, SalesDocumentItemCategory, SalesDocumentItemType, ReturnItemProcessingType, CreatedByUser, CreationDate, CreationTime, ReferenceLogicalSystem, OrganizationDivision, Division, SalesOffice, Material, OriginallyRequestedMaterial, InternationalArticleNumber, PricingReferenceMaterial, Batch, ProductHierarchyNode, MaterialGroup, AdditionalMaterialGroup1, AdditionalMaterialGroup2, AdditionalMaterialGroup3, AdditionalMaterialGroup4, AdditionalMaterialGroup5, MaterialCommissionGroup, Plant, StorageLocation, ReplacementPartType, MaterialGroupHierarchy1, MaterialGroupHierarchy2, PlantRegion, PlantCounty, PlantCity, BOMExplosion, MaterialDeterminationType, BillingDocumentItemText, ServicesRenderedDate, BillingQuantity, BillingQuantityUnit, BillingQuantityInBaseUnit, BaseUnit, MRPRequiredQuantityInBaseUnit, BillingToBaseQuantityDnmntr, BillingToBaseQuantityNmrtr, ItemGrossWeight, ItemNetWeight, ItemWeightUnit, ItemVolume, ItemVolumeUnit, BillToPartyCountry, BillToPartyRegion, BillingPlanRule, BillingPlan, BillingPlanItem, NetAmount, TransactionCurrency, GrossAmount, PricingDate, AbsltPriceDetnExchangeRate, PriceDetnExchRateIsIndrctQtan, PriceDetnExchangeRateDate, PricingScaleQuantityInBaseUnit, TaxAmount, CostAmount, Subtotal1Amount, Subtotal2Amount, Subtotal3Amount, Subtotal4Amount, Subtotal5Amount, Subtotal6Amount, StatisticalValueControl, CashDiscountIsDeductible, CustomerConditionGroup1, CustomerConditionGroup2, CustomerConditionGroup3, CustomerConditionGroup4, CustomerConditionGroup5, ManualPriceChangeType, MaterialPricingGroup, AbsltStatisticsExchangeRate, StatisticsExchRateIsIndrctQtan, MainItemPricingRefMaterial, MainItemMaterialPricingGroup, DepartureCountry, TaxJurisdiction, ProductTaxClassification1, ProductTaxClassification2, ProductTaxClassification3, ProductTaxClassification4, ProductTaxClassification5, ProductTaxClassification6, ProductTaxClassification7, ProductTaxClassification8, ProductTaxClassification9, ZeroVATRsn, EligibleAmountForCashDiscount, BusinessArea, ProfitCenter, WBSElement, ControllingArea, ProfitabilitySegment, OrderID, CostCenter, OriginSDDocument, OriginSDDocumentItem, MatlAccountAssignmentGroup, ReferenceSDDocument, ReferenceSDDocumentItem, ReferenceSDDocumentCategory, SalesDocument, SalesDocumentItem, SalesSDDocumentCategory, HigherLevelItem, BillingDocumentItemInPartSgmt, ExternalReferenceDocument, ExternalReferenceDocumentItem, SalesGroup, AdditionalCustomerGroup1, AdditionalCustomerGroup2, AdditionalCustomerGroup3, AdditionalCustomerGroup4, AdditionalCustomerGroup5, SDDocumentReason, RetailPromotion, RebateBasisAmount, VolumeRebateGroup, ItemIsRelevantForCredit, CreditRelatedPrice, SalesDeal, SalesPromotion, SalesOrderSalesDistrict, SalesOrderCustomerGroup, SalesOrderCustomerPriceGroup, SalesOrderPriceListType, SalesOrderSalesOrganization, SalesOrderDistributionChannel, SalesDocIsCreatedFromReference, ShippingPoint, HigherLevelItemUsage     }    
;
    @readonly
    entity A_BillingDocumentItemPartner as projection on SIECAPI_BILLING_DOCUMENT_SRV.A_BillingDocumentItemPartner
    {        key BillingDocument, key BillingDocumentItem, key PartnerFunction, Customer, Supplier, Personnel, ContactPerson     }    
;
    @readonly
    entity A_BillingDocumentItemPrcgElmnt as projection on SIECAPI_BILLING_DOCUMENT_SRV.A_BillingDocumentItemPrcgElmnt
    {        key BillingDocument, key BillingDocumentItem, key PricingProcedureStep, key PricingProcedureCounter, ConditionType, PricingDateTime, ConditionCalculationType, ConditionBaseValue, ConditionRateValue, ConditionCurrency, ConditionQuantity, ConditionQuantityUnit, ConditionCategory, ConditionIsForStatistics, PricingScaleType, IsRelevantForAccrual, CndnIsRelevantForInvoiceList, ConditionOrigin, IsGroupCondition, ConditionRecord, ConditionSequentialNumber, TaxCode, WithholdingTaxCode, CndnRoundingOffDiffAmount, ConditionAmount, TransactionCurrency, ConditionControl, ConditionInactiveReason, ConditionClass, PrcgProcedureCounterForHeader, FactorForConditionBasisValue, StructureCondition, PeriodFactorForCndnBasisValue, PricingScaleBasis, ConditionScaleBasisValue, ConditionScaleBasisUnit, ConditionScaleBasisCurrency, CndnIsRelevantForIntcoBilling, ConditionIsManuallyChanged, ConditionIsForConfiguration, VariantCondition     }    
;
    @readonly
    entity A_BillingDocumentItemText as projection on SIECAPI_BILLING_DOCUMENT_SRV.A_BillingDocumentItemText
    {        key BillingDocument, key BillingDocumentItem, key Language, key LongTextID, LongText     }    
;
    @readonly
    entity A_BillingDocumentPartner as projection on SIECAPI_BILLING_DOCUMENT_SRV.A_BillingDocumentPartner
    {        key BillingDocument, key PartnerFunction, Customer, Supplier, Personnel, ContactPerson     }    
;
    @readonly
    entity A_BillingDocumentPrcgElmnt as projection on SIECAPI_BILLING_DOCUMENT_SRV.A_BillingDocumentPrcgElmnt
    {        key BillingDocument, key PricingProcedureStep, key PricingProcedureCounter, ConditionType, PricingDateTime, ConditionCalculationType, ConditionBaseValue, ConditionRateValue, ConditionCurrency, ConditionQuantity, ConditionQuantityUnit, ConditionCategory, ConditionIsForStatistics, PricingScaleType, ConditionOrigin, IsGroupCondition, ConditionRecord, ConditionSequentialNumber, TaxCode, WithholdingTaxCode, CndnRoundingOffDiffAmount, ConditionAmount, TransactionCurrency, ConditionControl, ConditionInactiveReason, ConditionClass, PrcgProcedureCounterForHeader, FactorForConditionBasisValue, StructureCondition, PeriodFactorForCndnBasisValue, PricingScaleBasis, ConditionScaleBasisValue, ConditionScaleBasisUnit, ConditionScaleBasisCurrency, CndnIsRelevantForIntcoBilling, ConditionIsManuallyChanged, ConditionIsForConfiguration, VariantCondition     }    
;
    @readonly
    entity A_BillingDocumentText as projection on SIECAPI_BILLING_DOCUMENT_SRV.A_BillingDocumentText
    {        key BillingDocument, key Language, key LongTextID, LongText     }    
;
}