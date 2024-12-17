namespace com.siemens.adp;

using {
    cuid,
    managed
} from '@sap/cds/common';

// Queue: dev.gf.s4hana.salesorder.data
// Topic: to many association [ Topic: dev/gf/s4hana/salesorder/header/data/created/>, dev/gf/s4hana/salesorder/header/data/changed/> ]
entity Queues : cuid {
    queue  : String @title: 'Queue';
    topics : Composition of many Topics
                 on topics.parent = $self;
}


entity Topics : cuid {
    parent : Association to Queues;
    topic  : String @title: 'Topic';
}

@assrt.unique: {keys: [
    rootTopic,
    filter,
    level
], }
entity TopicFilters : cuid {
    rootTopic : String;
    filter    : String;
    level     : Integer
}
