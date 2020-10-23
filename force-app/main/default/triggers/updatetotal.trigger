trigger updatetotal on Line_Item__c (after insert, after update) {
List<Line_Item__c> lnt = new List<Line_Item__c>();
    for(Line_Item__c ln: Trigger.new){
       
        Integer Line=[SELECT COUNT() from Line_Item__c ];
         Invoice__c i= new Invoice__c();
        i.total_items__c=Line;
        
        update i;
    }
   
}