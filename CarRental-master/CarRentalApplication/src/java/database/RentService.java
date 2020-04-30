package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Payment;
import model.Vehicles;

public class RentService
{
    public static List getVehList()
    {
        List vehiclesList = new ArrayList<>();

        try
        {
            Connection conn = DBConnection.getConnection();
            String q = "SELECT * FROM Vehicles WHERE taken=?";
            PreparedStatement stmt = conn.prepareStatement(q);
            stmt.setString(1, "available");
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
    
    public static int insertPaymentDB(Payment paymentInfo)
    {
        int result = 0;
        
        try
        {
            Connection conn = DBConnection.getConnection();
            
            String query = "INSERT INTO Payment (id, firstname, lastname, address, aptsuite, city, state,"
                    + "zipcode, phonenum, email, creditcardtype, creditcardnum, expirationdate, "
                    + "cvcode) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setInt(1, paymentInfo.getId());
            stmt.setString(2, paymentInfo.getFirstName());
            stmt.setString(3, paymentInfo.getLastName());
            stmt.setString(4, paymentInfo.getAddress());
            stmt.setString(5, paymentInfo.getAptSuit());
            stmt.setString(6, paymentInfo.getCity());
            stmt.setString(7, paymentInfo.getState());
            stmt.setString(8, paymentInfo.getZipcode());
            stmt.setString(9, paymentInfo.getPhoneNum());
            stmt.setString(10, paymentInfo.getEmail());
            stmt.setString(11, paymentInfo.getCreditCardType());
            stmt.setInt(12, paymentInfo.getCreditCardNum());
            stmt.setString(13, paymentInfo.getExpirationDate());
            stmt.setInt(14, paymentInfo.getCvCode());  
            
            result = stmt.executeUpdate();
        } 
        catch (Exception e)
        {
            System.out.println(e);
        }
        
        return result;
    }
}
