package javastart.jspexample.model;

import java.util.HashMap;

public class DataSource {
	 
    private HashMap<String, String> userSource;
 
    public DataSource() {
    	MysqlConnection mysql = new MysqlConnection();
        userSource = new HashMap<String, String>();
        generateTestData();
    }
 
    public String getUser(User user){
    	return userSource.get(user.getPasswordr());
    }
    public void register(String name, String password) {
        System.out.println(name+":uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu "+password);
        userSource.put(name, password);
    }
 
    public boolean userExists(User user) {
        String passwordFromSource = userSource.get(user.getName());
        if(passwordFromSource != null) {
            return user.getPassword().equals(passwordFromSource);
        }else
            return false;
    }
 
    private void generateTestData() {
        userSource.put("admin", "test");
        userSource.put("user", "passUser");
    }
}