public class ContactSearch {
	public static List<Contact> searchForContacts(String lastname_i, String MAILINGPOSTALCODE_i)
    {
		try {
			
			List<Contact> cont= [Select Name FROM Contact where LastName LIKE :lastname_i AND MAILINGPOSTALCODE LIKE :MAILINGPOSTALCODE_i];
			system.debug(cont);
			return cont;
			
		}catch (DmlException e) {
				 System.debug('A DML exception has occurred: ' +
			                e.getMessage());
			return null;
		}
    }
}