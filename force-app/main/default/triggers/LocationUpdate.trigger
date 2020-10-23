trigger LocationUpdate on Positions__c (before insert,after update) {
   
    for(Positions__c p: Trigger.new){
        if (p.Hire_By__c==date.Today()){
            p.Location__c = 'San Francisco,CA';
        }     
            
        
    }
}