public class AddDeliveryPerson {
    @future(callout=true)
    public static void create(String Title,String LastName,String FirstName){

            System.debug(Title);
        	if(Title=='Delivery Person'){
        		upsert(new Delivery_Person__c(Name=FirstName+' '+LastName)); 
        	}
       
    }
}