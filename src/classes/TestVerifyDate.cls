@isTest
public class TestVerifyDate {
    @isTest static void CheckDatesDatewithin30DaysTest(){
        System.assertEquals(Date.newInstance(1960, 3, 17), 
                            VerifyDate.CheckDates (Date.newInstance(1960, 2, 17),Date.newInstance(1960, 3, 17))
                            );
    }
    @isTest static void CheckDatesDateNotwithin30DaysTest(){
        System.assertEquals(Date.newInstance(1960, 3, 31), 
                            VerifyDate.CheckDates (Date.newInstance(1960, 3, 17),Date.newInstance(1960, 5, 17))
                            );
    }
        
}