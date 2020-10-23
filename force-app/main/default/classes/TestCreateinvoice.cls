@IsTest
public class TestCreateinvoice {
    static testMethod void Createinvoice(){
        Merchandise__c m= new Merchandise__c();
        Invoice__c i = new Invoice__c();
        m.Name= 'Lappy';
        m.Owner__c='005o0000000EV0j';
            m.Last_Modified_By__c ='005o0000000EV0j';
            m.Created_By__c='005o0000000EV0j';
            m.Price__c=100;
            m.Quantity__c=2;
        insert m;
        
        System.assertEquals('Open',i.Status__c);
            
        
        
    }

}