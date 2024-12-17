using SIECAPI_BUSINESS_PARTNER from './external/SIECAPI_BUSINESS_PARTNER.cds';

service SIECAPI_BUSINESS_PARTNERService {
    @readonly
    entity A_AddressEmailAddress as projection on SIECAPI_BUSINESS_PARTNER.A_AddressEmailAddress
    {        key AddressID, key Person, key OrdinalNumber, IsDefaultEmailAddress, EmailAddress, SearchEmailAddress, AddressCommunicationRemarkText     }    
;
    @readonly
    entity A_AddressFaxNumber as projection on SIECAPI_BUSINESS_PARTNER.A_AddressFaxNumber
    {        key AddressID, key Person, key OrdinalNumber, IsDefaultFaxNumber, FaxCountry, FaxNumber, FaxNumberExtension, InternationalFaxNumber, AddressCommunicationRemarkText     }    
;
    @readonly
    entity A_AddressHomePageURL as projection on SIECAPI_BUSINESS_PARTNER.A_AddressHomePageURL
    {        key AddressID, key Person, key OrdinalNumber, key ValidityStartDate, key IsDefaultURLAddress, SearchURLAddress, AddressCommunicationRemarkText, URLFieldLength, WebsiteURL     }    
;
    @readonly
    entity A_AddressPhoneNumber as projection on SIECAPI_BUSINESS_PARTNER.A_AddressPhoneNumber
    {        key AddressID, key Person, key OrdinalNumber, DestinationLocationCountry, IsDefaultPhoneNumber, PhoneNumber, PhoneNumberExtension, InternationalPhoneNumber, PhoneNumberType, AddressCommunicationRemarkText     }    
;
    @readonly
    entity A_BPAddrDepdntIntlLocNumber as projection on SIECAPI_BUSINESS_PARTNER.A_BPAddrDepdntIntlLocNumber
    {        key BusinessPartner, key AddressID, InternationalLocationNumber1, InternationalLocationNumber2, InternationalLocationNumber3     }    
;
    @readonly
    entity A_BPContactToAddress as projection on SIECAPI_BUSINESS_PARTNER.A_BPContactToAddress
    {        key RelationshipNumber, key BusinessPartnerCompany, key BusinessPartnerPerson, key ValidityEndDate, key AddressID, AddressNumber, AdditionalStreetPrefixName, AdditionalStreetSuffixName, AddressTimeZone, CareOfName, CityCode, CityName, CompanyPostalCode, Country, County, DeliveryServiceNumber, DeliveryServiceTypeCode, District, FormOfAddress, FullName, HomeCityName, HouseNumber, HouseNumberSupplementText, Language, POBox, POBoxDeviatingCityName, POBoxDeviatingCountry, POBoxDeviatingRegion, POBoxIsWithoutNumber, POBoxLobbyName, POBoxPostalCode, Person, PostalCode, PrfrdCommMediumType, Region, StreetName, StreetPrefixName, StreetSuffixName, TaxJurisdiction, TransportZone, AddressRepresentationCode, ContactPersonBuilding, ContactPersonPrfrdCommMedium, ContactRelationshipDepartment, ContactRelationshipFunction, CorrespondenceShortName, Floor, InhouseMail, IsDefaultAddress, RoomNumber     }    
;
    @readonly
    entity A_BPContactToFuncAndDept as projection on SIECAPI_BUSINESS_PARTNER.A_BPContactToFuncAndDept
    {        key RelationshipNumber, key BusinessPartnerCompany, key BusinessPartnerPerson, key ValidityEndDate, ContactPersonAuthorityType, ContactPersonDepartment, ContactPersonDepartmentName, ContactPersonFunction, ContactPersonFunctionName, ContactPersonRemarkText, ContactPersonVIPType, EmailAddress, FaxNumber, FaxNumberExtension, PhoneNumber, PhoneNumberExtension, RelationshipCategory     }    
;
    @readonly
    entity A_BPCreditWorthiness as projection on SIECAPI_BUSINESS_PARTNER.A_BPCreditWorthiness
    {        key BusinessPartner, BusPartCreditStanding, BPCreditStandingStatus, CreditRatingAgency, BPCreditStandingComment, BPCreditStandingDate, BPCreditStandingRating, BPLegalProceedingStatus, BPLglProceedingInitiationDate, BusinessPartnerIsUnderOath, BusinessPartnerOathDate, BusinessPartnerIsBankrupt, BusinessPartnerBankruptcyDate, BPForeclosureIsInitiated, BPForeclosureDate, BPCrdtWrthnssAccessChkIsActive     }    
;
    @readonly
    entity A_BPDataController as projection on SIECAPI_BUSINESS_PARTNER.A_BPDataController
    {        key BusinessPartner, key DataController, key PurposeForPersonalData, DataControlAssignmentStatus, BPDataControllerIsDerived, PurposeDerived, PurposeType, BusinessPurposeFlag     }    
;
    @readonly
    entity A_BPFinancialServicesExtn as projection on SIECAPI_BUSINESS_PARTNER.A_BPFinancialServicesExtn
    {        key BusinessPartner, BusinessPartnerIsVIP, TradingPartner, FactoryCalendar, BusinessPartnerOfficeCountry, BusinessPartnerOfficeRegion, BPRegisteredOfficeName, BPBalanceSheetCurrency, BPLastCptlIncrAmtInBalShtCrcy, BPLastCapitalIncreaseYear, BPBalanceSheetDisplayType, BusinessPartnerCitizenship, BPMaritalPropertyRegime, BusinessPartnerIncomeCurrency, BPNumberOfChildren, BPNumberOfHouseholdMembers, BPAnnualNetIncAmtInIncomeCrcy, BPMonthlyNetIncAmtInIncomeCrcy, BPAnnualNetIncomeYear, BPMonthlyNetIncomeMonth, BPMonthlyNetIncomeYear, BPPlaceOfDeathName, CustomerIsUnwanted, UndesirabilityReason, UndesirabilityComment, LastCustomerContactDate, BPGroupingCharacter, BPLetterSalutation, BusinessPartnerTargetGroup, BusinessPartnerEmployeeGroup, BusinessPartnerIsEmployee, BPTermnBusRelationsBankDate     }    
;
    @readonly
    entity A_BPFinancialServicesReporting as projection on SIECAPI_BUSINESS_PARTNER.A_BPFinancialServicesReporting
    {        key BusinessPartner, BPIsNonResident, BPNonResidencyStartDate, BPIsMultimillionLoanRecipient, BPLoanReportingBorrowerNumber, BPLoanRptgBorrowerEntityNumber, BPCreditStandingReview, BPCreditStandingReviewDate, BusinessPartnerLoanToManager, BPCompanyRelationship, BPLoanReportingCreditorNumber, BPOeNBIdentNumber, BPOeNBTargetGroup, BPOeNBIdentNumberAssigned, BPOeNBInstituteNumber, BusinessPartnerIsOeNBInstitute, BusinessPartnerGroup, BPGroupAssignmentCategory, BusinessPartnerGroupName, BusinessPartnerLegalEntity, BPGerAstRglnRestrictedAstQuota, BusinessPartnerDebtorGroup, BusinessPartnerBusinessPurpose, BusinessPartnerRiskGroup, BPRiskGroupingDate, BPHasGroupAffiliation, BPIsMonetaryFinInstitution, BPCrdtStandingReviewIsRequired, BPLoanMonitoringIsRequired, BPHasCreditingRelief, BPInvestInRstrcdAstIsAuthzd, BPCentralBankCountryRegion     }    
;
    @readonly
    entity A_BPFiscalYearInformation as projection on SIECAPI_BUSINESS_PARTNER.A_BPFiscalYearInformation
    {        key BusinessPartner, key BusinessPartnerFiscalYear, BPBalanceSheetCurrency, BPAnnualStockholderMeetingDate, BPFiscalYearStartDate, BPFiscalYearEndDate, BPFiscalYearIsClosed, BPFiscalYearClosingDate, BPFsclYrCnsldtdFinStatementDte, BPCapitalStockAmtInBalShtCrcy, BPIssdStockCptlAmtInBalShtCrcy, BPPartcipnCertAmtInBalShtCrcy, BPEquityCapitalAmtInBalShtCrcy, BPGrossPremiumAmtInBalShtCrcy, BPNetPremiumAmtInBalShtCrcy, BPAnnualSalesAmtInBalShtCrcy, BPAnnualNetIncAmtInBalShtCrcy, BPDividendDistrAmtInBalShtCrcy, BPDebtRatioInYears, BPAnnualPnLAmtInBalShtCrcy, BPBalSheetTotalAmtInBalShtCrcy, BPNumberOfEmployees, BPCptlReserveAmtInBalShtCrcy, BPLglRevnRsrvAmtInBalShtCrcy, RevnRsrvOwnStkAmtInBalShtCrcy, BPStatryReserveAmtInBalShtCrcy, BPOthRevnRsrvAmtInBalShtCrcy, BPPnLCarryfwdAmtInBalShtCrcy, BPSuborddLbltyAmtInBalShtCrcy, BPRetOnTotalCptlEmpldInPercent, BPDebtClearancePeriodInYears, BPFinancingCoeffInPercent, BPEquityRatioInPercent     }    
;
    @readonly
    entity A_BPIntlAddressVersion as projection on SIECAPI_BUSINESS_PARTNER.A_BPIntlAddressVersion
    {        key BusinessPartner, key AddressID, key AddressRepresentationCode, AddresseeFullName, AddressIDByExternalSystem, AddressPersonID, AddressSearchTerm1, AddressSearchTerm2, AddressTimeZone, CareOfName, CityName, CityNumber, CompanyPostalCode, Country, DeliveryServiceNumber, DeliveryServiceTypeCode, DistrictName, FormOfAddress, HouseNumber, HouseNumberSupplementText, Language, OrganizationName1, OrganizationName2, OrganizationName3, OrganizationName4, PersonFamilyName, PersonGivenName, POBox, POBoxDeviatingCityName, POBoxDeviatingCountry, POBoxDeviatingRegion, POBoxIsWithoutNumber, POBoxLobbyName, POBoxPostalCode, PostalCode, PrfrdCommMediumType, Region, SecondaryRegion, SecondaryRegionName, StreetName, StreetPrefixName1, StreetPrefixName2, StreetSuffixName1, StreetSuffixName2, TaxJurisdiction, TertiaryRegion, TertiaryRegionName, TransportZone, VillageName     }    
;
    @readonly
    entity A_BPRelationship as projection on SIECAPI_BUSINESS_PARTNER.A_BPRelationship
    {        key RelationshipNumber, key BusinessPartner1, key BusinessPartner2, key ValidityEndDate, ValidityStartDate, IsStandardRelationship, RelationshipCategory, BPRelationshipType, CreatedByUser, CreationDate, CreationTime, LastChangedByUser, LastChangeDate, LastChangeTime     }    
;
    @readonly
    entity A_BuPaAddressUsage as projection on SIECAPI_BUSINESS_PARTNER.A_BuPaAddressUsage
    {        key BusinessPartner, key ValidityEndDate, key AddressUsage, key AddressID, ValidityStartDate, StandardUsage, AuthorizationGroup     }    
;
    @readonly
    entity A_BuPaIdentification as projection on SIECAPI_BUSINESS_PARTNER.A_BuPaIdentification
    {        key BusinessPartner, key BPIdentificationType, key BPIdentificationNumber, BPIdnNmbrIssuingInstitute, BPIdentificationEntryDate, Country, Region, ValidityStartDate, ValidityEndDate, AuthorizationGroup     }    
;
    @readonly
    entity A_BuPaIndustry as projection on SIECAPI_BUSINESS_PARTNER.A_BuPaIndustry
    {        key IndustrySector, key IndustrySystemType, key BusinessPartner, IsStandardIndustry, IndustryKeyDescription     }    
;
    @readonly
    entity A_BusPartAddrDepdntTaxNmbr as projection on SIECAPI_BUSINESS_PARTNER.A_BusPartAddrDepdntTaxNmbr
    {        key BusinessPartner, key AddressID, key BPTaxType, BPTaxNumber, BPTaxLongNumber, AuthorizationGroup     }    
;
    @readonly
    entity A_BusinessPartner as projection on SIECAPI_BUSINESS_PARTNER.A_BusinessPartner
    {        key BusinessPartner, Customer, Supplier, AcademicTitle, AuthorizationGroup, BusinessPartnerCategory, BusinessPartnerFullName, BusinessPartnerGrouping, BusinessPartnerName, BusinessPartnerUUID, CorrespondenceLanguage, CreatedByUser, CreationDate, CreationTime, FirstName, FormOfAddress, Industry, InternationalLocationNumber1, InternationalLocationNumber2, IsFemale, IsMale, IsNaturalPerson, IsSexUnknown, GenderCodeName, Language, LastChangeDate, LastChangeTime, LastChangedByUser, LastName, LegalForm, OrganizationBPName1, OrganizationBPName2, OrganizationBPName3, OrganizationBPName4, OrganizationFoundationDate, OrganizationLiquidationDate, SearchTerm1, SearchTerm2, AdditionalLastName, BirthDate, BusinessPartnerBirthDateStatus, BusinessPartnerBirthplaceName, BusinessPartnerDeathDate, BusinessPartnerIsBlocked, BusinessPartnerType, ETag, GroupBusinessPartnerName1, GroupBusinessPartnerName2, IndependentAddressID, InternationalLocationNumber3, MiddleName, NameCountry, NameFormat, PersonFullName, PersonNumber, IsMarkedForArchiving, BusinessPartnerIDByExtSystem, BusinessPartnerPrintFormat, BusinessPartnerOccupation, BusPartMaritalStatus, BusPartNationality, BusinessPartnerBirthName, BusinessPartnerSupplementName, NaturalPersonEmployerName, LastNamePrefix, LastNameSecondPrefix, Initials, BPDataControllerIsNotRequired, TradingPartner     }    
;
    @readonly
    entity A_BusinessPartnerAddress as projection on SIECAPI_BUSINESS_PARTNER.A_BusinessPartnerAddress
    {        key BusinessPartner, key AddressID, ValidityStartDate, ValidityEndDate, AuthorizationGroup, AddressUUID, AdditionalStreetPrefixName, AdditionalStreetSuffixName, AddressTimeZone, CareOfName, CityCode, CityName, CompanyPostalCode, Country, County, DeliveryServiceNumber, DeliveryServiceTypeCode, District, FormOfAddress, FullName, HomeCityName, HouseNumber, HouseNumberSupplementText, Language, POBox, POBoxDeviatingCityName, POBoxDeviatingCountry, POBoxDeviatingRegion, POBoxIsWithoutNumber, POBoxLobbyName, POBoxPostalCode, Person, PostalCode, PrfrdCommMediumType, Region, StreetName, StreetPrefixName, StreetSuffixName, TaxJurisdiction, TransportZone, AddressIDByExternalSystem, CountyCode, TownshipCode, TownshipName     }    
;
    @readonly
    entity A_BusinessPartnerBank as projection on SIECAPI_BUSINESS_PARTNER.A_BusinessPartnerBank
    {        key BusinessPartner, key BankIdentification, BankCountryKey, BankName, BankNumber, SWIFTCode, BankControlKey, BankAccountHolderName, BankAccountName, ValidityStartDate, ValidityEndDate, IBAN, IBANValidityStartDate, BankAccount, BankAccountReferenceText, CollectionAuthInd, CityName, AuthorizationGroup     }    
;
    @readonly
    entity A_BusinessPartnerContact as projection on SIECAPI_BUSINESS_PARTNER.A_BusinessPartnerContact
    {        key RelationshipNumber, key BusinessPartnerCompany, key BusinessPartnerPerson, key ValidityEndDate, ValidityStartDate, IsStandardRelationship, RelationshipCategory     }    
;
    @readonly
    entity A_BusinessPartnerPaymentCard as projection on SIECAPI_BUSINESS_PARTNER.A_BusinessPartnerPaymentCard
    {        key BusinessPartner, key PaymentCardID, key PaymentCardType, key CardNumber, IsStandardCard, CardDescription, ValidityDate, ValidityEndDate, CardHolder, CardIssuingBank, CardIssueDate, PaymentCardLock, MaskedCardNumber     }    
;
    @readonly
    entity A_BusinessPartnerRating as projection on SIECAPI_BUSINESS_PARTNER.A_BusinessPartnerRating
    {        key BusinessPartner, key BusinessPartnerRatingProcedure, key BPRatingValidityEndDate, BusinessPartnerRatingGrade, BusinessPartnerRatingTrend, BPRatingValidityStartDate, BPRatingCreationDate, BusinessPartnerRatingComment, BusinessPartnerRatingIsAllowed, BPRatingIsValidOnKeyDate, BusinessPartnerRatingKeyDate, BusinessPartnerRatingIsExpired     }    
;
    @readonly
    entity A_BusinessPartnerRole as projection on SIECAPI_BUSINESS_PARTNER.A_BusinessPartnerRole
    {        key BusinessPartner, key BusinessPartnerRole, ValidFrom, ValidTo, AuthorizationGroup     }    
;
    @readonly
    entity A_BusinessPartnerTaxNumber as projection on SIECAPI_BUSINESS_PARTNER.A_BusinessPartnerTaxNumber
    {        key BusinessPartner, key BPTaxType, BPTaxNumber, BPTaxLongNumber, AuthorizationGroup     }    
;
    @readonly
    entity A_CustAddrDepdntExtIdentifier as projection on SIECAPI_BUSINESS_PARTNER.A_CustAddrDepdntExtIdentifier
    {        key Customer, key AddressID, CustomerExternalRefID     }    
;
    @readonly
    entity A_CustAddrDepdntInformation as projection on SIECAPI_BUSINESS_PARTNER.A_CustAddrDepdntInformation
    {        key Customer, key AddressID, ExpressTrainStationName, TrainStationName, CityCode, County     }    
;
    @readonly
    entity A_CustSalesPartnerFunc as projection on SIECAPI_BUSINESS_PARTNER.A_CustSalesPartnerFunc
    {        key Customer, key SalesOrganization, key DistributionChannel, key Division, key PartnerCounter, key PartnerFunction, BPCustomerNumber, CustomerPartnerDescription, DefaultPartner, Supplier, PersonnelNumber, ContactPerson, AddressID, AuthorizationGroup     }    
;
    @readonly
    entity A_CustSlsAreaAddrDepdntInfo as projection on SIECAPI_BUSINESS_PARTNER.A_CustSlsAreaAddrDepdntInfo
    {        key Customer, key SalesOrganization, key DistributionChannel, key Division, key AddressID, IncotermsClassification, IncotermsLocation1, IncotermsLocation2, IncotermsSupChnLoc1AddlUUID, IncotermsSupChnLoc2AddlUUID, IncotermsSupChnDvtgLocAddlUUID, DeliveryIsBlocked, SalesOffice, SalesGroup, ShippingCondition, SupplyingPlant, IncotermsVersion     }    
;
    @readonly
    entity A_CustSlsAreaAddrDepdntTaxInfo as projection on SIECAPI_BUSINESS_PARTNER.A_CustSlsAreaAddrDepdntTaxInfo
    {        key Customer, key SalesOrganization, key DistributionChannel, key Division, key AddressID, key DepartureCountry, key CustomerTaxCategory, CustomerTaxClassification     }    
;
    @readonly
    entity A_CustUnldgPtAddrDepdntInfo as projection on SIECAPI_BUSINESS_PARTNER.A_CustUnldgPtAddrDepdntInfo
    {        key Customer, key AddressID, key UnloadingPointName, CustomerFactoryCalenderCode, BPGoodsReceivingHoursCode, IsDfltBPUnloadingPoint, MondayMorningOpeningTime, MondayMorningClosingTime, MondayAfternoonOpeningTime, MondayAfternoonClosingTime, TuesdayMorningOpeningTime, TuesdayMorningClosingTime, TuesdayAfternoonOpeningTime, TuesdayAfternoonClosingTime, WednesdayMorningOpeningTime, WednesdayMorningClosingTime, WednesdayAfternoonOpeningTime, WednesdayAfternoonClosingTime, ThursdayMorningOpeningTime, ThursdayMorningClosingTime, ThursdayAfternoonOpeningTime, ThursdayAfternoonClosingTime, FridayMorningOpeningTime, FridayMorningClosingTime, FridayAfternoonOpeningTime, FridayAfternoonClosingTime, SaturdayMorningOpeningTime, SaturdayMorningClosingTime, SaturdayAfternoonOpeningTime, SaturdayAfternoonClosingTime, SundayMorningOpeningTime, SundayMorningClosingTime, SundayAfternoonOpeningTime, SundayAfternoonClosingTime     }    
;
    @readonly
    entity A_Customer as projection on SIECAPI_BUSINESS_PARTNER.A_Customer
    {        key Customer, AuthorizationGroup, BillingIsBlockedForCustomer, CreatedByUser, CreationDate, CustomerAccountGroup, CustomerClassification, CustomerFullName, BPCustomerFullName, CustomerName, BPCustomerName, DeliveryIsBlocked, FreeDefinedAttribute01, FreeDefinedAttribute02, FreeDefinedAttribute03, FreeDefinedAttribute04, FreeDefinedAttribute05, FreeDefinedAttribute06, FreeDefinedAttribute07, FreeDefinedAttribute08, FreeDefinedAttribute09, FreeDefinedAttribute10, NFPartnerIsNaturalPerson, OrderIsBlockedForCustomer, PostingIsBlocked, Supplier, CustomerCorporateGroup, FiscalAddress, Industry, IndustryCode1, IndustryCode2, IndustryCode3, IndustryCode4, IndustryCode5, InternationalLocationNumber1, InternationalLocationNumber2, InternationalLocationNumber3, NielsenRegion, PaymentReason, ResponsibleType, TaxNumber1, TaxNumber2, TaxNumber3, TaxNumber4, TaxNumber5, TaxNumberType, VATRegistration, DeletionIndicator, ExpressTrainStationName, TrainStationName, CityCode, County     }    
;
    @readonly
    entity A_CustomerCompany as projection on SIECAPI_BUSINESS_PARTNER.A_CustomerCompany
    {        key Customer, key CompanyCode, APARToleranceGroup, AccountByCustomer, AccountingClerk, AccountingClerkFaxNumber, AccountingClerkInternetAddress, AccountingClerkPhoneNumber, AlternativePayerAccount, AuthorizationGroup, CollectiveInvoiceVariant, CustomerAccountNote, CustomerHeadOffice, CustomerSupplierClearingIsUsed, HouseBank, InterestCalculationCode, InterestCalculationDate, IntrstCalcFrequencyInMonths, IsToBeLocallyProcessed, ItemIsToBePaidSeparately, LayoutSortingRule, PaymentBlockingReason, PaymentMethodsList, PaymentReason, PaymentTerms, PaytAdviceIsSentbyEDI, PhysicalInventoryBlockInd, ReconciliationAccount, RecordPaymentHistoryIndicator, UserAtCustomer, DeletionIndicator, CashPlanningGroup, KnownOrNegotiatedLeave, ValueAdjustmentKey, CustomerAccountGroup     }    
;
    @readonly
    entity A_CustomerCompanyText as projection on SIECAPI_BUSINESS_PARTNER.A_CustomerCompanyText
    {        key Customer, key CompanyCode, key Language, key LongTextID, LongText     }    
;
    @readonly
    entity A_CustomerDunning as projection on SIECAPI_BUSINESS_PARTNER.A_CustomerDunning
    {        key Customer, key CompanyCode, key DunningArea, DunningBlock, DunningLevel, DunningProcedure, DunningRecipient, LastDunnedOn, LegDunningProcedureOn, DunningClerk, AuthorizationGroup, CustomerAccountGroup     }    
;
    @readonly
    entity A_CustomerSalesArea as projection on SIECAPI_BUSINESS_PARTNER.A_CustomerSalesArea
    {        key Customer, key SalesOrganization, key DistributionChannel, key Division, AccountByCustomer, AuthorizationGroup, BillingIsBlockedForCustomer, CompleteDeliveryIsDefined, CreditControlArea, Currency, CustIsRlvtForSettlmtMgmt, CustomerABCClassification, CustomerAccountAssignmentGroup, CustomerGroup, CustomerIsRebateRelevant, CustomerPaymentTerms, CustomerPriceGroup, CustomerPricingProcedure, CustProdProposalProcedure, DeliveryIsBlockedForCustomer, DeliveryPriority, IncotermsClassification, IncotermsLocation2, IncotermsVersion, IncotermsLocation1, IncotermsSupChnLoc1AddlUUID, IncotermsSupChnLoc2AddlUUID, IncotermsSupChnDvtgLocAddlUUID, DeletionIndicator, IncotermsTransferLocation, InspSbstHasNoTimeOrQuantity, InvoiceDate, ItemOrderProbabilityInPercent, ManualInvoiceMaintIsRelevant, MaxNmbrOfPartialDelivery, OrderCombinationIsAllowed, OrderIsBlockedForCustomer, OverdelivTolrtdLmtRatioInPct, PartialDeliveryIsAllowed, PriceListType, ProductUnitGroup, ProofOfDeliveryTimeValue, SalesGroup, SalesItemProposal, SalesOffice, ShippingCondition, SlsDocIsRlvtForProofOfDeliv, SlsUnlmtdOvrdelivIsAllwd, SupplyingPlant, SalesDistrict, UnderdelivTolrtdLmtRatioInPct, InvoiceListSchedule, ExchangeRateType, AdditionalCustomerGroup1, AdditionalCustomerGroup2, AdditionalCustomerGroup3, AdditionalCustomerGroup4, AdditionalCustomerGroup5, PaymentGuaranteeProcedure, CustomerAccountGroup     }    
;
    @readonly
    entity A_CustomerSalesAreaTax as projection on SIECAPI_BUSINESS_PARTNER.A_CustomerSalesAreaTax
    {        key Customer, key SalesOrganization, key DistributionChannel, key Division, key DepartureCountry, key CustomerTaxCategory, CustomerTaxClassification     }    
;
    @readonly
    entity A_CustomerSalesAreaText as projection on SIECAPI_BUSINESS_PARTNER.A_CustomerSalesAreaText
    {        key Customer, key SalesOrganization, key DistributionChannel, key Division, key Language, key LongTextID, LongText     }    
;
    @readonly
    entity A_CustomerTaxGrouping as projection on SIECAPI_BUSINESS_PARTNER.A_CustomerTaxGrouping
    {        key Customer, key CustomerTaxGroupingCode, CustTaxGrpExemptionCertificate, CustTaxGroupExemptionRate, CustTaxGroupExemptionStartDate, CustTaxGroupExemptionEndDate, CustTaxGroupSubjectedStartDate, CustTaxGroupSubjectedEndDate     }    
;
    @readonly
    entity A_CustomerText as projection on SIECAPI_BUSINESS_PARTNER.A_CustomerText
    {        key Customer, key Language, key LongTextID, LongText     }    
;
    @readonly
    entity A_CustomerUnloadingPoint as projection on SIECAPI_BUSINESS_PARTNER.A_CustomerUnloadingPoint
    {        key Customer, key UnloadingPointName, CustomerFactoryCalenderCode, BPGoodsReceivingHoursCode, IsDfltBPUnloadingPoint, MondayMorningOpeningTime, MondayMorningClosingTime, MondayAfternoonOpeningTime, MondayAfternoonClosingTime, TuesdayMorningOpeningTime, TuesdayMorningClosingTime, TuesdayAfternoonOpeningTime, TuesdayAfternoonClosingTime, WednesdayMorningOpeningTime, WednesdayMorningClosingTime, WednesdayAfternoonOpeningTime, WednesdayAfternoonClosingTime, ThursdayMorningOpeningTime, ThursdayMorningClosingTime, ThursdayAfternoonOpeningTime, ThursdayAfternoonClosingTime, FridayMorningOpeningTime, FridayMorningClosingTime, FridayAfternoonOpeningTime, FridayAfternoonClosingTime, SaturdayMorningOpeningTime, SaturdayMorningClosingTime, SaturdayAfternoonOpeningTime, SaturdayAfternoonClosingTime, SundayMorningOpeningTime, SundayMorningClosingTime, SundayAfternoonOpeningTime, SundayAfternoonClosingTime     }    
;
    @readonly
    entity A_CustomerWithHoldingTax as projection on SIECAPI_BUSINESS_PARTNER.A_CustomerWithHoldingTax
    {        key Customer, key CompanyCode, key WithholdingTaxType, WithholdingTaxCode, WithholdingTaxAgent, ObligationDateBegin, ObligationDateEnd, WithholdingTaxNumber, WithholdingTaxCertificate, WithholdingTaxExmptPercent, ExemptionDateBegin, ExemptionDateEnd, ExemptionReason, AuthorizationGroup     }    
;
    @readonly
    entity A_Supplier as projection on SIECAPI_BUSINESS_PARTNER.A_Supplier
    {        key Supplier, AlternativePayeeAccountNumber, AuthorizationGroup, CreatedByUser, CreationDate, Customer, PaymentIsBlockedForSupplier, PostingIsBlocked, PurchasingIsBlocked, SupplierAccountGroup, SupplierFullName, SupplierName, VATRegistration, BirthDate, ConcatenatedInternationalLocNo, DeletionIndicator, FiscalAddress, Industry, InternationalLocationNumber1, InternationalLocationNumber2, InternationalLocationNumber3, IsNaturalPerson, PaymentReason, ResponsibleType, SuplrQltyInProcmtCertfnValidTo, SuplrQualityManagementSystem, SupplierCorporateGroup, SupplierProcurementBlock, TaxNumber1, TaxNumber2, TaxNumber3, TaxNumber4, TaxNumber5, TaxNumberResponsible, TaxNumberType, SuplrProofOfDelivRlvtCode, BR_TaxIsSplit, DataExchangeInstructionKey     }    
;
    @readonly
    entity A_SupplierCompany as projection on SIECAPI_BUSINESS_PARTNER.A_SupplierCompany
    {        key Supplier, key CompanyCode, AuthorizationGroup, CompanyCodeName, PaymentBlockingReason, SupplierIsBlockedForPosting, AccountingClerk, AccountingClerkFaxNumber, AccountingClerkPhoneNumber, SupplierClerk, SupplierClerkURL, PaymentMethodsList, PaymentReason, PaymentTerms, ClearCustomerSupplier, IsToBeLocallyProcessed, ItemIsToBePaidSeparately, PaymentIsToBeSentByEDI, HouseBank, CheckPaidDurationInDays, Currency, BillOfExchLmtAmtInCoCodeCrcy, SupplierClerkIDBySupplier, ReconciliationAccount, InterestCalculationCode, InterestCalculationDate, IntrstCalcFrequencyInMonths, SupplierHeadOffice, AlternativePayee, LayoutSortingRule, APARToleranceGroup, SupplierCertificationDate, SupplierAccountNote, WithholdingTaxCountry, DeletionIndicator, CashPlanningGroup, IsToBeCheckedForDuplicates, MinorityGroup, SupplierAccountGroup     }    
;
    @readonly
    entity A_SupplierCompanyText as projection on SIECAPI_BUSINESS_PARTNER.A_SupplierCompanyText
    {        key Supplier, key CompanyCode, key Language, key LongTextID, LongText     }    
;
    @readonly
    entity A_SupplierDunning as projection on SIECAPI_BUSINESS_PARTNER.A_SupplierDunning
    {        key Supplier, key CompanyCode, key DunningArea, DunningBlock, DunningLevel, DunningProcedure, DunningRecipient, LastDunnedOn, LegDunningProcedureOn, DunningClerk, AuthorizationGroup, SupplierAccountGroup     }    
;
    @readonly
    entity A_SupplierPartnerFunc as projection on SIECAPI_BUSINESS_PARTNER.A_SupplierPartnerFunc
    {        key Supplier, key PurchasingOrganization, key SupplierSubrange, key Plant, key PartnerFunction, key PartnerCounter, DefaultPartner, CreationDate, CreatedByUser, ReferenceSupplier, AuthorizationGroup     }    
;
    @readonly
    entity A_SupplierPurchasingOrg as projection on SIECAPI_BUSINESS_PARTNER.A_SupplierPurchasingOrg
    {        key Supplier, key PurchasingOrganization, AutomaticEvaluatedRcptSettlmt, CalculationSchemaGroupCode, DeletionIndicator, EvaldReceiptSettlementIsActive, IncotermsClassification, IncotermsTransferLocation, IncotermsVersion, IncotermsLocation1, IncotermsLocation2, IncotermsSupChnLoc1AddlUUID, IncotermsSupChnLoc2AddlUUID, IncotermsSupChnDvtgLocAddlUUID, IntrastatCrsBorderTrMode, InvoiceIsGoodsReceiptBased, InvoiceIsMMServiceEntryBased, MaterialPlannedDeliveryDurn, MinimumOrderAmount, PaymentTerms, PlanningCycle, PricingDateControl, ProdStockAndSlsDataTransfPrfl, ProductUnitGroup, PurOrdAutoGenerationIsAllowed, PurchaseOrderCurrency, PurchasingGroup, PurchasingIsBlockedForSupplier, RoundingProfile, ShippingCondition, SuplrDiscountInKindIsGranted, SuplrInvcRevalIsAllowed, SuplrIsRlvtForSettlmtMgmt, SuplrPurgOrgIsRlvtForPriceDetn, SupplierABCClassificationCode, SupplierAccountNumber, SupplierIsReturnsSupplier, SupplierPhoneNumber, SupplierRespSalesPersonName, SupplierConfirmationControlKey, IsOrderAcknRqd, AuthorizationGroup, SupplierAccountGroup     }    
;
    @readonly
    entity A_SupplierPurchasingOrgText as projection on SIECAPI_BUSINESS_PARTNER.A_SupplierPurchasingOrgText
    {        key Supplier, key PurchasingOrganization, key Language, key LongTextID, LongText     }    
;
    @readonly
    entity A_SupplierText as projection on SIECAPI_BUSINESS_PARTNER.A_SupplierText
    {        key Supplier, key Language, key LongTextID, LongText     }    
;
    @readonly
    entity A_SupplierWithHoldingTax as projection on SIECAPI_BUSINESS_PARTNER.A_SupplierWithHoldingTax
    {        key Supplier, key CompanyCode, key WithholdingTaxType, ExemptionDateBegin, ExemptionDateEnd, ExemptionReason, IsWithholdingTaxSubject, RecipientType, WithholdingTaxCertificate, WithholdingTaxCode, WithholdingTaxExmptPercent, WithholdingTaxNumber, AuthorizationGroup     }    
;
}