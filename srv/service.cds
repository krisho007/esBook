using { my.dataModel as db } from '../db/schema';

service EscalationManagementService @(path: 'ems') {
    entity Escalations as projection on db.Escalations;
    
    // Function returing a predefined type
    action closeEscalation(EscalationId: String) returns String;

    // Action returning a single instance of an entity
    function getLatestEscalation() returns Escalations;

    // Action returning a collection of instances of an entity
    function getTopEscalations() returns array of Escalations;
    
}