<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ace for Teachers - Lessons</title>
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
        <div id="content">
            <h1>Lessons</h1>
            <h3>Recent Lesson</h3>
            <a href="lessons/lesson1/lessons1%20-%20intro.jsp" class="box-container recent-lesson">
                <h2>Lesson 1</h2>
            </a>
            <a href="lessons/lessons1.jsp" class="box-container">
                <h2>Lesson 1</h2>
            </a>
            <a href="lessons2.jsp" class="box-container">
                <h2>Lesson 2</h2>
            </a>
            <a class="box-container">
                <h2>Lesson 3</h2>
            </a>
        </div>

    </body>
</html>
