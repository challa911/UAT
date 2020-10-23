public with sharing class Accountlist {
List<Account> acc = [SELECT Name, Phone, (SELECT Phone  FROM Contacts) FROM Account];
public List<Account> getacc(){
return acc;


}
}