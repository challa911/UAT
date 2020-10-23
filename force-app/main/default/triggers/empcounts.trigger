trigger empcounts on Company_Branch__c(before update){

Set<Id> setofid = new Set<Id>();
Map<ID,Integer> counts = new Map<ID,Integer>();
for(Company_Branch__c cmp:Trigger.new){
if(cmp.Id!=null){
setofid.add(cmp.id);
}
}

AggregateResult[] Aggregate = [SELECT branch__r.Id ids , COUNT(branch__r.Name) cnt FROM employee__c WHERE branch__r.Id IN:setofid AND branch__r.Id!=null GROUP BY branch__r.Id];
for(AggregateResult cbp : Aggregate){
    counts.put((ID)cbp.get('ids'),(Integer)cbp.get('cnt'));
    }


  for(Company_Branch__c a:Trigger.new){
  if(counts.containsKey(a.Id)){
a.count_employee__c = counts.get(a.Id);

}
 

}


}