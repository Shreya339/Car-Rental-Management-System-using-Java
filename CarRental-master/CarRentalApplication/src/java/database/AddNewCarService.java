package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import model.Vehicles;

public class AddNewCarService
{
    public static boolean addVehicles(Vehicles vehicles)
    {
        boolean success = false;
        int executedValue = 0;
        
        try
        {
            Connection conn = DBConnection.getConnection();
            
            String query = "INSERT INTO Vehicles (make, model, year, transmission, ratepermile, rateperday, taken)"
                    + "VALUES (?,?,?,?,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, vehicles.getMake());
            stmt.setString(2, vehicles.getModel());
            stmt.setString(3, vehicles.getYear());
            stmt.setString(4, vehicles.getTransimssion());
            stmt.setString(5, vehicles.getRatePerMile());
            stmt.setString(6, vehicles.getRatePerDay());
            stmt.setString(7, "available");
            
            executedValue = stmt.executeUpdate();
            
            if(executedValue > 0)
                success = true;
            else
                success= false;
        } 
        catch (Exception e)
        {   
            System.out.println(e);
        }
        
        return success;
    }
}
