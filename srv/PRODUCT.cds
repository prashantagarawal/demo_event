using PRODUCT from './external/PRODUCT.cds';

service PRODUCTService {
    @readonly
    entity ProdSalesDeliverySalesTax as projection on PRODUCT.ProdSalesDeliverySalesTax
    {        key Product, key Country, key ProductSalesTaxCategory, key ProductSalesOrg, key ProductDistributionChnl, ProductTaxClassification, SAP__Messages     }    
;
    @readonly
    entity Product as projection on PRODUCT.Product
    {        key Product, ProductType, CreationDate, CreationTime, CreationDateTime, CreatedByUser, LastChangeDate, LastChangedByUser, IsMarkedForDeletion, CrossPlantStatus, CrossPlantStatusValidityDate, ProductOldID, GrossWeight, WeightUnit, WeightISOUnit, ProductGroup, BaseUnit, BaseISOUnit, ItemCategoryGroup, NetWeight, Division, VolumeUnit, VolumeISOUnit, ProductVolume, AuthorizationGroup, ANPCode, SizeOrDimensionText, IndustryStandardName, ProductStandardID, InternationalArticleNumberCat, ProductIsConfigurable, IsBatchManagementRequired, ExternalProductGroup, CrossPlantConfigurableProduct, SerialNoExplicitnessLevel, IsApprovedBatchRecordReqd, HandlingIndicator, WarehouseProductGroup, WarehouseStorageCondition, StandardHandlingUnitType, SerialNumberProfile, IsPilferable, IsRelevantForHzdsSubstances, QuarantinePeriod, TimeUnitForQuarantinePeriod, QuarantinePeriodISOUnit, QualityInspectionGroup, HandlingUnitType, HasVariableTareWeight, MaximumPackagingLength, MaximumPackagingWidth, MaximumPackagingHeight, MaximumCapacity, OvercapacityTolerance, UnitForMaxPackagingDimensions, MaxPackggDimensionISOUnit, BaseUnitSpecificProductLength, BaseUnitSpecificProductWidth, BaseUnitSpecificProductHeight, ProductMeasurementUnit, ProductMeasurementISOUnit, ArticleCategory, IndustrySector, LastChangeDateTime, LastChangeTime, DangerousGoodsIndProfile, ProductDocumentChangeNumber, ProductDocumentPageCount, ProductDocumentPageNumber, DocumentIsCreatedByCAD, ProductionOrInspectionMemoTxt, ProductionMemoPageFormat, ProductIsHighlyViscous, TransportIsInBulk, ProdEffctyParamValsAreAssigned, ProdIsEnvironmentallyRelevant, LaboratoryOrDesignOffice, PackagingProductGroup, PackingReferenceProduct, BasicProduct, ProductDocumentNumber, ProductDocumentVersion, ProductDocumentType, ProductDocumentPageFormat, ProdChmlCmplncRelevanceCode, DiscountInKindEligibility, ProdCompetitorCustomerNumber, ProductHierarchy, ProdAllocDetnProcedure, SAP__Messages     }    
;
    @readonly
    entity ProductDescription as projection on PRODUCT.ProductDescription
    {        key Product, key Language, ProductDescription, SAP__Messages     }    
;
    @readonly
    entity ProductPlant as projection on PRODUCT.ProductPlant
    {        key Product, key Plant, ProfileCode, ProfileValidityStartDate, FiscalYearVariant, PeriodType, ProfitCenter, IsMarkedForDeletion, ConfigurableProduct, StockDeterminationGroup, IsBatchManagementRequired, SerialNumberProfile, IsNegativeStockAllowed, ProductCFOPCategory, ProductIsExciseTaxRelevant, GoodsIssueUnit, GoodsIssueISOUnit, DistrCntrDistributionProfile, ProductIsCriticalPrt, ProductLogisticsHandlingGroup, ProductFreightGroup, OriginalBatchReferenceProduct, OriglBatchManagementIsRequired, BaseUnit, BaseISOUnit, ProductMinControlTemperature, ProductMaxControlTemperature, ProductControlTemperatureUnit, ProdCtrlTemperatureUnitISOCode, SAP__Messages     }    
;
    @readonly
    entity ProductPlantCosting as projection on PRODUCT.ProductPlantCosting
    {        key Product, key Plant, IsCoProduct, CostingLotSize, TaskListGroup, TaskListType, CostingSpecialProcurementType, SourceBOMAlternative, ProductBOMUsage, ProductIsCostingRelevant, TaskListGroupCounter, VarianceKey, CostingProductionVersion, IsFixedPriceCoProduct, BaseUnit, BaseISOUnit, SAP__Messages     }    
;
    @readonly
    entity ProductPlantForecast as projection on PRODUCT.ProductPlantForecast
    {        key Product, key Plant, ConsumptionRefUsageEndDate, CnsmpnQuantityMultiplierValue, ConsumptionReferenceProduct, ConsumptionReferencePlant, CorrectionFactorIsRequired, ForecastModelIsReset, SAP__Messages     }    
;
    @readonly
    entity ProductPlantInspTypeSetting as projection on PRODUCT.ProductPlantInspTypeSetting
    {        key InspectionLotType, key Product, key Plant, InspLotIsTaskListRequired, InspLotHasMaterialSpec, InspLotHasConfignSpecification, InspLotHasBatchCharc, InspLotHasAutomSpecAssgmt, InspLotHasCharc, HasPostToInspectionStock, InspLotIsAutomUsgeDcsnPossible, SamplingProcedure, InspLotDynamicRule, InspLotSampleQuantityInPercent, InspectionLotIsFullInspection, InspLotSkipIsAllowed, InspLotHasManualSampleSize, InspLotIsSmplCalcMnlTriggered, InspLotIsSerialNmbrPossible, InspLotDurationInDays, InspLotSummaryControl, InspQualityScoreProcedure, InspLotAcceptedScrapRatioInPct, InspectionLotHasAppraisalCosts, QualityCostCollector, ProdInspTypeSettingIsActive, InspTypeIsPrfrd, InspLotHasHandlingUnit, InspLotHasMultipleSpec, InspLotOfEWMSummaryControl, SAP__Messages     }    
;
    @readonly
    entity ProductPlantInternationalTrade as projection on PRODUCT.ProductPlantInternationalTrade
    {        key Product, key Plant, CountryOfOrigin, RegionOfOrigin, ConsumptionTaxCtrlCode, ExportAndImportProductGroup, ProductCASNumber, ProdIntlTradeClassification, SAP__Messages     }    
;
    @readonly
    entity ProductPlantMRP as projection on PRODUCT.ProductPlantMRP
    {        key Product, key MRPArea, key Plant, MRPType, MRPResponsible, MRPGroup, ReorderThresholdQuantity, PlanAndOrderDayDetermination, PlanningTimeFence, LotSizingProcedure, RoundingProfile, LotSizeRoundingQuantity, MinimumLotSizeQuantity, MaximumLotSizeQuantity, MaximumStockQuantity, AssemblyScrapPercent, ProcurementSubType, ProductionInvtryManagedLoc, DfltStorageLocationExtProcmt, MRPPlanningCalendar, SafetyStockQuantity, RangeOfCvrgPrflCode, SafetySupplyDurationInDays, FixedLotSizeQuantity, LotSizeIndependentCosts, StorageCostsPercentageCode, ProductServiceLevelInPercent, IsMarkedForDeletion, SafetyTimePeriodProfile, DependentRqmtMRPRelevance, ProductSafetyTimeMRPRelevance, PlannedDeliveryDurationInDays, IsPlannedDeliveryTime, RqmtQtyRcptTaktTmeInWrkgDays, MRPSafetyStockMethod, Currency, BaseUnit, BaseISOUnit, SAP__Messages     }    
;
    @readonly
    entity ProductPlantProcurement as projection on PRODUCT.ProductPlantProcurement
    {        key Product, key Plant, IsAutoPurOrdCreationAllowed, IsSourceListRequired, JustInTimeDeliveryScheduleCode, PurchasingGroup, SAP__Messages     }    
;
    @readonly
    entity ProductPlantPurchaseTax as projection on PRODUCT.ProductPlantPurchaseTax
    {        key Product, key Plant, key DepartureCountry, ProdPurchaseTaxClassification, SAP__Messages     }    
;
    @readonly
    entity ProductPlantQualityManagement as projection on PRODUCT.ProductPlantQualityManagement
    {        key Product, key Plant, ProdQltyManagementControlKey, HasPostToInspectionStock, InspLotDocumentationIsRequired, QualityMgmtSystemForSupplier, RecrrgInspIntervalTimeInDays, ProductQualityCertificateType, ProdQualityAuthorizationGroup, SAP__Messages     }    
;
    @readonly
    entity ProductPlantSales as projection on PRODUCT.ProductPlantSales
    {        key Product, key Plant, LoadingGroup, CapPlanningQuantityInBaseUoM, ProdShipgProcgDurationInDays, WrkCentersShipgSetupTimeInDays, ReplacementPartType, AvailabilityCheckType, BaseUnit, BaseISOUnit, SAP__Messages     }    
;
    @readonly
    entity ProductPlantStorage as projection on PRODUCT.ProductPlantStorage
    {        key Product, key Plant, PhysInventoryForCycleCounting, MaximumStoragePeriod, ProdMaximumStoragePeriodUnit, MaximumStoragePeriodISOUnit, CycleCountingIndicatorIsFixed, SAP__Messages     }    
;
    @readonly
    entity ProductPlantStorageLocation as projection on PRODUCT.ProductPlantStorageLocation
    {        key Product, key Plant, key StorageLocation, WarehouseStorageBin, IsMarkedForDeletion, LeanWrhsManagementPickingArea, SAP__Messages     }    
;
    @readonly
    entity ProductPlantSupplyPlanning as projection on PRODUCT.ProductPlantSupplyPlanning
    {        key Product, key Plant, FixedLotSizeQuantity, MaximumLotSizeQuantity, MinimumLotSizeQuantity, LotSizeRoundingQuantity, LotSizingProcedure, MRPType, MRPResponsible, SafetyStockQuantity, MinimumSafetyStockQuantity, PlanningTimeFence, ConsumptionValueCategory, MaximumStockQuantity, ReorderThresholdQuantity, PlannedDeliveryDurationInDays, SafetySupplyDurationInDays, PlanningStrategyGroup, TotalReplenishmentLeadTime, ProcurementType, ProcurementSubType, AssemblyScrapPercent, AvailabilityCheckType, GoodsReceiptDuration, PlanAndOrderDayDetermination, RoundingProfile, DfltStorageLocationExtProcmt, MRPGroup, LotSizeIndependentCosts, RqmtQtyRcptTaktTmeInWrkgDays, MRPPlanningCalendar, RangeOfCvrgPrflCode, ProductSafetyTimeMRPRelevance, SafetyTimePeriodProfile, DependentRqmtMRPRelevance, ProductServiceLevelInPercent, ProdInhProdnDurationInWorkDays, MRPAvailabilityType, CrossProjectProduct, StorageCostsPercentageCode, FollowUpProduct, RepetitiveManufacturingIsAllwd, DependentRequirementsType, ProductIsBulkComponent, RepetitiveManufacturingProfile, BackwardCnsmpnPeriodInWorkDays, FwdConsumptionPeriodInWorkDays, ProdRqmtsConsumptionMode, ProdFcstRequirementsSplitCode, EffectiveOutDate, SchedulingFloatProfile, ComponentScrapInPercent, ProductDiscontinuationCode, ProductRequirementsGrouping, ProductionInvtryManagedLoc, ProductComponentBackflushCode, ProposedProductSupplyArea, MRPSafetyStockMethod, JITProdnConfProfile, PlannedOrderActionControl, Currency, BaseUnit, MRPProfile, ProdnPlngAndControlCalendar, BaseISOUnit, SAP__Messages     }    
;
    @readonly
    entity ProductPlantWorkScheduling as projection on PRODUCT.ProductPlantWorkScheduling
    {        key Product, key Plant, ProductBaseQuantity, UnlimitedOverDelivIsAllowed, OverDeliveryTolerancePercent, UnderDeliveryTolerancePercent, ProductionInvtryManagedLoc, ProductionOrderBatchCode, ProdIsWithdrawnFrmProdnBin, TransitionMatrixProductsGroup, OrderChangeManagementProfile, ProductComponentBackflushCode, SetupAndTeardownTime, ProductionSchedulingProfile, TransitionTime, ProcessingTimeInDays, ProductionSupervisor, ProductProductionQuantityUnit, ProdProductionQuantityISOUnit, BaseUnit, BaseISOUnit, SAP__Messages     }    
;
    @readonly
    entity ProductProcurement as projection on PRODUCT.ProductProcurement
    {        key Product, PurchaseOrderQuantityUnit, PurchaseOrderQuantityISOUnit, VarblPurOrdUnitStatus, PurchasingAcknProfile, SAP__Messages     }    
;
    @readonly
    entity ProductQualityManagement as projection on PRODUCT.ProductQualityManagement
    {        key Product, QltyMgmtInProcmtIsActive, CatalogProfile, SAP__Messages     }    
;
    @readonly
    entity ProductSales as projection on PRODUCT.ProductSales
    {        key Product, SalesStatus, SalesStatusValidityDate, TransportationGroup, PackagingProductType, AllowedPackagingWeightQty, AllowedPackagingWeightQtyUnit, AllwdPackagingWeightQtyISOUnit, AllowedPackagingVolumeQty, AllowedPackagingVolumeQtyUnit, AllwdPackagingVolumeQtyISOUnit, MaximumLevelByVolumeInPercent, ExcessWeightToleranceValue, PackggProductIsClosedPackaging, ProductStackingFactor, ProdExcessVolumeToleranceValue, SAP__Messages     }    
;
    @readonly
    entity ProductSalesDelivery as projection on PRODUCT.ProductSalesDelivery
    {        key Product, key ProductSalesOrg, key ProductDistributionChnl, MinimumOrderQuantity, SupplyingPlant, PriceSpecificationProductGroup, AccountDetnProductGroup, DeliveryNoteProcMinDelivQty, ItemCategoryGroup, DeliveryQuantityUnit, DeliveryQuantityISOUnit, DeliveryQuantity, ProductSalesStatus, ProductSalesStatusValidityDate, SalesMeasureUnit, SalesMeasureISOUnit, IsMarkedForDeletion, FirstSalesSpecProductGroup, SecondSalesSpecProductGroup, ThirdSalesSpecProductGroup, FourthSalesSpecProductGroup, FifthSalesSpecProductGroup, LogisticsStatisticsGroup, VolumeRebateGroup, CashDiscountIsDeductible, RoundingProfile, VariableSalesUnitIsNotAllowed, ProductCommissionGroup, PricingReferenceProduct, ProductHasAttributeID01, ProductHasAttributeID02, ProductHasAttributeID03, ProductHasAttributeID04, ProductHasAttributeID05, ProductHasAttributeID06, ProductHasAttributeID07, ProductHasAttributeID08, ProductHasAttributeID09, ProductHasAttributeID10, ProdIsEntlmntRlvt, BaseUnit, ProductHierarchy, BaseISOUnit, SAP__Messages     }    
;
    @readonly
    entity ProductStorage as projection on PRODUCT.ProductStorage
    {        key Product, StorageConditions, ProdTemperatureConditionCode, HazardousProduct, NmbrOfGROrGISlipsToPrintQty, LabelType, LabelForm, MinRemainingShelfLife, ProductExpirationDateType, StorageBinInstruction, ShelfLifeExpirationDatePeriod, ShelfLifeExprtnDateRndngRule, TotalShelfLifeStoragePercent, TotalShelfLife, BaseUnit, BaseISOUnit, SAP__Messages     }    
;
    @readonly
    entity ProductUnitOfMeasure as projection on PRODUCT.ProductUnitOfMeasure
    {        key Product, key AlternativeUnit, QuantityNumerator, QuantityDenominator, ProductVolume, VolumeUnit, VolumeISOUnit, GrossWeight, WeightUnit, WeightISOUnit, GlobalTradeItemNumber, GlobalTradeItemNumberCategory, UnitSpecificProductLength, UnitSpecificProductWidth, UnitSpecificProductHeight, ProductMeasurementUnit, ProductMeasurementISOUnit, LowerLevelPackagingUnit, LowerLevelPackagingISOUnit, MaximumStackingFactor, CapacityUsage, BaseUnit, BaseISOUnit, SAP__Messages     }    
;
    @readonly
    entity ProductUnitOfMeasureEAN as projection on PRODUCT.ProductUnitOfMeasureEAN
    {        key Product, key AlternativeUnit, key ConsecutiveNumber, ProductStandardID, InternationalArticleNumberCat, IsMainGlobalTradeItemNumber, SAP__Messages     }    
;
    @readonly
    entity ProductValuation as projection on PRODUCT.ProductValuation
    {        key Product, key ValuationArea, key ValuationType, ValuationClass, PriceDeterminationControl, StandardPrice, ProductPriceUnitQuantity, InventoryValuationProcedure, MovingAveragePrice, ValuationCategory, ProductUsageType, ProductOriginType, IsProducedInhouse, IsMarkedForDeletion, ValuationClassSalesOrderStock, ProjectStockValuationClass, Currency, BaseUnit, BaseISOUnit, SAP__Messages     }    
;
    @readonly
    entity ProductValuationAccounting as projection on PRODUCT.ProductValuationAccounting
    {        key Product, key ValuationArea, key ValuationType, CommercialPrice1InCoCodeCrcy, CommercialPrice2InCoCodeCrcy, CommercialPrice3InCoCodeCrcy, DevaluationYearCount, FuturePrice, FuturePriceValidityStartDate, LIFOValuationPoolNumber, TaxPricel1InCoCodeCrcy, TaxPrice2InCoCodeCrcy, TaxPrice3InCoCodeCrcy, TaxBasedPricesPriceUnitQty, IsLIFOAndFIFORelevant, Currency, BaseUnit, BaseISOUnit, SAP__Messages     }    
;
    @readonly
    entity ProductValuationCosting as projection on PRODUCT.ProductValuationCosting
    {        key Product, key ValuationArea, key ValuationType, ProductIsCostedWithQtyStruc, IsMaterialRelatedOrigin, CostOriginGroup, CostingOverheadGroup, PlannedPrice1InCoCodeCrcy, PlannedPrice2InCoCodeCrcy, PlannedPrice3InCoCodeCrcy, FuturePlndPrice1ValdtyDate, FuturePlndPrice2ValdtyDate, FuturePlndPrice3ValdtyDate, Currency, SAP__Messages     }    
;
    @readonly
    entity ProductValuationLedgerAccount as projection on PRODUCT.ProductValuationLedgerAccount
    {        key Product, key ValuationArea, key ValuationType, key CurrencyRole, key Ledger, ProductPriceControl, ProductPriceUnitQuantity, Currency, MovingAveragePrice, StandardPrice, BaseUnit, BaseISOUnit, SAP__Messages     }    
;
    @readonly
    entity ProductValuationLedgerPrices as projection on PRODUCT.ProductValuationLedgerPrices
    {        key Product, key ValuationArea, key ValuationType, key CurrencyRole, key Ledger, ProductPriceUnitQuantity, Currency, FuturePrice, FuturePriceValidityStartDate, BaseUnit, BaseISOUnit, SAP__Messages     }    
;
}