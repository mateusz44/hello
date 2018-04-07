package javastart.jspexample.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class MysqlConnection {
	MysqlConnection(){
	try {
        String connectionURL = "jdbc:mysql://localhost/3306/db";
        Connection connection = null; 
        Class.forName("com.mysql.jdbc.Driver").newInstance(); 
        connection = DriverManager.getConnection(connectionURL, "root", "root");

        if(!connection.isClosed())
             System.out.println("Successfully connected to " + "MySQL server using TCP/IP...");
        connection.close();
    }catch(Exception ex){
        System.out.println("Unable to connect to database"+ex);
    }
}}
