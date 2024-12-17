using SIECAPI_SALES_ORDER_SRV from './external/SIECAPI_SALES_ORDER_SRV.cds';

service SIECAPI_SALES_ORDER_SRVService {
    @readonly
    entity A_SalesOrder                   as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrder;

    @readonly
    entity A_SalesOrderBillingPlan        as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderBillingPlan;

    @readonly
    entity A_SalesOrderBillingPlanItem    as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderBillingPlanItem;

    @readonly
    entity A_SalesOrderHeaderPartner      as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderHeaderPartner;

    @readonly
    entity A_SalesOrderHeaderPrElement    as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderHeaderPrElement;

    @readonly
    entity A_SalesOrderItem               as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderItem;

    @readonly
    entity A_SalesOrderItemBillingPlan    as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderItemBillingPlan;

    @readonly
    entity A_SalesOrderItemPartner        as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderItemPartner;

    @readonly
    entity A_SalesOrderItemPartnerAddress as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderItemPartnerAddress;

    @readonly
    entity A_SalesOrderItemPrElement      as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderItemPrElement;

    @readonly
    entity A_SalesOrderItemRelatedObject  as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderItemRelatedObject;

    @readonly
    entity A_SalesOrderItemText           as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderItemText;

    @readonly
    entity A_SalesOrderItmPrecdgProcFlow  as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderItmPrecdgProcFlow;

    @readonly
    entity A_SalesOrderItmSubsqntProcFlow as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderItmSubsqntProcFlow;

    @readonly
    entity A_SalesOrderPartnerAddress     as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderPartnerAddress;

    @readonly
    entity A_SalesOrderPrecdgProcFlow     as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderPrecdgProcFlow;

    @readonly
    entity A_SalesOrderRelatedObject      as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderRelatedObject;

    @readonly
    entity A_SalesOrderScheduleLine       as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderScheduleLine;

    @readonly
    entity A_SalesOrderSubsqntProcFlow    as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderSubsqntProcFlow;

    @readonly
    entity A_SlsOrdPaymentPlanItemDetails as projection on SIECAPI_SALES_ORDER_SRV.A_SlsOrdPaymentPlanItemDetails;

    @readonly
    entity A_SalesOrderText               as projection on SIECAPI_SALES_ORDER_SRV.A_SalesOrderText;

    @readonly
    entity A_SlsOrderItemBillingPlanItem  as projection on SIECAPI_SALES_ORDER_SRV.A_SlsOrderItemBillingPlanItem;
}
