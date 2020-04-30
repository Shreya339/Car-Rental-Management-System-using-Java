package Customer;
import database.InventoryService;
import database.RentService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Payment;

@WebServlet(name = "PaymentInformation", urlPatterns =
{
    "/PaymentInformation"
})
public class PaymentInformation extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
 
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        Payment paymentInfo = new Payment();
        paymentInfo.setId(10);
        paymentInfo.setFirstName(request.getParameter("firstName"));
        paymentInfo.setLastName(request.getParameter("lastName"));
        paymentInfo.setAddress(request.getParameter("address"));
        paymentInfo.setAptSuit(request.getParameter("aptNum"));
        paymentInfo.setCity(request.getParameter("city"));
        paymentInfo.setState(request.getParameter("state"));
        paymentInfo.setZipcode(request.getParameter("zipCode"));
        paymentInfo.setPhoneNum(request.getParameter("phoneNum"));
        paymentInfo.setEmail(request.getParameter("email"));
        paymentInfo.setCreditCardType(request.getParameter("card"));
        paymentInfo.setCreditCardNum(Integer.parseInt(request.getParameter("cardNumber")));
        paymentInfo.setExpirationDate(request.getParameter("expMonth"));
        paymentInfo.setCvCode(Integer.parseInt(request.getParameter("cvCode")));
     
        int result = RentService.insertPaymentDB(paymentInfo);
        
        if(result > 0)
        {
            HttpSession session = request.getSession();
            int id = (Integer) session.getAttribute("id");
            InventoryService.updateVehicleAvailabilty(id);
            response.sendRedirect("RentCar");
        }
        else
        {
            response.sendRedirect("failure.jsp");
        }
    }
}
