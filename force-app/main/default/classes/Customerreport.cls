public with sharing class Customerreport
{    
    string recId;
    public decimal de{get;set;}
    public Customerreport(ApexPages.StandardController controller)
     {
         Accountrecords = [select id, Name, Industry,Description, SAP_Customer_ID__c from Account  where id =: controller.getRecord().Id];
         recId = controller.getRecord().Id;                                
         getResults(); 
          
     } 
    
    public void getResults()
    {
    
    opprecords = [select Name,id, Price__c, StageName,Description,Probability,TotalOpportunityQuantity,Total_Price__c FROM Opportunity WHERE Account.Id=:recId];
    de=0;
    for(Opportunity op : opprecords)
    {
      de= de+op.total_price__c;  
    
    }
    }
     public Account Accountrecords{get;set;}
     public List<Opportunity> opprecords{get;set;}
    
    
     public pageReference generatePdfpage()
    {
      getResults();
       return Page.Account_pdf;
    }
    }