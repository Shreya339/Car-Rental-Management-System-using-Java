package Customer;

import database.RentService;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RentCar", urlPatterns =
{
    "/RentCar"
})
public class RentCar extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        List vehiclesList = RentService.getVehList();
        request.setAttribute("vehiclesList", vehiclesList);
        RequestDispatcher rd = request.getRequestDispatcher("rent-a-car.jsp");  
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
    }
}
