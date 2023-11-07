<%-- 
    Document   : login
    Created on : Oct 2, 2023, 11:01:35 PM
    Author     : ManhHieuNguyen
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" href="css/login.css">
        <title>Login</title>
        <script>
            function doforgetPass() {
                window.location.href="forgetPassword";
            }
        </script>
    </head>
    <body>
        <div id="logreg-forms">
            <form class="form-signin" action="login">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>

                <div class="d-block mx-4 mb-3 mb-lg-4  text-danger"><b>${mess}</b></div>
                <input type="text" id="inputEmail" class="form-control" placeholder="Username" required="" autofocus="" name="Username">
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="" name="Password">

                <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
                <hr>
                <button class="btn btn-success btn-block" type="button" onclick="doforgetPass()"><i class="fa-light fa-repeat"></i> Forget Password</button>
                <hr>
                <!-- <p>Don't have an account!</p>  -->
                <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up New Account</button>
            </form>
            <form action="signup" class="form-signup">
                <p style="text-align:center">OR</p>
                <input type="text" id="user-email" class="form-control" placeholder="Username" required autofocus="" name="user">
                <input type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="" name="pass">
                <input type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="" name="repass">

                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
                <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
            </form>
            <br>

        </div>
            
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/login.js"></script>
    </body>
</html>
