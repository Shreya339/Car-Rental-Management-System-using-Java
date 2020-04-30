package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginService
{
    public static boolean validateLogin(String username, String password)
    {
        boolean success = false;
        
        try
        {
            Connection conn = DBConnection.getConnection();
            
            String query = "SELECT * FROM adminInfo WHERE username=? AND password=?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            
            String dbUsername = "", dbPassword = "";
            while(rs.next())
            {
                dbUsername = rs.getString("username");
                dbPassword = rs.getString("password");
            }
            
            if(username.equals(dbUsername) && password.equals(dbPassword))
                success = true;
            else
                success = false;
        } 
        catch (Exception e)
        {
            System.out.println(e);
        }
        return success;
    }
    
    public static boolean validateLoginCustomer(String username, String password)
    {
        boolean success = false;
        
        try
        {
            Connection conn = DBConnection.getConnection();
            
            String query = "SELECT * FROM clientInfo WHERE username=? AND password=?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, username);
            stmt.setString(2, password);
            
            ResultSet rs = stmt.executeQuery();
            
            String dbUsername = "", dbPassword = "";
            while(rs.next())
            {
                dbUsername = rs.getString("username");
                dbPassword = rs.getString("password");
            }
            
            if(username.equals(dbUsername) && password.equals(dbPassword))
                success = true;
            else
                success = false;
        } 
        catch (Exception e)
        {
            System.out.println(e);
        }
        return success;
    }
}
