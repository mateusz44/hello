package javastart.jspexample.model;
 
public class User {
 
    private String name;
 
    private String password;
  
    public static String hello(String str){
    	return str.toLowerCase();
    }
    public String getNamer() {
		return namer;
	}

	public void setNamer(String namer) {
		this.namer = namer;
	}

	public String getPasswordr() {
		return passwordr;
	}

	public void setPasswordr(String passwordr) {
		this.passwordr = passwordr;
	}

	private String namer;
    
    private String passwordr;
 
    public String getName() {
        return name;
    }
 
    public void setName(String name) {
        this.name = name;
    }
 
    public String getPassword() {
        return password;
    }
 
    public void setPassword(String password) {
        this.password = password;
    }

 
}