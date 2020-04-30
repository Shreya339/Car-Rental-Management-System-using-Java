package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Vehicles;

public class InventoryService
{
    public static List getVehicleList()
    {
         List vehiclesList = new ArrayList<>();

        try
        {
            Connection conn = DBConnection.getConnection();
            String q = "SELECT * FROM Vehicles";
            PreparedStatement stmt = conn.prepareStatement(q);
            ResultSet rs = stmt.executeQuery();

            while (rs.next())
            {
                Vehicles vehicles = new Vehicles();
                vehicles.setId(rs.getInt("id"));
                vehicles.setMake(rs.getString("make"));
                vehicles.setModel(rs.getString("model"));
                vehicles.setYear(rs.getString("year"));
                vehicles.setTransimssion(rs.getString("transmission"));
                vehicles.setRatePerMile(rs.getString("ratepermile"));
                vehicles.setRatePerDay(rs.getString("rateperday"));
                vehicles.setTaken(rs.getString("taken"));

                vehiclesList.add(vehicles);
            }

        } catch (Exception e)
        {
            System.out.println(e);
        }
        return vehiclesList;
    }
    
    public static int deleteVehicle(int id)
    {
        int result = 0;
        
        try
        {
            Connection conn = DBConnection.getConnection();
            String query = "DELETE FROM Vehicles WHERE id=?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setInt(1, id);
            result = stmt.executeUpdate();
            
        } 
        catch (Exception e)
        {
            System.out.println(e);
        }
        return result;
    }
    
    public static int updateVehicleInfo(Vehicles vehicles)
    {
        int result = 0;
        try
        {
            Connection conn = DBConnection.getConnection();
            String query = "UPDATE Vehicles set make=?, model=?, year=?, transmission=?, ratepermile=?, rateperday=?, taken=? WHERE id=?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, vehicles.getMake());
            stmt.setString(2, vehicles.getModel());
            stmt.setString(3, vehicles.getYear());
            stmt.setString(4, vehicles.getTransimssion());
            stmt.setString(5, vehicles.getRatePerMile());
            stmt.setString(6, vehicles.getRatePerDay());
            stmt.setString(7, vehicles.getTaken());
            stmt.setInt(8, vehicles.getId());
            
            result = stmt.executeUpdate();
        }
        catch (Exception e)
        {
            System.out.println(e);
        }
        return result;
    }
    
    public static Vehicles getVehicleInfo(int id)
    {
        Vehicles vehicles = new Vehicles();
        
        try
        {
            Connection conn = DBConnection.getConnection();
            String query = "SELECT * FROM Vehicles where id=?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            
            rs.next();
            
            vehicles.setMake(rs.getString("make"));
            vehicles.setModel(rs.getString("model"));
            vehicles.setYear(rs.getString("year"));
            vehicles.setTransimssion(rs.getString("transmission"));
            vehicles.setRatePerMile(rs.getString("ratepermile"));
            vehicles.setRatePerDay(rs.getString("rateperday"));
            vehicles.setTaken(rs.getString("taken"));
        } 
        catch (Exception e)
        {
            System.out.println(e);
        }
        return vehicles;
    }
    
    public static void updateVehicleAvailabilty(int id)
    {
        try
        {
            Connection conn = DBConnection.getConnection();
            String query = "UPDATE Vehicles set taken=? WHERE id=?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, "unavailable");
            stmt.setInt(2, id);
            
            stmt.executeUpdate();
        } 
        catch (Exception e)
        {
            System.out.println(e);
        }
    }
}