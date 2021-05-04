/**
 * 
 */
package dryRun;

/**
 * @author Curtis Martin
 *
 */
public class Engineer extends Person {
	
	private String discipline;
	

	/**
	 * 
	 */
	public Engineer() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param name
	 * @param height
	 */
	//discipline var added to constructor (not auto-generated from super)
	public Engineer(String name, int height, String dicipline) {
		super(name, height);
		this.discipline=discipline;
		//this works with no business rule 
		
		/* business rule would need 
		 * this.setdiscipline(discipline);
		 */
	}

	/**
	 * @return the dicipline
	 */
	public String getDicipline() {
		return discipline;
	}

	/**
	 * @param dicipline the dicipline to set
	 */
	public void setDicipline(String dicipline) {
		this.discipline = dicipline;
	}

	
}
