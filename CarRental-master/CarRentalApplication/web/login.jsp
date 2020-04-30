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
        <link href="css/logincss.css" rel="stylesheet" type="text/css"/>

        <title>Login</title>
    </head>
    <body>
        <div class="container-fluid header-section">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h1 class="title">Car Rental Login</h1>
                </div>
            </div>
        </div>
       
        <div class="container-fluid form-section">
            <div class="row">
                <div class="col-md-12 text-center">
                    <form class="loginForm" name="loginForm" action="Login" method="post">
                        <label class="username">Username:</label>
                            <input type="text" name="username" placeholder="username" class="fieldUsername" required> <br>
                        <label class="password">Password:</label>
                            <input type="password" name="password" placeholder="password" class=""fieldPassword required> <br>
                            <button type="submit" name="login" value="Login" class="btnSubmit">Login</button> </br>
                    </form>
                </div>
            </div>
        </div>
      
        <div class="container-fluid register-section">
            <div class="row">
                <div class="col-md-12 text-center">
                    Click <a href="register.jsp"><span class="link"><strong>register</strong></span></a> to open an admin account
                </div>
            </div>
        </div>
        
         
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>
</html>


