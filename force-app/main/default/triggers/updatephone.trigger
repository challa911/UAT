trigger updatephone on Contact ( before insert, before update) {
Set<Id> setofIds= new Set<Id>();
List<Account> cont = new List<Account>();
Map<Id,String> aggr= new Map<Id,String>() ;
for(Contact c: Trigger.new){
setofIds.add(c.AccountId);
}
  Cont = [Select Id, Phone From Account Where Id IN: setofIds];
        if(Cont != null && Cont.size() > 0) {
            for(Account contct : Cont) {
                aggr.put(contct.Id, contct.Phone);
            }
        }
for(Contact c: Trigger.new){

{
if(c.AccountId!=null){
c.Phone=aggr.get(c.AccountId);
}
}

}
}