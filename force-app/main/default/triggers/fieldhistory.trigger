trigger fieldhistory on Opportunity (before update, before delete) {

List<Field_History__c> fieldhist = new List<Field_History__c>();
if(trigger.Isupdate){
for(Opportunity o : trigger.new){

  if(o.Description != trigger.oldmap.get(o.Id).Description){
   Field_History__c fh = new Field_History__c();
   fh.Name= o.name;
    fh.New_Value__c = o.Description;
    fh.Opportunity__c=o.Id;
    fh.Old_Record__c= trigger.oldmap.get(o.Id).Description;
    fieldhist.add(fh);
   }
  
  }
 }
  
  else
  {
  for(Opportunity o : trigger.old){

 
   Field_History__c fh = new Field_History__c();
   fh.Name= o.name;
    fh.New_Value__c = o.Description;
    fh.Opportunity__c=o.Id;
    fh.Old_Record__c= trigger.oldmap.get(o.Id).Description;
    fieldhist.add(fh);
   
  }
  }
  insert fieldhist;
  }