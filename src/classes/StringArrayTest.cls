public class StringArrayTest {

	public static List<String> generateStringArray(Integer n)
    {
        List<String> str = new List<String>();
            for(Integer i=0; i<n; i++)
            {
                str.add('Test '+ i);
                system.debug('Test ' + i);
            }
        system.debug(str);
        return str;
        

    }
}