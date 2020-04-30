package Admin;

import database.InventoryService;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Vehicles;

@WebServlet(name = "EditVehicle", urlPatterns =
{
    "/EditVehicle"
})
public class EditVehicle extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        Vehicles vehicles = new Vehicles();
        
        int id = Integer.parseInt(request.getParameter("id"));
        if(id > 0)
        {
            vehicles = InventoryService.getVehicleInfo(id);
            request.setAttribute("Vehicles", vehicles);
            request.setAttribute("id", id);
            RequestDispatcher dispatcher = request.getRequestDispatcher("editvehicle.jsp");  
            dispatcher.forward(request, response);
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        int result = 0;
       // String operation = "";
        
        
          //  operation = request.getParameter("submit");
            
           // if(null != operation)
           // {
                Vehicles vehicles = new Vehicles();
                
                vehicles.setMake(request.getParameter("make"));
                vehicles.setModel(request.getParameter("model"));
                vehicles.setYear(request.getParameter("year"));  
                vehicles.setTransimssion(request.getParameter("transmission"));
                vehicles.setRatePerDay(request.getParameter("rpd"));
                vehicles.setRatePerMile(request.getParameter("rpm"));
                vehicles.setTaken(request.getParameter("avail"));
                int id = Integer.parseInt(request.getParameter("id"));
                vehicles.setId(id);
                
                result = InventoryService.updateVehicleInfo(vehicles);
         //   }
         
            if(result > 0)
            {
                 response.sendRedirect("Inventory");
            }
            else
            {
                response.sendRedirect("failure.jsp");
            }
        
        
    }
}
