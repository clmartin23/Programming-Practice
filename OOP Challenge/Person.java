package dryRun;

public abstract class Person {
    private String name;
    private int height;
    
    public Person() {
        // TODO Auto-generated constructor stub
    }
    public Person(String name, int height) {
        this.setName(name);
        this.setHeight(height);
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
     * @return the height
     */
    public int getHeight() {
        return height;
    }
    /**
     * @param height the height to set
     */
    public void setHeight(int height) throws IllegalArgumentException  {
    	if (height >1 && height <=20) {
    		this.height=height;
    	}else {
    	}
    	throw new IllegalArgumentException("Height entered is outside allowed range");
    }
}