/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sevlets.collection;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.catalina.Session;

/**
 *
 * @author lovekesh
 */
public class Login extends HttpServlet {

    Statement st;
    HttpSession session;

//    boolean one = true;
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String id = request.getParameter("uid");
            String pass = request.getParameter("upass");
            String btn = request.getParameter("B1");
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = connection.start.MyConnection.myConnection();
            Statement st = con.createStatement();
//            String q = "select * from user where enrollment=? and upass=?";
            String q1 = "select uid,verify,post from user where uid=? and upass=?";


            PreparedStatement preparedStatement = con.prepareCall(q1);
            preparedStatement.setString(1, id);
            preparedStatement.setString(2, pass);
            ResultSet rs = preparedStatement.executeQuery();
            boolean flag = false;
            if (rs.next()) {

                String level = rs.getString("post");
                boolean validate = rs.getBoolean("verify");
                String enrollment = rs.getString("uid");

                Cookie ck = new Cookie("TIGER", enrollment);
                ck.setMaxAge(10000000);
                response.addCookie(ck);
                if (validate != false) {

                    session = request.getSession(true);
                    session.setAttribute("uid", enrollment);

                    if (level.equalsIgnoreCase("faculty")) {
                        response.sendRedirect("faculty.jsp");
                    }
                    if (level.equalsIgnoreCase("student")) {
                        response.sendRedirect("student.jsp");
                    }
                    if (level.equalsIgnoreCase("admin")) {
                        response.sendRedirect("admin.jsp");
                    }
                } else {
                    if (btn != null) {

                        flag = true;

                        request.setAttribute("errorMessage", "*User Account is not activated");
                        request.getRequestDispatcher("/index.jsp").forward(request, response);
                    }

                }

            } else {

                flag = true;

            }

            if (btn != null && flag == true) {
                request.setAttribute("errorMessage", "*Invalid id/password");
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }

        } catch (Exception e) {

            System.out.println("eeeeeeeeee:" + e);


        } finally {

//            st.close();
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
