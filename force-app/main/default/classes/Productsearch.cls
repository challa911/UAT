public with sharing class Productsearch {
String recId;
Public List<PricebookEntry> getproducts{get;set;}
public Productsearch(ApexPages.StandardController controller) {
         
         Opportunity opp = [select id, Name from Opportunity  where id =: controller.getRecord().Id];
         recId = controller.getRecord().Id; 
        
         productname='';
         pb = [SELECT ProductCode, Product2Id, UnitPrice FROM PricebookEntry];
        
       cb = new List<checkbox>();
       
       for(PricebookEntry pe: pb) {
       cb.add(new checkbox(false, pe));
       
         }
         }
     
     public string productname{get;set;}
     
     public List<PricebookEntry> pb{get;set;}
     public Opportunity opp{get;set;}
      
       
     
     public class checkbox{
     
       public Boolean s{get;set;}
       public PricebookEntry t{get;set;}
      
      public checkbox(Boolean s,PriceBookEntry t){
      
      this.s=s;
      this.t=t;
      }
      
      
     }
     public List<checkbox> cb{get;set;}
     public List<OpportunityLineItem> oprod{get;set;}
     public void OLI(){
      oprod = [SELECT Product2Id,UnitPrice,Quantity FROM OpportunityLineItem];
     }
     
     public void  getResult(){
     
     
     string S= 'SELECT ProductCode, Product2Id, UnitPrice FROM PricebookEntry WHERE Product2.Name like \'%'+ProductName+'%\'';
     pb = Database.query(S);
     
     
     cb = new List<checkbox>();
       
       for(PricebookEntry pe: pb) {
       cb.add(new checkbox(false, pe));
       
         }
        
     }
     
     public PageReference addProducts(){
       
   
     
      OpportunityLineItem oprod = new OpportunityLineItem();
      {
     
      for(PricebookEntry p2 : pb){
     
         oprod.OpportunityId = opp.Id;
         
         
         oprod.UnitPrice = P2.UnitPrice;
         oprod.Quantity=1;
        }
      }
      insert oprod;
     return null;
     
    }
    // added by rama
/*
//this method used for save 
public void save(){
list<contact> lstcontact=new list<contact>(); // list of contacts which contacts are selected


for(checkbox wapper:cb ){
    
// check this record is selected or not
    if(wapper.isselected){
        lstcontact.add(wapper.objcontact);// selected records are add to list
    }
}
// add the account id in contact record
 for(contact obj:lstcontact){

    obj.AccountId=    // accountid

}
update lstcontact;// save account id to contact 


//wapper class


public class checkbox{
     
       public Boolean isselected{get;set;}
       public contact objcontact{get;set;}
      
      public checkbox(Boolean s,contact  t){
      
      this.isselected=s;
      this.objcontact=t;
      }
}
*/
    }