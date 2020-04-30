<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Vehicle</title>
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

         <!-- css link -->
         <link href="css/editvehicle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container-fluid header-section">
            <div class="row">
                <div class="col-md-12 text-center">
                     <h1 class="title">Update Vehicles</h1>
                </div>
            </div>
        </div>
        
        <div class="container-fluid editForm">
            <form class="form-horizontal" name="editVehicleForm" action="EditVehicle" method="post">
                
                <div class="form-group">
                    <label for="carMake" class="col-md-5 control-label">Car Make:</label>
                    <div class="col-md-3">
                        <input type="text" name="make" id="make" class="form-control" value="${Vehicles.make}">
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="carModel" class="col-md-5 control-label">Car Model:</label>
                    <div class="col-md-3">
                        <input type="text" name="model" id="model" class="form-control" value="${Vehicles.model}">
                    </div>
                </div>   
                    
                <div class="form-group">
                    <label for="carYear" class="col-md-5 control-label">Car Year:</label>
                    <div class="col-md-3">
                        <input type="text" name="year" id="year" class="form-control" value="${Vehicles.year}">
                    </div>
                </div>  
                       
                <div class="form-group">
                    <label for="carTrans" class="col-md-5 control-label">Car Transmission:</label>
                    <div class="col-md-3">
                        <input type="text" name="transmission" id="transmission" class="form-control" value="${Vehicles.transimssion}">
                    </div>
                </div> 
                    
                <div class="form-group">
                    <label for="carRPM" class="col-md-5 control-label">Car Rate Per Mile:</label>
                    <div class="col-md-3">
                        <input type="text" name="rpm" id="rpm" class="form-control" value="${Vehicles.ratePerMile}">
                    </div>
                </div>   
                    
                <div class="form-group">
                    <label for="carRPD" class="col-md-5 control-label">Car Rate Per Day</label>
                    <div class="col-md-3">
                        <input type="text" name="rpd" id="rpd" class="form-control" value="${Vehicles.ratePerDay}">
                    </div>
                </div>  
                    
                <div class="form-group">
                    <label for="carTaken" class="col-md-5 control-label">Car Availability:</label>
                    <div class="col-md-3">
                        <input type="text" name="avail" id="avail" class="form-control" value="${Vehicles.taken}">
                    </div>
                </div>
                
                <%
                    int id = (Integer) request.getAttribute("id");
                %>
                <input type="hidden" name="id" value="<%=id%>">
                
                <div class="container-fluid button-section">
                    <div class="row">
                        <div class="col-md-12 text-center">
                          <button type="submit" class="btn btn-success" name="submit" value="Update">Update</button>
                        </div>
                    </div>
                </div>
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
