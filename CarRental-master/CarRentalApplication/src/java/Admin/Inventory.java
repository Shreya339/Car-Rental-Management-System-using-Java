package Admin;

import database.InventoryService;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Inventory", urlPatterns =
{
    "/Inventory"
})
public class Inventory extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    { 
        List vehiclesList = InventoryService.getVehicleList();
        request.setAttribute("vehiclesList", vehiclesList);
        RequestDispatcher rd = request.getRequestDispatcher("inventory.jsp");  
        rd.forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
          
      
    }
}