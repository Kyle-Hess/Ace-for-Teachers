package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Login", urlPatterns = {"/html/Login"})
public class Login extends HttpServlet {

    AceLoginDB aceLoginDB;
    Connection connection;
    PreparedStatement preparedStatement;
    ResultSet resultSet;
    String checkUname;
    String checkPword;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uName = request.getParameter("userName");
        String pWord = request.getParameter("passWord");
        aceLoginDB = new AceLoginDB();

        if (validateUser(uName, pWord)) {
            System.out.println("name & pass were good");

            HttpSession session = request.getSession();
            session.setAttribute("userName", uName);

            response.sendRedirect("index.jsp");
        } else {
            System.out.println("name & pass were bad");
            response.sendRedirect("login-page.jsp");
        }

    }

    private Boolean validateUser(String uName, String pWord) {
        Boolean logInStatus = false;
        connection = aceLoginDB.getConnection();
        try {
            preparedStatement = connection.prepareStatement("select * from TEACHERLOGIN where TEACHERUSERNAME=? and TEACHERPASSWORD=?");
            preparedStatement.setString(1, uName);
            preparedStatement.setString(2, pWord);
            resultSet = preparedStatement.executeQuery();
            logInStatus = resultSet.next();
        } catch (SQLException ex) {
            System.out.println("you are not connected to the Database!");
            Logger.getLogger(SignUp.class.getName()).log(Level.SEVERE, null, ex);
        }
        return logInStatus;
    }
}
