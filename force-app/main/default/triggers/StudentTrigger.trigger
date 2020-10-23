trigger StudentTrigger on Students__c (before insert) {

for(Students__c st : Trigger.new){
 if(st.Student_Email__c == null){
 
 st.Student_Email__c=st.Name+'@csu.edu';
 
 
 }
 

}

}