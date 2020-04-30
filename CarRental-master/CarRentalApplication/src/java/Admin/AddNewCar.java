package Admin;

import database.AddNewCarService;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Vehicles;

@WebServlet(name = "AddNewCar", urlPatterns =
{
    "/AddNewCar"
})
public class AddNewCar extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        RequestDispatcher rd = request.getRequestDispatcher("addnewcar.jsp");  
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        Vehicles vehicles = new Vehicles();
        vehicles.setMake(request.getParameter("carMake"));
        vehicles.setModel(request.getParameter("carModel"));
        vehicles.setYear(request.getParameter("carYear"));
        vehicles.setTransimssion(request.getParameter("transmissionType"));
        vehicles.setRatePerMile(request.getParameter("rateMile"));
        vehicles.setRatePerDay(request.getParameter("rateDay"));
        
        if(AddNewCarService.addVehicles(vehicles))
        {
            response.sendRedirect("Inventory");
        }
        else
        {
            response.sendRedirect("register-failure.jsp");
        }
    }
}
