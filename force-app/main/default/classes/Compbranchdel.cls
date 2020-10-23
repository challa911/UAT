public class Compbranchdel{
public static void deletedids(Company_Branch__c[] comp){
set<id> setofids = new set<id>();
List<Changelog__c> chgelist = new List<Changelog__c>();
for(Company_Branch__c compbr: comp)
{
    Changelog__c logs = new Changelog__c();
       logs.Deleted_Ids__c = compbr.Id;
       chgelist.add(logs );
}
  insert chgelist;
  }
  }