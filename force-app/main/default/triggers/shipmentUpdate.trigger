trigger shipmentUpdate on Tracking__c (before delete) {
    list<id> TrackingIds=new list<id>();
	for(Tracking__c trackingVar:trigger.old)
    {
        TrackingIds.add(trackingVar.id);
    }  
    List<Shipment__c> shipList = [select id from Shipment__c where Tracking__c in :TrackingIds];
    delete shipList;
}