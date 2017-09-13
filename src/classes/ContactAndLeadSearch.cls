public with sharing class ContactAndLeadSearch {
	public static List<List< SObject>> searchContactsAndLeads(String searchParameter){
		
		List<List<sObject>> searchList = [FIND :searchParameter IN ALL FIELDS 
                   RETURNING Lead(FirstName,LastName),Contact(FirstName,LastName,Department)];
	
		return searchList;	
	}
    
}