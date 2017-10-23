<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ace for Teachers - Home</title>
        <link href="../css/main.css" rel="stylesheet" type="text/css">
    </head>
    <body>

        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
            if (session.getAttribute("userName") == null) {
                response.sendRedirect("login-page.jsp");
            }
        %>

        <div id="header-container">
            <div id="header">
                <div id="navigation">
                    <h1 class="logo">ACE For Teachers</h1>
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="lessons.jsp">Lessons</a></li>
                        <li><a href="practice.jsp">Practice</a></li>
                        <li><a href="videos.jsp">Videos</a></li>
                        <li><form action="Logout" method="POST"><input type="submit" value="Logout"></form></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="content">
            <h1 class="home-page">Welcome back ${userName}!</h1>     
            <div class="topBanner">
                <a href="lessons.jsp">
                    <img src="../images/play_icon.PNG" width="200" height="200">
                    <h2>Continue Lesson</h2>
                    <div class="top-container">    
                        <div class="myProgress">
                            <div class="myBar">60%</div>
                        </div>

                    </div>  
            </div>

            <div class="hp-menu">
                <ul class="hp-list">
                    <li class="hp-list-item">
                        <a class="hp-menu-item">
                            <a href="lessons.jsp">
                                <img src="../images/Lesson%20button.PNG">
                            </a>
                        </a>
                    </li>
                    <li class="hp-list-item">
                        <a class="hp-menu-item">
                            <a href="practice.jsp">
                                <img src="../images/practice.PNG">
                            </a>
                        </a>
                    </li>
                    <li class="hp-list-item">
                        <a class="hp-menu-item">
                            <a href="profile.jsp">
                                <img src="../images/profile.PNG">
                            </a>
                        </a>
                    </li>
                </ul>
            </div>

            <div class="bottomBanner">
            </div>
        </div>
    </div>
</body>
</html>
