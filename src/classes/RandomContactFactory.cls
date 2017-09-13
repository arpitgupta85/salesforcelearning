public class RandomContactFactory {
    
    public static List<Contact> generateRandomContacts(Integer n, String str){
        List<Contact> listcontact = new List<Contact>();
        for (integer i=1;i<=n;i++){
            listcontact.add(new Contact(FirstName='Test '+String.valueOf(i), LastName =str));
        }
        return (listcontact);
    }

}