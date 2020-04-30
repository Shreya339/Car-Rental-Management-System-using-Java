package Admin;

import database.RegistrationService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AdminInfo;

@WebServlet(name = "Register", urlPatterns =
{
    "/Register"
})
public class Register extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException
    {
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        AdminInfo admin = new AdminInfo();
        admin.setFirstName(request.getParameter("firstName"));
        admin.setLastName(request.getParameter("lastName"));
        admin.setID(10);
        admin.setUsername(request.getParameter("username"));
        admin.setPassword(request.getParameter("password"));
                
        if(RegistrationService.saveToDB(admin))
        {           
            response.sendRedirect("login.jsp");
        }
        else
	{
            response.sendRedirect("register-failure.jsp");
        }
    }
}
