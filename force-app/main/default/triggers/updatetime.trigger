trigger updatetime on Invoice__c (before insert,before update) {
    Set<Id> Invoices = new  Set<Id>();
     List<Invoice__c> inv = new List <Invoice__c>();
    Map<string,Datetime> sri =new Map<string,datetime>();
    if((trigger.isInsert||trigger.isupdate)&& trigger.isbefore){
 
        for(Invoice__c a: Trigger.new){
          a.time__c  = System.now();
              
               
       
          }  
          
      }
  
   
}