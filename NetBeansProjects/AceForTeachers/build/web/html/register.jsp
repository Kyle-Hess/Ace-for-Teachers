<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ace for Teachers - Home</title>
        <link href="../css/main.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div id="header-container">
            <div id="header">
                <div id="navigation">
                    <h1 class="logo">ACE For Teachers</h1>
                </div>
            </div>
        </div>
        <div id="content">
            <h1>Register</h1>
            <div class="centered-container">

                <form id="form" class="login-form" action="SignUp" method="POST">

                    <p>User</p>
                    <input id="userName" type="text" name="userName"><br>

                    <p>Password</p>
                    <input id="passWord" type="password" name="pWord"><br>

                    <p>Confirm Password</p>
                    <input id="passWordConfirm" type="password" name="pWordConfirm"><br>

                    <p>${message}</p>

                    <input class="button centered" type="submit" value="SignUp">
                </form>
            </div>
        </div>
    </body>
</html>
