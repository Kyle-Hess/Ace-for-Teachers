package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SignUp", urlPatterns = {"/html/SignUp"})
public class SignUp extends HttpServlet {

    AceLoginDB aceLoginDB;
    Connection connection;
    Statement statement;
    ResultSet resultSet;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uName = request.getParameter("userName");
        String pWord = request.getParameter("pWord");
        String pWordConfirm = request.getParameter("pWordConfirm");
        aceLoginDB = new AceLoginDB();
        connection = aceLoginDB.getConnection();
        try {
            statement = connection.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(SignUp.class.getName()).log(Level.SEVERE, null, ex);
        }

        if (uName.isEmpty() || pWord.isEmpty() || pWordConfirm.isEmpty()) {
            request.setAttribute("message", "Your must fill in all required details");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            response.sendRedirect("register.jsp");
        } else if (!pWordConfirm.equals(pWord)) {
            request.setAttribute("message", "Your Passwords Must Match");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            response.sendRedirect("register.jsp");
        } else if (uName.equals(checkUserName(uName))) {
            request.setAttribute("message", "That username is already in use");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            response.sendRedirect("register.jsp");
        } else {
            saveUserName(uName, pWordConfirm);
            response.sendRedirect("login-page.jsp");
        }
    }

    private String checkUserName(String uName) {
        String checkUName = null;
        try {
            resultSet = statement.executeQuery("SELECT * from TEACHERLOGIN where TEACHERUSERNAME  like '" + uName + "'");
            while (resultSet.next()) {
                checkUName = resultSet.getString("TEACHERUSERNAME");
                System.out.println("that name is already in use");
            }
        } catch (SQLException ex) {
            System.out.println("you are not connected to the Database!");
            Logger.getLogger(SignUp.class.getName()).log(Level.SEVERE, null, ex);
        }
        return checkUName;
    }

    private void saveUserName(String uName, String pWordConfirm) {
        try {
            statement.executeUpdate("insert into TEACHERLOGIN (TEACHERUSERNAME,TEACHERPASSWORD) values('" + uName + "','" + pWordConfirm + "')");
        } catch (SQLException ex) {
            Logger.getLogger(SignUp.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
