package database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection 
{
	private static String url = "jdbc:mysql://localhost:3306/CarRentalApplication";
	private static String username = "root";
	private static String password = "Nasim8055";

	private static Connection conn;
        
	private DBConnection()
	{

	}

	public static Connection getConnection()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			DBConnection.conn = DriverManager.getConnection(DBConnection.url, DBConnection.username, DBConnection.password);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}

		return conn;
	}

}