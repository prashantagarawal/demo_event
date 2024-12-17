/* checksum : 8a64c24b38d2a1a2ce757547aa0a8555 */
@cds.external : true
type PURCHASEREQUISITION.SAP__Message {
  code : LargeString not null;
  message : LargeString not null;
  target : LargeString;
  additionalTargets : many LargeString not null;
  transition : Boolean not null;
  @odata.Type : 'Edm.Byte'
  numericSeverity : Integer not null;
  longtextUrl : LargeString;
};

@cds.external : true
@CodeList.CurrencyCodes : {
  Url: '../../../../default/iwbep/common/0001/$metadata',
  CollectionPath: 'Currencies'
}
@CodeList.UnitsOfMeasure : {
  Url: '../../../../default/iwbep/common/0001/$metadata',
  CollectionPath: 'UnitsOfMeasure'
}
@Aggregation.ApplySupported : {
  Transformations: [ 'aggregate', 'groupby', 'filter' ],
  Rollup: #None
}
@Common.ApplyMultiUnitBehaviorForSortingAndFiltering : true
@Capabilities.FilterFunctions : [
  'eq',
  'ne',
  'gt',
  'ge',
  'lt',
  'le',
  'and',
  'or',
  'contains',
  'startswith',
  'endswith',
  'any',
  'all'
]
@Capabilities.SupportedFormats : [ 'application/json', 'application/pdf' ]
@PDF.Features : {
  DocumentDescriptionReference: '../../../../default/iwbep/common/0001/$metadata',
  DocumentDescriptionCollection: 'MyDocumentDescriptions',
  ArchiveFormat: true,
  Border: true,
  CoverPage: true,
  FitToPage: true,
  FontName: true,
  FontSize: true,
  Margin: true,
  Padding: true,
  Signature: true,
  HeaderFooter: true,
  ResultSizeDefault: 20000,
  ResultSizeMaximum: 20000
}
@Capabilities.KeyAsSegmentSupported : true
@Capabilities.AsynchronousRequestsSupported : true
service PURCHASEREQUISITION {};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Purchase Requisition'
@Common.SemanticKey : [ 'PurchaseRequisition' ]
@Common.Messages : SAP__Messages
@Capabilities.NavigationRestrictions.RestrictedProperties : [
  {
    NavigationProperty: _PurchaseRequisitionItem,
    InsertRestrictions: { Insertable: true }
  }
]
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.FilterRestrictions.Filterable : true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: PurReqnHeaderNote,
    AllowedExpressions: 'SearchExpression'
  }
]
@Capabilities.FilterRestrictions.NonFilterableProperties : [ 'PurReqnHeaderNote' ]
@Capabilities.SortRestrictions.NonSortableProperties : [ 'PurReqnHeaderNote' ]
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity PURCHASEREQUISITION.PurchaseReqn {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Purchase Requisition'
  @Common.Heading : 'Purch.Reqn'
  @Common.QuickInfo : 'Purchase Requisition Number'
  key PurchaseRequisition : String(10) not null;
  @Common.SAPObjectNodeTypeReference : 'PurchaseRequisitionType'
  @Common.IsUpperCase : true
  @Common.Label : 'Document Type'
  @Common.QuickInfo : 'Purchase Requisition Document Type'
  PurchaseRequisitionType : String(4) not null;
  @Common.Label : 'PurReqn Description'
  @Common.Heading : 'Purchase Requisition Description'
  @Common.QuickInfo : 'Purchase Requisition Description'
  PurReqnDescription : String(40) not null;
  @Common.Label : 'Long Text'
  PurReqnHeaderNote : LargeString not null;
  @Common.Label : 'Checkbox'
  SourceDetermination : Boolean not null;
  @Common.Label : 'Boolean Variable (X = True, - = False, Space = Unknown)'
  PurReqnDoOnlyValidation : Boolean not null;
  SAP__Messages : many PURCHASEREQUISITION.SAP__Message not null;
  @Common.Composition : true
  _PurchaseRequisitionItem : Composition of many PURCHASEREQUISITION.PurchaseReqnItem {  };
} actions {
  action Validate(
    _it : $self not null
  );
  action EnablePurReqForPurchasing(
    _it : $self not null
  );
  action DiscardPurReqFromPurchasing(
    _it : $self not null
  );
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Account Assignment'
@Common.SemanticKey : [ 'PurchaseReqnAcctAssgmtNumber', 'PurchaseRequisitionItem', 'PurchaseRequisition' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.FilterRestrictions.NonFilterableProperties : [ 'NetworkActivity' ]
@Capabilities.SortRestrictions.NonSortableProperties : [ 'NetworkActivity' ]
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity PURCHASEREQUISITION.PurchaseReqnAcctAssgmt {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Purchase Requisition'
  @Common.Heading : 'Purch.Req.'
  @Common.QuickInfo : 'Purchase Requisition Number'
  key PurchaseRequisition : String(10) not null;
  @Core.Immutable : true
  @Common.IsDigitSequence : true
  @Common.Label : 'Item of requisition'
  @Common.Heading : 'Item'
  @Common.QuickInfo : 'Item number of purchase requisition'
  key PurchaseRequisitionItem : String(5) not null;
  @Core.Computed : true
  @Common.IsDigitSequence : true
  @Common.Label : 'Serial no.acct.assgt'
  @Common.Heading : 'Ser'
  @Common.QuickInfo : 'Serial number for PReq account assignment segment'
  key PurchaseReqnAcctAssgmtNumber : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Cost Center'
  @Common.Heading : 'Cost Ctr'
  CostCenter : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Asset'
  @Common.QuickInfo : 'Main Asset Number'
  MasterFixedAsset : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Network'
  @Common.QuickInfo : 'Network Number for Account Assignment'
  ProjectNetwork : String(12) not null;
  @Common.IsUnit : true
  @Common.Label : 'Unit of Measure'
  @Common.Heading : 'Un'
  @Common.QuickInfo : 'Purchase requisition unit of measure'
  BaseUnit : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'ISO Code'
  @Common.Heading : 'ISO'
  @Common.QuickInfo : 'ISO Code for Unit of Measurement'
  BaseUnitISOCode : String(3) not null;
  @Measures.Unit : BaseUnit
  @Measures.UNECEUnit : BaseUnitISOCode
  @Common.Label : 'Quantity requested'
  @Common.Heading : 'Qty requested'
  @Common.QuickInfo : 'Purchase requisition quantity'
  Quantity : Decimal(13, 3) not null;
  @Common.Label : 'Distribution (%)'
  @Common.Heading : 'Percent'
  @Common.QuickInfo : 'Distribution percentage in the case of multiple acct assgt'
  MultipleAcctAssgmtDistrPercent : Decimal(3, 1) not null;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency'
  @Common.Heading : 'Crcy'
  @Common.QuickInfo : 'Currency Key'
  PurReqnItemCurrency : String(3) not null;
  @Measures.ISOCurrency : PurReqnItemCurrency
  @Common.Label : 'Net Order Value'
  @Common.Heading : 'Net Value'
  @Common.QuickInfo : 'Net Order Value in PO Currency'
  PurReqnNetAmount : Decimal(precision: 13) not null;
  @Common.Label : 'Deletion Indicator'
  @Common.Heading : 'D'
  @Common.QuickInfo : 'Deletion Indicator in Purchasing Document'
  IsDeleted : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'G/L Account'
  @Common.Heading : 'G/L Acct'
  @Common.QuickInfo : 'G/L Account Number'
  GLAccount : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Business Area'
  @Common.Heading : 'BusA'
  BusinessArea : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'SD Document'
  @Common.Heading : 'Document'
  @Common.QuickInfo : 'Sales and Distribution Document Number'
  SalesOrder : String(10) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Sales Document Item'
  @Common.Heading : 'Item'
  SalesOrderItem : String(6) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Schedule Line Number'
  @Common.Heading : 'SLNo'
  SalesOrderScheduleLine : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Sub-number'
  @Common.Heading : 'SNo.'
  @Common.QuickInfo : 'Asset Subnumber'
  FixedAsset : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Order'
  @Common.QuickInfo : 'Order Number'
  OrderID : String(12) not null;
  @Common.Label : 'Unloading Point'
  UnloadingPointName : String(25) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Controlling Area'
  @Common.Heading : 'COAr'
  ControllingArea : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Cost Object'
  @Common.Heading : 'CostObject'
  CostObject : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Profit Center'
  @Common.Heading : 'Profit Ctr'
  ProfitCenter : String(10) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Opertn task list no.'
  @Common.Heading : 'Routing number for operations'
  @Common.QuickInfo : 'Routing number of operations in the order'
  ProjectNetworkInternalID : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Commitment Item'
  CommitmentItem : String(24) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Funds Center'
  @Common.Heading : 'Funds Ctr'
  FundsCenter : String(16) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Fund'
  Fund : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Functional Area'
  FunctionalArea : String(16) not null;
  @Common.Label : 'Created On'
  @Common.QuickInfo : 'Record Created On'
  CreationDate : Date;
  @Common.Label : 'Goods Recipient'
  @Common.Heading : 'Recipient'
  GoodsRecipientName : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Real Estate Key'
  @Common.QuickInfo : 'Internal Key of Real Estate Object (FI)'
  REInternalFinNumber : String(8) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Counter'
  @Common.QuickInfo : 'Internal counter'
  NetworkActivityInternalID : String(8) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Partner'
  @Common.QuickInfo : 'Partner account number'
  PartnerAccountNumber : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Recovery Indicator'
  @Common.Heading : 'RI'
  JointVentureRecoveryCode : String(2) not null;
  @Common.Label : 'Reference date'
  @Common.Heading : 'Ref date'
  @Common.QuickInfo : 'Reference date for settlement'
  SettlementReferenceDate : Date;
  @Common.IsDigitSequence : true
  @Common.Label : 'Opertn task list no.'
  @Common.Heading : 'Routing number for operations'
  @Common.QuickInfo : 'Routing number of operations in the order'
  OrderInternalID : String(10) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Counter'
  @Common.QuickInfo : 'General counter for order'
  OrderIntBillOfOperationsItem : String(8) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Earmarked Funds'
  @Common.Heading : 'Earm. Fnds'
  @Common.QuickInfo : 'Document Number for Earmarked Funds'
  EarmarkedFundsDocument : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Activity Type'
  @Common.Heading : 'ActTyp'
  CostCtrActivityType : String(6) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Business Process'
  @Common.Heading : 'Bus. Process'
  BusinessProcess : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Grant'
  GrantID : String(20) not null;
  ValidityDate : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Chart of Accounts'
  ChartOfAccounts : String(4) not null;
  WBSElementExternalID : String(24) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Oper./Act.'
  @Common.Heading : 'Operation/Activity Number'
  @Common.QuickInfo : 'Operation/Activity Number'
  NetworkActivity : String(4) not null;
  SAP__Messages : many PURCHASEREQUISITION.SAP__Message not null;
  _PurchaseRequisitionItem : Association to one PURCHASEREQUISITION.PurchaseReqnItem {  };
  _PurReqn : Association to one PURCHASEREQUISITION.PurchaseReqn {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Delivery Address'
@Common.SemanticKey : [ 'PurchaseRequisitionItem', 'PurchaseRequisition' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity PURCHASEREQUISITION.PurchaseReqnDelivAddress {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Purchase Requisition'
  @Common.Heading : 'Purch.Reqn'
  @Common.QuickInfo : 'Purchase Requisition Number'
  key PurchaseRequisition : String(10) not null;
  @Core.Immutable : true
  @Common.IsDigitSequence : true
  @Common.Label : 'Requisn. item'
  @Common.Heading : 'Item'
  @Common.QuickInfo : 'Item number of purchase requisition'
  key PurchaseRequisitionItem : String(5) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Address'
  AddressID : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Plant'
  @Common.Heading : 'Plnt'
  Plant : String(4) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Address Type'
  @Common.Heading : 'Delivery Address Type'
  @Common.QuickInfo : 'Purchase Requisition Address Type'
  PurchasingDeliveryAddressType : String(1) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Address'
  @Common.QuickInfo : 'Manual address number in purchasing document item'
  ManualDeliveryAddressID : String(10) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Address'
  @Common.QuickInfo : 'Number of delivery address'
  ItemDeliveryAddressID : String(10) not null;
  @Common.Label : 'c/o'
  @Common.Heading : 'c/o name'
  @Common.QuickInfo : 'c/o name'
  CareOfName : String(40) not null;
  @Common.Label : 'Street 5'
  AdditionalStreetSuffixName : String(40) not null;
  @Common.Label : 'Language Key'
  @Common.Heading : 'Language'
  CorrespondenceLanguage : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Comm. Method'
  @Common.QuickInfo : 'Communication Method (Key) (Business Address Services)'
  PrfrdCommMediumType : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'PO Box'
  POBox : String(10) not null;
  @Common.Label : 'PO Box w/o No.'
  @Common.Heading : 'PO'
  @Common.QuickInfo : 'Flag: PO Box Without Number'
  POBoxIsWithoutNumber : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'PO Box Postal Code'
  @Common.Heading : 'Postl Code'
  POBoxPostalCode : String(10) not null;
  @Common.Label : 'PO Box Lobby'
  POBoxLobbyName : String(40) not null;
  @Common.Label : 'PO Box City'
  @Common.QuickInfo : 'PO Box city'
  POBoxDeviatingCityName : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'PO Box Region'
  @Common.Heading : 'PO Region'
  @Common.QuickInfo : 'Region for PO Box (Country/Region, State, Province, ...)'
  POBoxDeviatingRegion : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'PO Box Ctry/Region'
  @Common.Heading : 'PO C/R'
  @Common.QuickInfo : 'PO Box of Country/Region'
  POBoxDeviatingCountry : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Delvry Serv Type'
  @Common.QuickInfo : 'Type of Delivery Service'
  DeliveryServiceTypeCode : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Delivery Service No.'
  @Common.Heading : 'Delivery Service Number'
  @Common.QuickInfo : 'Number of Delivery Service'
  DeliveryServiceNumber : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Time Zone'
  @Common.Heading : 'Zone'
  @Common.QuickInfo : 'Address Time Zone'
  AddressTimeZone : String(6) not null;
  @Core.Computed : true
  @Common.Label : 'Full Name'
  @Common.QuickInfo : 'Full name of a party (Bus. Partner, Org. Unit, Doc. address)'
  FullName : String(80) not null;
  @Common.Label : 'City'
  CityName : String(40) not null;
  @Common.Label : 'District'
  District : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'City Code'
  @Common.QuickInfo : 'City code for city/street file'
  CityCode : String(12) not null;
  @Common.Label : 'Different City'
  @Common.Heading : 'City (Diff. from Postal City)'
  @Common.QuickInfo : 'City (different from postal city)'
  HomeCityName : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Postal Code'
  @Common.Heading : 'Postl Code'
  @Common.QuickInfo : 'City postal code'
  PostalCode : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Company Postal Code'
  @Common.Heading : 'Postl Code'
  @Common.QuickInfo : 'Company Postal Code (for Large Customers)'
  CompanyPostalCode : String(10) not null;
  @Common.Label : 'Street'
  StreetName : String(60) not null;
  @Common.Label : 'Street 2'
  StreetPrefixName : String(40) not null;
  @Common.Label : 'Street 3'
  AdditionalStreetPrefixName : String(40) not null;
  @Common.Label : 'Street 4'
  StreetSuffixName : String(40) not null;
  @Common.Label : 'House Number'
  @Common.Heading : 'House No.'
  HouseNumber : String(10) not null;
  @Common.Label : 'Supplement'
  @Common.QuickInfo : 'House number supplement'
  HouseNumberSupplementText : String(10) not null;
  @Common.Label : 'Building Code'
  @Common.Heading : 'Building'
  @Common.QuickInfo : 'Building (Number or Code)'
  Building : String(20) not null;
  @Common.Label : 'Floor'
  @Common.QuickInfo : 'Floor in building'
  Floor : String(10) not null;
  @Common.Label : 'Room Number'
  @Common.Heading : 'Room No.'
  @Common.QuickInfo : 'Room or Apartment Number'
  RoomNumber : String(10) not null;
  @Common.SAPObjectNodeTypeReference : 'Country'
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  Country : String(3) not null;
  @Common.SAPObjectNodeTypeReference : 'Region'
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  Region : String(3) not null;
  @Common.Label : 'County'
  County : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Title Key'
  @Common.Heading : 'Key'
  @Common.QuickInfo : 'Form-of-Address Key'
  FormOfAddress : String(4) not null;
  @Common.Label : 'Name'
  @Common.QuickInfo : 'Name 1'
  BusinessPartnerName1 : String(40) not null;
  @Common.Label : 'Name 2'
  BusinessPartnerName2 : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Search Term 1'
  SearchTerm1 : String(20) not null;
  @Common.Label : 'Name 3'
  BusinessPartnerName3 : String(40) not null;
  @Common.Label : 'Name 4'
  BusinessPartnerName4 : String(40) not null;
  @Common.SAPObjectNodeTypeReference : 'TaxJurisdiction'
  @Common.IsUpperCase : true
  @Common.Label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Transportation Zone'
  @Common.Heading : 'TranspZone'
  @Common.QuickInfo : 'Transportation zone to or from which the goods are delivered'
  TransportZone : String(10) not null;
  SAP__Messages : many PURCHASEREQUISITION.SAP__Message not null;
  _PurchaseRequisitionItem : Association to one PURCHASEREQUISITION.PurchaseReqnItem {  };
  _PurReqn : Association to one PURCHASEREQUISITION.PurchaseReqn {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Item'
@Common.SemanticKey : [ 'PurchaseRequisitionItem', 'PurchaseRequisition' ]
@Common.Messages : SAP__Messages
@Capabilities.NavigationRestrictions.RestrictedProperties : [
  {
    NavigationProperty: _PurchaseReqnAcctAssgmt,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _PurchaseReqnDelivAddress,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _PurchaseReqnItemText,
    InsertRestrictions: { Insertable: true },
    FilterRestrictions: { Filterable: false }
  }
]
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Core.OptimisticConcurrency : [ 'LastChangeDateTime' ]
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: RequestedQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: BaseUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: BaseUnitISOCode,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: PurchaseRequisitionPrice,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: PurReqnPriceQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: OrderedQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: ItemNetAmount,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: ExpectedOverallLimitAmount,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: OverallLimitAmount,
    AllowedExpressions: 'MultiValue'
  }
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity PURCHASEREQUISITION.PurchaseReqnItem {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Purchase Requisition'
  @Common.Heading : 'Purch.Reqn'
  @Common.QuickInfo : 'Purchase Requisition Number'
  key PurchaseRequisition : String(10) not null;
  @Core.Immutable : true
  @Common.IsDigitSequence : true
  @Common.Label : 'Requisn. item'
  @Common.Heading : 'Item'
  @Common.QuickInfo : 'Item number of purchase requisition'
  key PurchaseRequisitionItem : String(5) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Purchase order'
  @Common.Heading : 'PO'
  @Common.QuickInfo : 'Purchase order number'
  PurchasingDocument : String(10) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Purchase Order Item'
  @Common.Heading : 'Item'
  @Common.QuickInfo : 'Purchase order item number'
  PurchasingDocumentItem : String(5) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Proc.state'
  @Common.Heading : 'Purchase requisition processing state'
  @Common.QuickInfo : 'Requisition Processing State'
  PurReqnReleaseStatus : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Control indicator'
  @Common.Heading : 'Ctl'
  @Common.QuickInfo : 'Control indicator for purchasing document type'
  PurchasingDocumentSubtype : String(1) not null;
  @Common.SAPObjectNodeTypeReference : 'PurchasingDocumentItemCategory'
  @Common.IsUpperCase : true
  @Common.Label : 'Item Category'
  @Common.Heading : 'I'
  @Common.QuickInfo : 'Item category in purchasing document'
  PurchasingDocumentItemCategory : String(1) not null;
  @Common.Label : 'Short Text'
  PurchaseRequisitionItemText : String(40) not null;
  @Common.SAPObjectNodeTypeReference : 'AccountAssignmentCategory'
  @Common.IsUpperCase : true
  @Common.Label : 'Acct Assignment Cat.'
  @Common.Heading : 'A'
  @Common.QuickInfo : 'Account Assignment Category'
  AccountAssignmentCategory : String(1) not null;
  Material : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Material Group'
  @Common.Heading : 'Matl Group'
  MaterialGroup : String(9) not null;
  @Measures.Unit : BaseUnit
  @Measures.UNECEUnit : BaseUnitISOCode
  @Common.Label : 'Quantity requested'
  @Common.Heading : 'Qty requested'
  @Common.QuickInfo : 'Purchase requisition quantity'
  RequestedQuantity : Decimal(13, 3) not null;
  @Common.IsUnit : true
  @Common.Label : 'Unit of Measure'
  @Common.Heading : 'Un'
  @Common.QuickInfo : 'Purchase requisition unit of measure'
  BaseUnit : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'ISO Code'
  @Common.Heading : 'ISO'
  @Common.QuickInfo : 'ISO Code for Unit of Measurement'
  BaseUnitISOCode : String(3) not null;
  @Measures.ISOCurrency : PurReqnItemCurrency
  @Common.Label : 'Valuation Price'
  @Common.Heading : 'Valn Price'
  @Common.QuickInfo : 'Price in Purchase Requisition'
  PurchaseRequisitionPrice : Decimal(precision: 11) not null;
  @Measures.Unit : BaseUnit
  @Measures.UNECEUnit : BaseUnitISOCode
  @Common.Label : 'Price unit'
  @Common.Heading : 'Per'
  PurReqnPriceQuantity : Decimal(precision: 5) not null;
  @Common.Label : 'GR processing time'
  @Common.Heading : 'GRT'
  @Common.QuickInfo : 'Goods receipt processing time in days'
  MaterialGoodsReceiptDuration : Decimal(precision: 3) not null;
  @Common.SAPObjectNodeTypeReference : 'PurchasingOrganization'
  PurchasingOrganization : String(4) not null;
  @Common.SAPObjectNodeTypeReference : 'PurchasingGroup'
  @Common.IsUpperCase : true
  @Common.Label : 'Purchasing Group'
  @Common.Heading : 'PGr'
  PurchasingGroup : String(3) not null;
  Plant : String(4) not null;
  CompanyCode : String(4) not null;
  @Common.Label : 'Assigned'
  @Common.Heading : 'A'
  @Common.QuickInfo : 'Assigned Source of Supply'
  SourceOfSupplyIsAssigned : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Supplying Plant'
  @Common.Heading : 'SPlt'
  @Common.QuickInfo : 'Supplying (issuing) plant in case of stock transport order'
  SupplyingPlant : String(4) not null;
  @Measures.Unit : BaseUnit
  @Measures.UNECEUnit : BaseUnitISOCode
  @Common.Label : 'Quantity ordered'
  @Common.Heading : 'Ordered'
  @Common.QuickInfo : 'Quantity ordered against this purchase requisition'
  OrderedQuantity : Decimal(13, 3) not null;
  @Common.Label : 'Delivery Date'
  @Common.Heading : 'Deliv. Date'
  @Common.QuickInfo : 'Item Delivery Date'
  DeliveryDate : Date;
  @Common.SAPObjectNodeTypeReference : 'EntProjectProcessingStatus'
  @Common.IsUpperCase : true
  @Common.Label : 'Processing status'
  @Common.Heading : 'S'
  @Common.QuickInfo : 'Processing status of purchase requisition'
  ProcessingStatus : String(1) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Ext Prcsng. Status'
  @Common.Heading : 'External Processing Status'
  @Common.QuickInfo : 'External Processing Status'
  ExternalApprovalStatus : String(1) not null;
  PurchasingInfoRecord : String(10) not null;
  Supplier : String(10) not null;
  @Common.Label : 'Deletion Indicator'
  @Common.Heading : 'D'
  @Common.QuickInfo : 'Deletion Indicator in Purchasing Document'
  IsDeleted : Boolean not null;
  FixedSupplier : String(10) not null;
  @Common.Label : 'Requisitioner'
  @Common.Heading : 'Requisnr.'
  @Common.QuickInfo : 'Name of requisitioner/requester'
  RequisitionerName : String(12) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Created By'
  @Common.QuickInfo : 'Name of Person Responsible for Creating the Object'
  CreatedByUser : String(12) not null;
  @Common.Label : 'Requisition date'
  @Common.Heading : 'Req.date'
  @Common.QuickInfo : 'Requisition (request) date'
  PurReqCreationDate : Date;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency'
  @Common.Heading : 'Crcy'
  @Common.QuickInfo : 'Currency Key'
  PurReqnItemCurrency : String(3) not null;
  @Common.Label : 'Planned Deliv. Time'
  @Common.Heading : 'PDT'
  @Common.QuickInfo : 'Planned Delivery Time in Days'
  MaterialPlannedDeliveryDurn : Decimal(precision: 3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Deliv. date category'
  @Common.Heading : 'C'
  @Common.QuickInfo : 'Category of delivery date'
  DelivDateCategory : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Distrib. Indicator'
  @Common.Heading : 'D'
  @Common.QuickInfo : 'Distribution Indicator for Multiple Account Assignment'
  MultipleAcctAssgmtDistribution : String(1) not null;
  @Common.SAPObjectNodeTypeReference : 'StorageLocation'
  @Common.IsUpperCase : true
  @Common.Label : 'Storage Location'
  StorageLocation : String(4) not null;
  @Common.Label : 'Requestor'
  PurReqnSSPRequestor : String(60) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Author'
  @Common.QuickInfo : 'Author of Requisition'
  PurReqnSSPAuthor : String(12) not null;
  PurchaseContract : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Purch. Doc. Category'
  @Common.Heading : 'Cat'
  @Common.QuickInfo : 'Purchasing Document Category'
  PurReqnSourceOfSupplyType : String(1) not null;
  @Common.IsDigitSequence : true
  PurchaseContractItem : String(5) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Consumption'
  @Common.Heading : 'Cns'
  @Common.QuickInfo : 'Consumption posting'
  ConsumptionPosting : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Creation indicator'
  @Common.Heading : 'C'
  @Common.QuickInfo : 'Creation indicator (purchase requisition/schedule lines)'
  PurReqnOrigin : String(1) not null;
  @Common.Label : 'Web Service ID'
  @Common.Heading : 'Technical Key of a Web Service'
  @Common.QuickInfo : 'Technical Key of a Web Service (for Example - a Catalog)'
  PurReqnSSPCatalog : String(20) not null;
  @Common.Label : 'Catalog Item'
  @Common.QuickInfo : 'Catalog Item Id'
  PurReqnSSPCatalogItem : String(40) not null;
  @Common.Label : 'Catalog Item Key'
  PurReqnSSPCrossCatalogItem : Integer not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Blocking Indicator'
  @Common.Heading : 'Block'
  @Common.QuickInfo : 'Purchase Requisition Blocked'
  PurReqnItemBlockingStatus : String(1) not null;
  @Common.Label : 'Blocking Text'
  @Common.QuickInfo : 'Reason for Item Block'
  PurReqnItemBlockingReasonText : String(60) not null;
  @Common.Label : 'Language Key'
  @Common.Heading : 'Language'
  Language : String(2) not null;
  @Common.Label : 'Closed'
  @Common.Heading : 'Cl.'
  @Common.QuickInfo : 'Purchase requisition closed'
  IsClosed : Boolean not null;
  @Core.Computed : true
  @Common.Label : 'Subject to Release'
  @Common.Heading : 'R'
  @Common.QuickInfo : 'Release Not Yet Completely Effected'
  ReleaseIsNotCompleted : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Service Performer'
  @Common.Heading : 'SrvPrfm'
  ServicePerformer : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Product Type Group'
  @Common.Heading : 'Product Type Grp'
  ProductTypeCode : String(2) not null;
  @Common.Label : 'Start Date'
  @Common.QuickInfo : 'Start Date for Period of Performance'
  PerformancePeriodStartDate : Date;
  @Common.Label : 'End Date'
  @Common.QuickInfo : 'End Date for Period of Performance'
  PerformancePeriodEndDate : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Purchase order price'
  @Common.Heading : 'P'
  @Common.QuickInfo : 'Use Requisition Price in Purchase Order'
  PurchaseOrderPriceType : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Supplier Mat. No.'
  @Common.Heading : 'Supplier Material Number'
  @Common.QuickInfo : 'Material Number Used by Supplier'
  SupplierMaterialNumber : String(35) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Batch'
  @Common.QuickInfo : 'Batch Number'
  Batch : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Revision Level'
  MaterialRevisionLevel : String(2) not null;
  @Common.Label : 'Min. Rem. Shelf Life'
  @Common.Heading : 'RShLi'
  @Common.QuickInfo : 'Minimum Remaining Shelf Life'
  MinRemainingShelfLife : Decimal(precision: 4) not null;
  @Measures.ISOCurrency : PurReqnItemCurrency
  ItemNetAmount : Decimal(precision: 15) not null;
  @Common.SAPObjectNodeTypeReference : 'SalesTaxCode'
  @Common.IsUpperCase : true
  @Common.Label : 'Tax Code'
  @Common.Heading : 'Tx'
  @Common.QuickInfo : 'Tax on sales/purchases code'
  TaxCode : String(2) not null;
  @Common.Label : 'Goods Receipt'
  @Common.Heading : 'GR'
  @Common.QuickInfo : 'Goods Receipt Indicator'
  GoodsReceiptIsExpected : Boolean not null;
  @Common.Label : 'Invoice Receipt'
  @Common.Heading : 'IR'
  @Common.QuickInfo : 'Invoice Receipt Indicator'
  InvoiceIsExpected : Boolean not null;
  @Common.Label : 'GR Non-Valuated'
  @Common.Heading : 'N'
  @Common.QuickInfo : 'Goods Receipt, Non-Valuated'
  GoodsReceiptIsNonValuated : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Req. Tracking Number'
  @Common.Heading : 'TrackingNo'
  @Common.QuickInfo : 'Requirement Tracking Number'
  RequirementTracking : String(10) not null;
  @Common.SAPObjectNodeTypeReference : 'MRPController'
  @Common.IsUpperCase : true
  @Common.Label : 'MRP Controller'
  @Common.Heading : 'MRPCn'
  MRPController : String(3) not null;
  @Common.Label : '"Fixed" indicator'
  @Common.Heading : 'Fx'
  @Common.QuickInfo : 'Purchase requisition is fixed'
  PurchaseRequisitionIsFixed : Boolean not null;
  @odata.Precision : 7
  @odata.Type : 'Edm.DateTimeOffset'
  @Core.Computed : true
  @Common.Label : 'Time Stamp'
  @Common.QuickInfo : 'UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)'
  LastChangeDateTime : Timestamp;
  @Core.Computed : true
  @Common.IsDigitSequence : true
  @Common.Label : 'Reservation'
  @Common.Heading : 'Reserv.no.'
  @Common.QuickInfo : 'Number of reservation/dependent requirements'
  Reservation : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Address'
  @Common.QuickInfo : 'Number of delivery address'
  ItemDeliveryAddressID : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Customer'
  PurReqnReceivingCustomer : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Supplier'
  @Common.QuickInfo : 'Supplier to be Supplied/Who is to Receive Delivery'
  Subcontractor : String(10) not null;
  @Measures.ISOCurrency : PurReqnItemCurrency
  @Common.Label : 'Expected Value'
  @Common.QuickInfo : 'Expected Value of Overall Limit'
  ExpectedOverallLimitAmount : Decimal(precision: 13) not null;
  @Measures.ISOCurrency : PurReqnItemCurrency
  @Common.Label : 'Overall Limit'
  OverallLimitAmount : Decimal(precision: 13) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Contract For Limit'
  @Common.QuickInfo : 'Purchase Contract for Enhanced Limit'
  PurContractForOverallLimit : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'External Document'
  @Common.Heading : 'Document Number of External Document'
  @Common.QuickInfo : 'Document Number of External Document'
  PurReqnExternalReference : String(35) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'External Item'
  @Common.Heading : 'Item Number of External Document'
  @Common.QuickInfo : 'Item Number of External Document'
  PurReqnItemExternalReference : String(10) not null;
  @Common.Label : 'External System ID'
  PurReqnExternalSystemId : String(60) not null;
  @Common.Label : 'Connected System ID'
  ProcurementHubSourceSystem : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'BP ID of Author'
  SSPAuthorExternalBPIdnNumber : String(60) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Requestor UserID'
  @Common.Heading : 'Requestor User ID'
  @Common.QuickInfo : 'Requestor User ID'
  SSPReqrUserId : String(12) not null;
  SAP__Messages : many PURCHASEREQUISITION.SAP__Message not null;
  @Common.Composition : true
  _PurchaseReqnAcctAssgmt : Composition of many PURCHASEREQUISITION.PurchaseReqnAcctAssgmt {  };
  @Common.Composition : true
  _PurchaseReqnDelivAddress : Composition of one PURCHASEREQUISITION.PurchaseReqnDelivAddress {  };
  @Common.Composition : true
  _PurchaseReqnItemText : Composition of many PURCHASEREQUISITION.PurchaseReqnItemText {  };
  _PurReqn : Association to one PURCHASEREQUISITION.PurchaseReqn {  };
} actions {
  action DiscardPurReqItemFromPurg(
    _it : $self not null
  );
  action EnablePurReqItemForPurchasing(
    _it : $self not null
  );
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Item Notes'
@Common.SemanticKey : [
  'Language',
  'TextObjectType',
  'TextObjectKey',
  'TextObjectCategory',
  'PurchaseRequisitionItem',
  'PurchaseRequisition'
]
@Common.Messages : SAP__Messages
@Capabilities.NavigationRestrictions.RestrictedProperties : [
  {
    NavigationProperty: _PurchaseRequisitionItem,
    SortRestrictions: { Sortable: false },
    FilterRestrictions: { Filterable: false }
  },
  {
    NavigationProperty: _PurReqn,
    SortRestrictions: { Sortable: false },
    FilterRestrictions: { Filterable: false }
  }
]
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.FilterRestrictions.Filterable : true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: PlainLongText,
    AllowedExpressions: 'SearchExpression'
  }
]
@Capabilities.SortRestrictions.NonSortableProperties : [ 'PlainLongText' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity PURCHASEREQUISITION.PurchaseReqnItemText {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Purchase Requisition'
  @Common.Heading : 'Purch.Req.'
  @Common.QuickInfo : 'Purchase Requisition Number'
  key PurchaseRequisition : String(10) not null;
  @Core.Immutable : true
  @Common.IsDigitSequence : true
  @Common.Label : 'Item of requisition'
  @Common.Heading : 'Item'
  @Common.QuickInfo : 'Item number of purchase requisition'
  key PurchaseRequisitionItem : String(5) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Text object'
  @Common.Heading : 'Object'
  @Common.QuickInfo : 'Texts: application object'
  key TextObjectCategory : String(10) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Text Name'
  @Common.Heading : 'Text'
  @Common.QuickInfo : 'Name'
  key TextObjectKey : String(70) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Text ID'
  @Common.Heading : 'ID'
  key TextObjectType : String(4) not null;
  @Core.Immutable : true
  @Common.Label : 'Language Key'
  @Common.Heading : 'Language'
  key Language : String(2) not null;
  @Common.Label : 'Long Text'
  PlainLongText : LargeString not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Fixing'
  @Common.Heading : 'Fix'
  @Common.QuickInfo : '"Fixed" Indicator for Texts'
  FixedIndicator : String(1) not null;
  SAP__Messages : many PURCHASEREQUISITION.SAP__Message not null;
  _PurchaseRequisitionItem : Association to one PURCHASEREQUISITION.PurchaseReqnItem {  };
  _PurReqn : Association to one PURCHASEREQUISITION.PurchaseReqn {  };
};

