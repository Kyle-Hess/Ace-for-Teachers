package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AceLoginDB {

    Connection connection;

    public Connection getConnection() {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            connection = DriverManager.getConnection("jdbc:derby://localhost:1527/AceLogin", "adrian", "adrian");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AceLoginDB.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AceLoginDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return connection;
    }

}
