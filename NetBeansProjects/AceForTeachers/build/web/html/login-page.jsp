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
            <h1>Log In</h1>
            <div class="centered-container">
                <form class="login-form" action="Login" method="POST">

                    <p>User Name</p>
                    <input type="text" name="userName"><br>

                    <p>Password</p>
                    <input type="password" name="passWord"><br>

                    <p>${message}</p>

                    <input class="button float-left" type="submit" value="Login">

                    <a href="register.jsp" class="button float-right">Sign-Up</a>
                </form>
            </div>
        </div>

    </body>
</html>
