using PURCHASEREQUISITION from './external/PURCHASEREQUISITION.cds';

service PURCHASEREQUISITIONService {
    @readonly
    entity PurchaseReqn as projection on PURCHASEREQUISITION.PurchaseReqn
    {        key PurchaseRequisition, PurchaseRequisitionType, PurReqnDescription, PurReqnHeaderNote, SourceDetermination, PurReqnDoOnlyValidation, SAP__Messages     }    
;
    @readonly
    entity PurchaseReqnAcctAssgmt as projection on PURCHASEREQUISITION.PurchaseReqnAcctAssgmt
    {        key PurchaseRequisition, key PurchaseRequisitionItem, key PurchaseReqnAcctAssgmtNumber, CostCenter, MasterFixedAsset, ProjectNetwork, BaseUnit, BaseUnitISOCode, Quantity, MultipleAcctAssgmtDistrPercent, PurReqnItemCurrency, PurReqnNetAmount, IsDeleted, GLAccount, BusinessArea, SalesOrder, SalesOrderItem, SalesOrderScheduleLine, FixedAsset, OrderID, UnloadingPointName, ControllingArea, CostObject, ProfitCenter, ProjectNetworkInternalID, CommitmentItem, FundsCenter, Fund, FunctionalArea, CreationDate, GoodsRecipientName, REInternalFinNumber, NetworkActivityInternalID, PartnerAccountNumber, JointVentureRecoveryCode, SettlementReferenceDate, OrderInternalID, OrderIntBillOfOperationsItem, EarmarkedFundsDocument, CostCtrActivityType, BusinessProcess, GrantID, ValidityDate, ChartOfAccounts, WBSElementExternalID, NetworkActivity, SAP__Messages     }    
;
    @readonly
    entity PurchaseReqnDelivAddress as projection on PURCHASEREQUISITION.PurchaseReqnDelivAddress
    {        key PurchaseRequisition, key PurchaseRequisitionItem, AddressID, Plant, PurchasingDeliveryAddressType, ManualDeliveryAddressID, ItemDeliveryAddressID, CareOfName, AdditionalStreetSuffixName, CorrespondenceLanguage, PrfrdCommMediumType, POBox, POBoxIsWithoutNumber, POBoxPostalCode, POBoxLobbyName, POBoxDeviatingCityName, POBoxDeviatingRegion, POBoxDeviatingCountry, DeliveryServiceTypeCode, DeliveryServiceNumber, AddressTimeZone, FullName, CityName, District, CityCode, HomeCityName, PostalCode, CompanyPostalCode, StreetName, StreetPrefixName, AdditionalStreetPrefixName, StreetSuffixName, HouseNumber, HouseNumberSupplementText, Building, Floor, RoomNumber, Country, Region, County, FormOfAddress, BusinessPartnerName1, BusinessPartnerName2, SearchTerm1, BusinessPartnerName3, BusinessPartnerName4, TaxJurisdiction, TransportZone, SAP__Messages     }    
;
    @readonly
    entity PurchaseReqnItem as projection on PURCHASEREQUISITION.PurchaseReqnItem
    {        key PurchaseRequisition, key PurchaseRequisitionItem, PurchasingDocument, PurchasingDocumentItem, PurReqnReleaseStatus, PurchasingDocumentSubtype, PurchasingDocumentItemCategory, PurchaseRequisitionItemText, AccountAssignmentCategory, Material, MaterialGroup, RequestedQuantity, BaseUnit, BaseUnitISOCode, PurchaseRequisitionPrice, PurReqnPriceQuantity, MaterialGoodsReceiptDuration, PurchasingOrganization, PurchasingGroup, Plant, CompanyCode, SourceOfSupplyIsAssigned, SupplyingPlant, OrderedQuantity, DeliveryDate, ProcessingStatus, ExternalApprovalStatus, PurchasingInfoRecord, Supplier, IsDeleted, FixedSupplier, RequisitionerName, CreatedByUser, PurReqCreationDate, PurReqnItemCurrency, MaterialPlannedDeliveryDurn, DelivDateCategory, MultipleAcctAssgmtDistribution, StorageLocation, PurReqnSSPRequestor, PurReqnSSPAuthor, PurchaseContract, PurReqnSourceOfSupplyType, PurchaseContractItem, ConsumptionPosting, PurReqnOrigin, PurReqnSSPCatalog, PurReqnSSPCatalogItem, PurReqnSSPCrossCatalogItem, PurReqnItemBlockingStatus, PurReqnItemBlockingReasonText, Language, IsClosed, ReleaseIsNotCompleted, ServicePerformer, ProductTypeCode, PerformancePeriodStartDate, PerformancePeriodEndDate, PurchaseOrderPriceType, SupplierMaterialNumber, Batch, MaterialRevisionLevel, MinRemainingShelfLife, ItemNetAmount, TaxCode, GoodsReceiptIsExpected, InvoiceIsExpected, GoodsReceiptIsNonValuated, RequirementTracking, MRPController, PurchaseRequisitionIsFixed, LastChangeDateTime, Reservation, ItemDeliveryAddressID, PurReqnReceivingCustomer, Subcontractor, ExpectedOverallLimitAmount, OverallLimitAmount, PurContractForOverallLimit, PurReqnExternalReference, PurReqnItemExternalReference, PurReqnExternalSystemId, ProcurementHubSourceSystem, SSPAuthorExternalBPIdnNumber, SSPReqrUserId, SAP__Messages     }    
;
    @readonly
    entity PurchaseReqnItemText as projection on PURCHASEREQUISITION.PurchaseReqnItemText
    {        key PurchaseRequisition, key PurchaseRequisitionItem, key TextObjectCategory, key TextObjectKey, key TextObjectType, key Language, PlainLongText, FixedIndicator, SAP__Messages     }    
;
}