package de.dhbw.webengineering.addressbook;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class AddressBookConnectionFactory {
	
	public static String host = "localhost";
	public static String user = "max";
	public static String password = "max";
	
	public static Connection createConnection() throws InstantiationException, IllegalAccessException, 
													   ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager
				.getConnection("jdbc:mysql://"+host+"/addressbook?user="+user+"&password="+password);
		return conn;
	}

}
