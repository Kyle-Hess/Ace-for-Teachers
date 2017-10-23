<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ace for Teachers - Lessons</title>
        <link href="../../css/main.css" rel="stylesheet" type="text/css">
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
                        <li><a href="../index.jsp">Home</a></li>
                        <li><a href="../lessons.jsp">Lessons</a></li>
                        <li><a href="../practice.jsp">Practice</a></li>
                        <li><a href="../videos.jsp">Videos</a></li>
                        <li><form action="Logout" method="POST"><input type="submit" value="Logout"></form></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="content">
            <h1>Lesson 1</h1>
            <a href="lesson1/lessons1%20-%20intro.jsp" class="box-container">
                <h2>Intro</h2>
            </a>
            <a href="lesson1/lessons1%20-%20creation.jsp" class="box-container">
                <h2>Variable Creation</h2>
            </a>
            <a href="lesson1/lessons1%20-%20string.jsp" class="box-container">
                <h2>String</h2>
            </a>
            <a href="lesson1/lessons1%20-%20integer.jsp" class="box-container">
                <h2>Integer</h2>
            </a>
            <a href="lesson1/lessons1%20-%20float.jsp" class="box-container">
                <h2>Float</h2>
            </a>
            <a href="lesson1/lessons1%20-%20boolean.jsp" class="box-container">
                <h2>Boolean</h2>
            </a>
        </div>

    </body>
</html>
