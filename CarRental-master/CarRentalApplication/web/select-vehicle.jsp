<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- css link -->
        <link href="css/selectvehicle.css" rel="stylesheet" type="text/css"/>        
        
        <title>Select Vehicle</title>     
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function(){
                $('#paymentForm').hide();
                $('#showPaymentForm').click(function(){
                    $('#paymentForm').show();
                });
            });
        </script>
        
        <script type="text/javascript">
            function getDays(){
                var pickUpDate = new Date(document.getElementById("pickUpDate").value);
                var returnDate = new Date(document.getElementById("returnDate").value);
                return parseInt((returnDate - pickUpDate) / (24 * 3600 * 1000));
            }
            
            function show(){
                if(document.getElementById("pickUpDate")){
                    document.getElementById("numOfDays").value = getDays();
                }
            }
        </script>
        
         <script>
                function totalDue(){
                    var rpm = parseFloat(document.getElementById("rpm").value) || 0;
                    var rpd = parseFloat(document.getElementById("rpd").value) || 0;
                    var totalMiles = parseFloat(document.getElementById("totalMile").value) || 0;
                    var numOfDays = parseFloat(document.getElementById("numOfDays").value) || 0;
                
                    var totalDue = (rpm * totalMiles) + (rpd * numOfDays);
                    document.getElementById("totalDue").value = totalDue;
                }
        </script>
        
    </head>
    <body>
        
        <div class="container-fluid form-section">
            <form class="form-horizontal" name="selectVehicleForm" action="SelectVehicle">
                
                <div class="form-group">
                    <label class="col-md-5 control-label">Car Make:</label>
                    <div class="col-md-3">
                        <input class="form-control" type="text" name="make" id="make" value="${Vehicles.make}" disabled>
                    </div>
                </div>
                    
                <div class="form-group">
                    <label class="col-md-5 control-label">Car Model:</label>
                    <div class="col-md-3">
                        <input class="form-control" type="text" name="model" id="model" value="${Vehicles.model}" disabled>
                    </div>
                </div>    
                
                <div class="form-group">
                    <label class="col-md-5 control-label">Car Year:</label>
                    <div class="col-md-3">
                        <input class="form-control" type="text" name="year" id="year" value="${Vehicles.year}" disabled>
                    </div>
                </div> 
                
                <div class="form-group">
                    <label class="col-md-5 control-label">Car Transmission:</label>
                    <div class="col-md-3">
                        <input class="form-control" type="text" name="transmission" id="transmission" value="${Vehicles.transimssion}" disabled>
                    </div>
                </div>    
                    
                <div class="form-group">
                    <label class="col-md-5 control-label">Car Rate Per Mile:</label>
                    <div class="col-md-3">
                        <input class="form-control" type="text" name="rpm" id="rpm" value="${Vehicles.ratePerMile}" disabled>
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-md-5 control-label">Car Rate Per Day:</label>
                    <div class="col-md-3">
                        <input class="form-control" type="text" name="rpd" id="rpd" value="${Vehicles.ratePerDay}" disabled>                    
                    </div>
                </div>
                    
                <%
                    int id = (Integer) request.getAttribute("id");
                %>
                <input type="hidden" name="id" value="<%=id%>">
                
                <div class="form-group">
                    <label class="col-md-5 control-label">Pick Up Date:</label>
                    <div class="col-md-3">
                        <input class="form-control" type="date" name="pickUpDate" id="pickUpDate" onchange="show()">                    
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-md-5 control-label">Return Date:</label>
                    <div class="col-md-3">
                        <input class="form-control" type="date" name="returnDate" id="returnDate" onchange="show()">                    
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-md-5 control-label">Number of Days Renting:</label>
                    <div class="col-md-3">
                        <input class="form-control" type="text" id="numOfDays" name="numOfDays" disabled>                   
                    </div>
                </div>
  
                <div class="form-group">
                    <label class="col-md-5 control-label">Total Miles:</label>
                    <div class="col-md-3">
                        <input class="form-control" type="text" name="totalMile" id="totalMile" placeholder="approximate">                  
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-md-5 control-label">Total Amount Due: $</label>
                    <div class="col-md-3">
                        <input class="form-control" type="text" name="totalDue" id="totalDue" disabled>                  
                    </div>
                </div> 
            </form>
        </div>
        
        <div class="container-fluid button-section">
            <div class="row">
                <div class="col-md-12 text-center">
                    <button id="showPaymentForm" onclick="totalDue(); getNumOfDays(); getTotalMiles(); getTotalDue();" mmclass="btn btn-success" name="showForm" >Billing/Payment Info</button>
                </div>
            </div>
        </div>
            
        <div class="container-fluid payment-form-section">
            <form class="form-horizontal" id="paymentForm" name="paymentForm" action="PaymentInformation" method="post">
            <hr>
            
                <div class="container-fluid title-section">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <h4 class="title">Billing Information</h4>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-5 control-label">First Name:</label>
                    <div class="col-md-3">
                        <input type="text" name="firstName" class="form-control">
                    </div>
                </div>
            
                <div class="form-group">
                    <label class="col-md-5 control-label">Last Name:</label>
                    <div class="col-md-3">
                        <input type="text" name="lastName" class="form-control">
                    </div>
                </div>
            
                <div class="form-group">
                    <label class="col-md-5 control-label">Address:</label>
                    <div class="col-md-3">
                        <input type="text" name="address" class="form-control">
                    </div>
                </div>
            
                <div class="form-group">
                    <label class="col-md-5 control-label">Apt or Suite #:</label>
                    <div class="col-md-3">
                        <input type="text" name="aptNum" class="form-control">
                    </div>
                </div>
            
                <div class="form-group">
                    <label class="col-md-5 control-label">City:</label>
                    <div class="col-md-3">
                        <input type="text" name="city" class="form-control">
                    </div>
                </div>
            
                <div class="form-group">
                    <label class="col-md-5 control-label">State:</label>
                    <div class="col-md-3">
                        <input type="text" name="state" class="form-control">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-5 control-label">Zip Code:</label>
                    <div class="col-md-3">
                        <input type="number" name="zipCode" class="form-control">
                    </div>
                </div>
            
                <div class="form-group">
                    <label class="col-md-5 control-label">Phone Number:</label>
                    <div class="col-md-3">
                       <input type="text" name="phoneNum" class="form-control">
                    </div>
                </div>
            
                <div class="form-group">
                    <label class="col-md-5 control-label">Email Address:</label>
                    <div class="col-md-3">
                       <input type="text" name="email" class="form-control">
                    </div>
                </div>
            
                <hr>
                 
                <div class="container-fluid title-section">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <h4 class="title">Payment Information</h4>
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-md-5 control-label">Credit Card Type</label>
                    <div class="col-md-3">
                        <select class="form-control" name="card">
                            <option value="visa">Visa</option>
                            <option value="masterCard">Master Card</option>
                            <option value="american">American Express</option>
                            <option value="discover">Discover</option>
                        </select>
                    </div>
                </div>
                 
                <div class="form-group">
                    <label class="col-md-5 control-label">Credit Card Number</label>
                    <div class="col-md-3">
                       <input type="number" name="cardNumber" class="form-control">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-md-5 control-label">Expiration Date</label>
                    <div class="col-md-3">
                       <input type="number" name="expMonth" placeholder="MM" class="form-control"><input type="number" name="expYear" placeholder="YYYY" class="form-control">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-md-5 control-label">CV Code</label>
                    <div class="col-md-3">
                       <input type="number" name="cvCode" placeholder="ex. 123" class="form-control">
                    </div>
                </div>
   
                <div class="container-fluid button-section">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <button type="submit" class="btn btn-success" name="submit" >Submit</button>
                        </div>
                    </div>
                </div>     
                
                  <%
                     id = (Integer) request.getAttribute("id");
                %>
                <input type="hidden" name="id" value="<%=id%>">
                
            </form>  
        </div>
                
        <div class="container-fluid home-section">
            <div class="row">
                <div class="col-md-12">
                    <a href="CustomerHomePage" class="hover">Back to Home</a>
                </div>
            </div>
        </div>
                
        <div class="container-fluid footer-section">
            <div class="row">
                <div class="col-md-12 left-align">
                    <h6><strong>Copyright &copy; 2016 Nasim Ahmed</strong></h6>
                </div>
            </div>
        </div>
     
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>
</html>
