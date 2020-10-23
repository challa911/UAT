trigger HiringManager on Positions__c (before insert,after update) {
    for(Positions__c p : Trigger.new){
        if(p.Hiring_Manager__c==NULL){
            p.Function_Area__c='Warehousing';
            
            
            
        }
    }
}