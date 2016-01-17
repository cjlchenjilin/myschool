package edu.cjl.myschool.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBHelper {
	private static final String URL = "jdbc:mariadb://localhost:3306/myschool";
	private static final String USERNAME = "root";
	private static final String PWD = "root";

	static {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static Connection getConnection() throws SQLException {
		Connection con = DriverManager.getConnection(URL, USERNAME, PWD);
		return con;
	}
}
