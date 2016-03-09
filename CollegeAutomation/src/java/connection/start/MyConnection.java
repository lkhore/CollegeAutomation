/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package connection.start;

import java.sql.*;

public class MyConnection {

    public static Connection con = null;

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root", "root");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Connection myConnection() throws Exception {
        if (con.isClosed()) {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root", "root");
        }
        return con;
    }
}
