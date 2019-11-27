trigger trackingUpdate on Shipment__c (after insert,before update) {
    List<Tracking__c> trackList = new List<Tracking__c>();
    for(Shipment__c s : Trigger.New){
        Id i=s.Tracking__c;
        trackList.add(new Tracking__c(Id=i,Shipment_Status__c=s.Stage__c));  
    }
    if (trackList.size() > 0) {
        upsert trackList;
    }
}