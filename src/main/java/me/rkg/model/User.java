package me.rkg.model;


/**
 *
 * @author ravi
 */
public class User {
    String name;
    String url;

    public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public User() {
        
    }
    
    public void createDummy(){
    	this.name = "Ravi Kumar Gupta";
    	this.url = "http://techdc.blogspot.com";
    }


}