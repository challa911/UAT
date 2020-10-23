@RestResource(urlMapping='/api/User/*')
global with sharing class UpdateUserPassword{
@HttpPost
global static String UpdatePassword(String UserName,String Password) 
    {
      List<user> lstUser = [Select id FROM User where UserName=:UserName];
        if(!lstUser.isEmpty()){
            system.setPassword(lstUser[0].Id, password);
            return 'Password sucessfully update';
        }
        return 'user is not found with this username';
    }
}