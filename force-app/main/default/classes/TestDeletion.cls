@istest
public class TestDeletion {
 static testmethod void deleteMer() {
     
     Merchandise__c ma=new Merchandise__c();
        ma.Name='sri';
     ma.Price__c=23;
     ma.Quantity__c=2;
     insert ma;

            try{
                delete ma;
            }
     catch(Exception e) {
                system.assert(e.getMessage().contains('Cant delete Merchandise'));
            }
        }
    }