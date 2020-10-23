public class AccountAndContacts{
   
   //CHanging thisjnknknklnkknklnlm
   public Account accRecords{get;set;}
   public Contact contRecords{get;set;}
   public AccountAndContacts()
   {
      accRecords = new Account();
      contRecords = new Contact();
      
      contactRecords = new List<Contact>();
   }
   
   public List<Contact> contactRecords{get;set;}
   
   
   public void addContactRecord()
   {
      contactRecords.add(contRecords);
      contRecords = new Contact();
   }
   public pageReference saveRecords()
   {
      insert accRecords;
      for(Contact c : contactRecords)
      {
         c.AccountId = accRecords.Id;
      }
      insert contactRecords;
      return new pageReference('/'+accRecords.Id);
   }
   public pageReference cancelRecords()
   {
      return new pageReference('/001');
   }
   
   
   
   /*public Account accRecords = new Account();
   public Account getAccRecords()
   {
     return accRecords;
   }*/

}