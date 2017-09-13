trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> listTasks= new List<Task>();
    for (Opportunity opp : Trigger.New){
        if (opp.StageName =='Closed Won'){
 			listTasks.add(new Task (Subject='Follow Up Test Task', WhatId=opp.Id));
        }
    }
    if (listTasks.size() > 0) 
        insert listTasks;
}