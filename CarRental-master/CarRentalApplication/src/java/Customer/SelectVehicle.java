package Customer;

import database.InventoryService;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Vehicles;

@WebServlet(name = "SelectVehicle", urlPatterns =
{
    "/SelectVehicle"
})
public class SelectVehicle extends HttpServlet
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
            
            HttpSession session = request.getSession();
            session.setAttribute("id", id);

            RequestDispatcher dispatcher = request.getRequestDispatcher("select-vehicle.jsp");  
            dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
     
    }
}
