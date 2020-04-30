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
         <link href="css/register.css" rel="stylesheet" type="text/css"/>
         
         <title>Register</title>
    </head>
    <body>
        <div class="container-fluid header-section">
            <div class="row">
                <div class="col-md-12 text-center">
                     <h1 class="title">Customer Registration</h1>
                </div>
            </div>
        </div>
       
        <div class="container-fluid form-section">
            <form class="form-horizontal" name="registrationForm" action="CustomerRegister" method="post">
                
                <div class="form-group">
                    <label for="inputFirstName" class="col-md-5 control-label">First Name:</label>
                    <div class="col-md-3">
                        <input type="text" name="firstName" class="form-control">
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="inputLastName" class="col-md-5 control-label">Last Name:</label>
                    <div class="col-md-3">
                        <input type="text" name="lastName" class="form-control">
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="inputUsername" class="col-md-5 control-label">Username:</label>
                    <div class="col-md-3">
                        <input type="text" name="username" class="form-control">
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="inputPassword" class="col-md-5 control-label">Password:</label>
                    <div class="col-md-3">
                        <input type="password" name="password" class="form-control">
                    </div>
                </div>
                
                <div class="container-fluid button-section">
                    <div class="row">
                        <div class="col-md-12 text-center">
                          <button type="submit" class="btn btn-success" name="Register" value="Register">Register</button>
                        </div>
                    </div>
                </div>
                
            </form>
        </div>
        
       <div class="container-fluid footer-section">
            <div class="row">
                <div class="col-md-12 left-align">
                    	<h6><strong>Copyright &copy; 2016 Nasim Ahmed</strong></h6>
                </div>
            </div>
        </div>
</html>
