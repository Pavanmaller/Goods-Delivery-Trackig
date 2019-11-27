trigger DeliveryPersonCreate on User (after insert) {
	
    List<Delivery_Person__c> dpList = new List<Delivery_Person__c>();
    for(User u : Trigger.New){ 
    	AddDeliveryPerson.create(u.Title,u.LastName,u.FirstName);
    }
    
}