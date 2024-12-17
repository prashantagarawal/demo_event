using SIECAPI_PRODUCTION_ORDER_2_SRV from './external/SIECAPI_PRODUCTION_ORDER_2_SRV.cds';

service SIECAPI_PRODUCTION_ORDER_2_SRVService {
    @readonly
    entity A_ProductionOrderComponent_2 as projection on SIECAPI_PRODUCTION_ORDER_2_SRV.A_ProductionOrderComponent_2
    {        key Reservation, key ReservationItem, MaterialGroup, Material, Plant, ManufacturingOrderCategory, ManufacturingOrderType, ManufacturingOrder, ManufacturingOrderSequence, ManufacturingOrderOperation, ProductionPlant, OrderInternalBillOfOperations, MatlCompRequirementDate, MatlCompRequirementTime, ReservationIsFinallyIssued, MatlCompIsMarkedForDeletion, IsBulkMaterialComponent, MatlCompIsMarkedForBackflush, MaterialCompIsCostRelevant, OrderComponentLongText, SalesOrder, SalesOrderItem, SortField, BillOfMaterialCategory, BOMItem, BOMItemCategory, BillOfMaterialItemNumber, BOMItemDescription, StorageLocation, Batch, BatchSplitType, GoodsMovementType, SupplyArea, GoodsRecipientName, UnloadingPointName, MaterialCompIsAlternativeItem, AlternativeItemGroup, AlternativeItemStrategy, AlternativeItemPriority, UsageProbabilityPercent, MaterialComponentIsPhantomItem, LeadTimeOffset, QuantityIsFixed, IsNetScrap, ComponentScrapInPercent, OperationScrapInPercent, BaseUnit, BaseUnitISOCode, BaseUnitSAPCode, RequiredQuantity, WithdrawnQuantity, ConfirmedAvailableQuantity, MaterialCompOriginalQuantity, EntryUnit, EntryUnitISOCode, EntryUnitSAPCode, GoodsMovementEntryQty, Currency, WithdrawnQuantityAmount     }    
;
    @readonly
    entity A_ProductionOrderComponent_3 as projection on SIECAPI_PRODUCTION_ORDER_2_SRV.A_ProductionOrderComponent_3
    {        key Reservation, key ReservationItem, key ReservationRecordType, MaterialGroup, Material, Plant, ManufacturingOrderCategory, ManufacturingOrderType, ManufacturingOrder, ManufacturingOrderSequence, ManufacturingOrderOperation, ProductionPlant, OrderInternalBillOfOperations, MatlCompRequirementDate, MatlCompRequirementTime, ReservationIsFinallyIssued, MatlCompIsMarkedForDeletion, IsBulkMaterialComponent, MatlCompIsMarkedForBackflush, MaterialCompIsCostRelevant, OrderComponentLongText, SalesOrder, SalesOrderItem, MatlCompFreeDefinedAttribute, BillOfMaterialCategory, BOMItem, BOMItemCategory, BillOfMaterialItemNumber, BOMItemDescription, StorageLocation, Batch, BatchSplitType, GoodsMovementType, SupplyArea, GoodsRecipientName, UnloadingPointName, MaterialCompIsAlternativeItem, AlternativeItemGroup, AlternativeItemStrategy, AlternativeItemPriority, UsageProbabilityPercent, MaterialComponentIsPhantomItem, LeadTimeOffset, QuantityIsFixed, IsNetScrap, ComponentScrapInPercent, OperationScrapInPercent, BaseUnit, BaseUnitISOCode, BaseUnitSAPCode, RequiredQuantity, WithdrawnQuantity, ConfirmedAvailableQuantity, MaterialCompOriginalQuantity, EntryUnit, EntryUnitISOCode, EntryUnitSAPCode, GoodsMovementEntryQty, Currency, WithdrawnQuantityAmount, LastChangeDateTime     }    
;
    @readonly
    entity A_ProductionOrderComponent_4 as projection on SIECAPI_PRODUCTION_ORDER_2_SRV.A_ProductionOrderComponent_4
    {        key Reservation, key ReservationItem, key ReservationRecordType, MaterialGroup, Material, Plant, ManufacturingOrderCategory, ManufacturingOrderType, ManufacturingOrder, ManufacturingOrderSequence, ManufacturingOrderOperation, ProductionPlant, OrderInternalBillOfOperations, MatlCompRequirementDate, MatlCompRequirementTime, ReservationIsFinallyIssued, MatlCompIsMarkedForDeletion, IsBulkMaterialComponent, MatlCompIsMarkedForBackflush, MaterialCompIsCostRelevant, OrderComponentLongText, SalesOrder, SalesOrderItem, MatlCompFreeDefinedAttribute, BillOfMaterialCategory, BOMItem, BOMItemCategory, BillOfMaterialItemNumber, BOMItemDescription, StorageLocation, Batch, BatchSplitType, GoodsMovementType, SupplyArea, GoodsRecipientName, UnloadingPointName, MaterialCompIsAlternativeItem, AlternativeItemGroup, AlternativeItemStrategy, AlternativeItemPriority, UsageProbabilityPercent, MaterialComponentIsPhantomItem, LeadTimeOffset, QuantityIsFixed, IsNetScrap, ComponentScrapInPercent, OperationScrapInPercent, BaseUnit, BaseUnitISOCode, BaseUnitSAPCode, RequiredQuantity, WithdrawnQuantity, ConfirmedAvailableQuantity, MaterialCompOriginalQuantity, EntryUnit, EntryUnitISOCode, EntryUnitSAPCode, GoodsMovementEntryQty, Currency, WithdrawnQuantityAmount, LastChangeDateTime     }    
;
    @readonly
    entity A_ProductionOrderItem_2 as projection on SIECAPI_PRODUCTION_ORDER_2_SRV.A_ProductionOrderItem_2
    {        key ManufacturingOrder, key ManufacturingOrderItem, ManufacturingOrderCategory, ManufacturingOrderType, IsCompletelyDelivered, Material, ProductionPlant, Plant, MRPArea, QuantityDistributionKey, MaterialGoodsReceiptDuration, StorageLocation, Batch, InventoryUsabilityCode, GoodsRecipientName, UnloadingPointName, StockSegment, MfgOrderItemPlndDeliveryDate, MfgOrderItemActualDeliveryDate, ProductionUnit, ProductionUnitISOCode, ProductionUnitSAPCode, MfgOrderItemPlannedTotalQty, MfgOrderItemPlannedScrapQty, MfgOrderItemGoodsReceiptQty, MfgOrderItemActualDeviationQty     }    
;
    @readonly
    entity A_ProductionOrderOperation_2 as projection on SIECAPI_PRODUCTION_ORDER_2_SRV.A_ProductionOrderOperation_2
    {        key OrderInternalBillOfOperations, key OrderIntBillOfOperationsItem, ManufacturingOrder, ManufacturingOrderSequence, MfgOrderSequenceText, ManufacturingOrderOperation, ManufacturingOrderSubOperation, ManufacturingOrderCategory, ManufacturingOrderType, MfgOrderOperationText, OrderOperationLongText, OrderSequenceLongText, OperationIsCreated, OperationIsReleased, OperationIsPrinted, OperationIsConfirmed, OperationIsPartiallyConfirmed, OperationIsDeleted, OperationIsTechlyCompleted, OperationIsClosed, OperationIsScheduled, OperationIsPartiallyDelivered, OperationIsDelivered, ProductionPlant, WorkCenterInternalID, WorkCenterTypeCode, WorkCenter, OperationControlProfile, OpErlstSchedldExecStrtDte, OpErlstSchedldExecStrtTme, OpErlstSchedldExecEndDte, OpErlstSchedldExecEndTme, OpActualExecutionStartDate, OpActualExecutionStartTime, OpActualExecutionEndDate, OpActualExecutionEndTime, OpErlstSchedldProcgStrtDte, OpErlstSchedldProcgStrtTme, OpErlstSchedldTrdwnStrtDte, OpErlstSchedldTrdwnStrtTme, ErlstSchedldExecDurnInWorkdays, OpActualExecutionDays, OperationUnit, OperationUnitISOCode, OperationUnitSAPCode, OpPlannedTotalQuantity, OpTotalConfirmedYieldQty, WorkCenterStandardWorkQtyUnit1, StdWrkQtyUnit1ISOCode, StdWrkQtyUnit1SAPCode, WorkCenterStandardWorkQty1, WorkCenterStandardWorkQtyUnit2, StdWrkQtyUnit2ISOCode, StdWrkQtyUnit2SAPCode, WorkCenterStandardWorkQty2, WorkCenterStandardWorkQtyUnit3, StdWrkQtyUnit3ISOCode, StdWrkQtyUnit3SAPCode, WorkCenterStandardWorkQty3, WorkCenterStandardWorkQtyUnit4, StdWrkQtyUnit4ISOCode, StdWrkQtyUnit4SAPCode, WorkCenterStandardWorkQty4, WorkCenterStandardWorkQtyUnit5, StdWrkQtyUnit5ISOCode, StdWrkQtyUnit5SAPCode, WorkCenterStandardWorkQty5, WorkCenterStandardWorkQtyUnit6, StdWrkQtyUnit6ISOCode, StdWrkQtyUnit6SAPCode, WorkCenterStandardWorkQty6, LastChangeDateTime     }    
;
    @readonly
    entity A_ProductionOrderStatus_2 as projection on SIECAPI_PRODUCTION_ORDER_2_SRV.A_ProductionOrderStatus_2
    {        key ManufacturingOrder, key StatusCode, IsUserStatus, StatusShortName, StatusName     }    
;
    @readonly
    entity A_ProductionOrder_2 as projection on SIECAPI_PRODUCTION_ORDER_2_SRV.A_ProductionOrder_2
    {        key ManufacturingOrder, ManufacturingOrderCategory, ManufacturingOrderType, OrderLongText, ManufacturingOrderImportance, OrderIsCreated, OrderIsReleased, OrderIsPrinted, OrderIsConfirmed, OrderIsPartiallyConfirmed, OrderIsDelivered, OrderIsDeleted, OrderIsPreCosted, SettlementRuleIsCreated, OrderIsPartiallyReleased, OrderIsLocked, OrderIsTechnicallyCompleted, OrderIsClosed, OrderIsPartiallyDelivered, OrderIsMarkedForDeletion, SettlementRuleIsCrtedManually, OrderIsScheduled, OrderHasGeneratedOperations, OrderIsToBeHandledInBatches, MaterialAvailyIsNotChecked, MfgOrderCreationDate, MfgOrderCreationTime, LastChangeDateTime, Material, StorageLocation, GoodsRecipientName, UnloadingPointName, InventoryUsabilityCode, MaterialGoodsReceiptDuration, QuantityDistributionKey, StockSegment, OrderInternalBillOfOperations, ProductionPlant, Plant, MRPArea, MRPController, ProductionSupervisor, ProductionVersion, PlannedOrder, SalesOrder, SalesOrderItem, BasicSchedulingType, ManufacturingObject, ProductConfiguration, OrderSequenceNumber, BusinessArea, CompanyCode, ProfitCenter, ActualCostsCostingVariant, PlannedCostsCostingVariant, FunctionalArea, MfgOrderPlannedStartDate, MfgOrderPlannedStartTime, MfgOrderPlannedEndDate, MfgOrderPlannedEndTime, MfgOrderScheduledStartDate, MfgOrderScheduledStartTime, MfgOrderScheduledEndDate, MfgOrderScheduledEndTime, MfgOrderActualReleaseDate, ProductionUnit, ProductionUnitISOCode, ProductionUnitSAPCode, TotalQuantity, MfgOrderPlannedScrapQty, MfgOrderConfirmedYieldQty, CustomerName, WBSElementExternalID     }    
;
    @readonly
    entity A_ProductionRsceTools_2 as projection on SIECAPI_PRODUCTION_ORDER_2_SRV.A_ProductionRsceTools_2
    {        key OrderInternalBillOfOperations, key MfgOrderOpProdnRsceToolIntID, ProductionResourceTool, ProdnRsceToolCategory, ProdnRsceToolCategoryName, ProdnRsceToolControlProfile, ProdnRsceToolPlant, OrderOperationInternalID, ManufacturingOrder, ManufacturingOrderOperation, ManufacturingOrderCategory, ManufacturingOrderType, ProductionPlant, BillOfOperationsType, BillOfOperationsGroup, EarliestSchedldUsageStartDate, EarliestSchedldUsageStartTime, EarliestSchedldUsageEndDate, EarliestSchedldUsageEndTime, LatestSchedldUsageStartDate, LatestSchedldUsageStartTime, LatestSchedldUsageEndDate, LatestSchedldUsageEndTime, ActualUsageStartDate, ActualUsageStartTime, ActualUsageEndDate, ActualUsageEndTime, ProdnRsceToolUsageDurnUnit, ProdnRsceToolUsageDuration, PRTUsageDurationUnitISOCode, PRTUsageDurationUnitSAPCode, ProdnRsceToolTotQtyCalcFormula, ProdnRsceToolUsageQtyCalcFmla, ProdnRsceToolStdWorkQtyUnit, ProdnRsceToolStandardWorkQty, PRTStdWorkQtyUnitISOCode, PRTStdWorkQtyUnitSAPCode, PlannedProdnRsceToolQtyUnit, PlannedTotalProdnRsceToolQty, PlannedPRTQtyUnitISOCode, PlannedPRTQtyUnitSAPCode, ConfirmedProdnRsceToolQtyUnit, ConfirmedProdnRsceToolQty, ConfirmedPRTQtyUnitISOCode, ConfirmedPRTQtyUnitSAPCode, ProdnRsceToolUsageQuantityUnit, ProdnRsceToolUsageQuantity, PRTUsageQtyUnitISOCode, PRTUsageQtyUnitSAPCode, PlndProdnRsceToolUsageQtyUnit, PlannedProdnRsceToolUsageQty, PlannedPRTUsageQtyUnitISOCode, PlannedPRTUsageQtyUnitSAPCode, ConfdProdnRsceToolUsageQtyUnit, ConfirmedProdnRsceToolUsageQty, ConfdPRTUsageQtyUnitISOCode, ConfdPRTUsageQtyUnitSAPCode, ProdnRsceToolBaseUnit, ProdnRsceToolBaseUnitISOCode, ProdnRsceToolBaseUnitSAPCode     }    
;
}