<%@page import="java.util.List"%>
<%@page import="model.Vehicles"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventory</title>
        
         <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

         <!-- css link -->
         <link href="css/inventory.css" rel="stylesheet" type="text/css"/>
        
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
     
     <script type="text/javascript">
        $(document).ready(function(){
            $('#addCar').hide();
            $('#showForm').click(function(){
                $('#addCar').show();
            });
        });
     </script>
     
    </head>
    <body>
        <div class="container-fluid header-section">
            <div class="row">
                <div class="col-md-12 text-center">
                     <h1 class="title">List of Cars in Inventory</h1>
                </div>
            </div>
        </div>
        
       
        <div class="container-fluid table-section">
             <div class="row">
                <div class="col-md-12 text-center">
                    <form name="table" action="Inventory" method="get">
                        <table class="table table-bordered">
                            <tr class="heading">
                                <td>Car ID</td>
                                <td>Car Make</td>
                                <td>Car Model</td>
                                <td>Car Year</td>
                                <td>Transmission Type</td>
                                <td>Rate Per Mile</td>
                                <td>Rate Per Day</td>
                                <td>Availability</td>
                                <td></td>
                            </tr>
            
                        <c:forEach var="Vehicles" items="${vehiclesList}">
                            <tr class="hover-rows">
                                <td><c:out value="${Vehicles.id}"/></td>
                                <td><c:out value="${Vehicles.make}"/></td>
                                <td><c:out value="${Vehicles.model}"/></td>
                                <td><c:out value="${Vehicles.year}"/></td>
                                <td><c:out value="${Vehicles.transimssion}"/></td>
                                <td>$<c:out value="${Vehicles.ratePerMile}"/></td>
                                <td>$<c:out value="${Vehicles.ratePerDay}"/></td>
                                <td><c:out value="${Vehicles.taken}"/></td>
                                <td> <a href="EditVehicle?id=${Vehicles.id}">Edit</a> | 
                                    <a href="DeleteVehicle?id=${Vehicles.id}" 
                                       onclick ="return confirm('Do you really want to delete?')"> 
                                        Delete</a></td>
                            </tr>
                        </c:forEach>     
                        </table>
                    </form>                
                </div>
            </div>
        </div>
               
        <div class="container-fluid button-section">
            <div class="row">
                <div class="col-md-12">
                    <button id="showForm" class="btn btn-info">Add New Car</button>
                </div>
            </div>
        </div>
        
        <div class="container-fluid add-car-form-section">
             <form id="addCar" class="form-horizontal" name="addCar" action="AddNewCar" method="post">
                
                <div class="form-group">
                    <label for="inputCarMake" class="col-md-5 control-label">Car Make:</label>
                    <div class="col-md-3">
                        <input type="text" name="carMake" class="form-control" required> 
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="inputCarModel" class="col-md-5 control-label">Car Model:</label>
                    <div class="col-md-3">
                        <input type="text" name="carModel" class="form-control" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="inputCarYear" class="col-md-5 control-label">Car Year:</label>
                    <div class="col-md-3">
                        <input type="text" name="carYear" class="form-control" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="inputCarTrans" class="col-md-5 control-label">Car Transmission Type:</label>
                    <div class="col-md-3">
                        <label class="radio-inline">
                            <input type="radio" name="transmissionType" value="Auto" required>Auto
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="transmissionType" value="Manual" required>Manual
                        </label>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="inputRateMile" class="col-md-5 control-label">Rate Per Mile: </label>
                    <div class="col-md-3">
                        <input type="text" name="rateMile" class="form-control" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="inputRateDay" class="col-md-5 control-label">Rate Per Day: </label>
                    <div class="col-md-3">
                        <input type="text" name="rateDay" class="form-control" required>
                    </div>
                </div>
        
                <div class="container-fluid button-section">
                    <div class="row">
                        <div class="col-md-12 text-center">
                          <button type="submit" class="btn btn-success" name="add" value="Add">Add</button>
                        </div>
                    </div>
                </div>
                
            </form>
        </div>
       
        <div class="container-fluid home-section">
            <div class="row">
                <div class="col-md-12">
                    <a href="HomePage" class="hover">Back to Home</a>
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
