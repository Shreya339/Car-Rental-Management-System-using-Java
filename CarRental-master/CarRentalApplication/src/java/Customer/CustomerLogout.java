package Customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "CustomerLogout", urlPatterns =
{
    "/CustomerLogout"
})
public class CustomerLogout extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        HttpSession session;
        session = request.getSession();
        
        String username = (String) session.getAttribute("username");
        
        if(username != null)
        {
            session.removeAttribute("username");
            
        }
       
        response.sendRedirect("CustomerLogin");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
    }
}
