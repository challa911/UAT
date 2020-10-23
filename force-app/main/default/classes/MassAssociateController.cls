public class MassAssociateController {
string recId;
public list<Contact>equip{get; set;}
public MassAssociateController(ApexPages.StandardController controller) {
        equip = [SELECT Name, Email,check__c FROM Contact WHERE check__c = false LIMIT 2];
   cb = new List<checkbox>();
     for(Contact pe: equip) {
       cb.add(new checkbox(false, pe));
       recId = controller.getRecord().Id; 
         }
   
    }
    
     public class checkbox{
     
       public Boolean s{get;set;}
       public Contact t {get;set;}
      
      public checkbox(Boolean s,Contact t){
      
      this.s=s;
      this.t=t;
      }
    }
    
     public List<checkbox> cb{get;set;}
     public void save(){        
 List<Contact> lstEqu = new  List<Contact>();
 
 //for(checkbox wapper:cb ){
    
// check this record is selected or not
 //   if(wapper.s){
  //      lstEqu.add(wapper.t);// selected records are add to list
        
  //  }
//}
for(Contact obj:lstEqu){
  
      if(obj.check__c){
    obj.AccountId= recId;
    lstEqu.add(obj);
}
}
update lstEqu ;
 
    }
   }