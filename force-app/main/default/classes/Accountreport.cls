public with sharing class Accountreport {
String recId;
Public List<Contact> getcontacts{get;set;}
public Accountreport(ApexPages.StandardController controller) {
         
         Account acc = [select id, Name,SAP_Customer_ID__c,Phone from Account  where id =: controller.getRecord().Id];
         recId = controller.getRecord().Id; 
         }
         
         List<Contact> conts = new List<Contact>();
public void  getcontacts()
{
Contact cont=[SELECT Name, Phone, Fax FROM Contact WHERE AccountId =: recId];
conts.add(cont);
}
}