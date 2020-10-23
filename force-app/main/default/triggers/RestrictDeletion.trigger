trigger RestrictDeletion on Merchandise__c (before delete) {
    Map<Id,Merchandise__c> m=new Map<Id,Merchandise__c>();
    for(Merchandise__c ma:Trigger.old){
        Trigger.oldMap.get(ma.Id).addError('Cant delete Merchandise');
        
      
    }
    
}