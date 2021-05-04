package dryRun;

public class Constants {

	public Constants( ) {
		
		
		final int MAX_UPPER = 40;
		final int MIN_LOWER = 16;
		int age=45;
		
		
		//constants are static so should be accessed through the class directly rather than an instance of the class. 
		
		if (age>MAX_UPPER) 
		{
			throw new IllegalArgumentException ("Sorry, this is an invalid age selection");
		
		}
	}

}
