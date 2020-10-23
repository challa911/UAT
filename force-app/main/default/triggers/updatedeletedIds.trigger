trigger updatedeletedIds on Company_Branch__c (before insert, before update, before delete) {

if(trigger.Isdelete && trigger.Isbefore){
Compbranchdel.deletedids(trigger.old);

}
}