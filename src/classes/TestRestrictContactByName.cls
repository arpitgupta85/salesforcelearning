@isTest
public class TestRestrictContactByName {
      @isTest static void TestNewContactInsertFailure() {
    List<Contact> c = RandomContactFactory.generateRandomContacts(1,'INVALIDNAME');
    
     // Perform test
        Test.startTest();
        Database.SaveResult result= Database.insert(c[0], false);
        Test.stopTest();
          system.debug(result);
		
      // Verify 
        // In this case the deletion should have been stopped by the trigger,
        // so verify that we got back an error.
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML',
                             result.getErrors()[0].getMessage());

      }
    @isTest static void TestNewContactInsertSuccess() {
    List<Contact> c = RandomContactFactory.generateRandomContacts(1,'lastName');
    
     // Perform test
        Test.startTest();
        Database.SaveResult re= Database.insert(c[0], false);
        Test.stopTest();
		
      // Verify 
        // In this case the deletion should have been stopped by the trigger,
        // so verify that we got back an error.
        System.assertEquals(true,re.isSuccess());

      }
}