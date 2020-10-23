trigger CourseSelection_Update_total_students on Course_Selection__c (before insert) {
    Set<Id> setofAvailablecourseIds = new Set<Id>();

   
    
    for(Course_Selection__c cs : Trigger.New){
        setofAvailablecourseIds.add(cs.Available_Course__c);
    }
    
    List<Course_Selection__c> Childrecords= [SELECT Id, Available_Course__c FROM Course_Selection__c  WHERE Available_Course__c IN: setofAvailablecourseIds  ];
    
        List<Available_Course__c> ListofParent  = [SELECT Id FROM Available_Course__c WHERE Id IN : setofAvailablecourseIds  ];
    
    
     List<Available_Course__c> Updateparentrecord = new List<Available_Course__c>();
    
    
        for(Available_Course__c ac: ListofParent ){
            ac.Total_No_of_Students__c = Childrecords.size()+1;
            Updateparentrecord.add(ac);
        
        
    }
    
    update Updateparentrecord ;
}