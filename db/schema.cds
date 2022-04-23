// using { managed, cuid } from '@sap/cds/common';

namespace my.dataModel;

entity Escalations {
    key ID: UUID;
    Description     : String (80);
    Material: String(30);
    ExpectedDate: Date;
    Comments: Composition of many Comments on Comments.escalation = $self;
};

entity Comments {
    key ID: UUID;
    comment: String;
    escalation: Association to Escalations;
}

