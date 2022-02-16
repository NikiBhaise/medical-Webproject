package com.db;

import java.sql.*;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection createDbConnection() {
		Connection c=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			c=DriverManager.getConnection("jdbc:mysql://@localhost:3306/msmjsp?autoReconnect=true&useSSL=false","root","Nikita@31#jan");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return c;
		}

}
