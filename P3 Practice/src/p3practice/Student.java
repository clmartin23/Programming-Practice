/**
 * 
 */
package p3practice;

/**
 * @author Curtis Martin
 *
 */
public class Student {

	/*
	 * instance vars
	 */
	private int ID;
	private String name;
	private int p1;
	private int p2;
	private int p3;

	/*
	 * Constructor with args
	 */
	public Student(int iD, String name, int p1, int p2, int p3) {
		ID = iD;
		this.name = name;
		this.p1 = p1;
		this.p2 = p2;
		this.p3 = p3;
	}

	/*
	 * Default constructor
	 */
	public Student() {

	}

	/**
	 * @return the iD
	 */
	public int getID() {
		return ID;
	}

	/**
	 * @param iD the iD to set
	 */
	public void setID(int iD) {
		ID = iD;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the p1
	 */
	public int getP1() {
		return p1;
	}

	/**
	 * @param p1 the p1 to set
	 */
	public void setP1(int p1) {
		this.p1 = p1;
	}

	/**
	 * @return the p2
	 */
	public int getP2() {
		return p2;
	}

	/**
	 * @param p2 the p2 to set
	 */
	public void setP2(int p2) {
		this.p2 = p2;
	}

	/**
	 * @return the p3
	 */
	public int getP3() {
		return p3;
	}

	/**
	 * @param p3 the p3 to set
	 */
	public void setP3(int p3) {
		this.p3 = p3;
	}

	public void displayAll() {
		System.out.println("ID    /t:" + this.ID);
		System.out.println("Name  /t:" + this.name);
		System.out.println("P1    /t:" + this.p1);
		System.out.println("P2    /t:" + this.p2);
		System.out.println("P3    /t:" + this.p3);
	}

}
