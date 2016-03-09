/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sevlets.collection;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lovekesh
 */
public class UpdateUser1 extends HttpServlet {

    private String enrollment = "";
    private String enrollment1 = "";
    private String upass = "";
    private String post = "";
    private String adrs = "";
    private String gender = "";
    private String email = "";
    private String contact = "";
    private String unm = "";
    private String validate = "";
    private int valuessss = 0;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            enrollment = request.getParameter("enroll");
            upass = request.getParameter("pwd");
            adrs = request.getParameter("name");
            gender = request.getParameter("group1");
            email = request.getParameter("email");
            contact = request.getParameter("ph_no");
            unm = request.getParameter("user");
            post = request.getParameter("post");
            validate = request.getParameter("verify");

            if (validate.equalsIgnoreCase("true")) {

                valuessss = 1;

            } else {

                valuessss = 0;
            }

            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = connection.start.MyConnection.myConnection();
            Statement st = con.createStatement();

            String q = "update user set unm=?,upass=?,post=?,adrs=?,sex=?,email=?,contact=?,verify=? where uid=?";
            PreparedStatement preparedStatement = con.prepareCall(q);

            preparedStatement.setString(1, unm);
            preparedStatement.setString(2, upass);
            preparedStatement.setString(3, post);
            preparedStatement.setString(4, adrs);
            preparedStatement.setString(5, gender);
            preparedStatement.setString(6, email);
            preparedStatement.setString(7, contact);
            preparedStatement.setInt(8, valuessss);
            preparedStatement.setString(9, enrollment);

            preparedStatement.executeUpdate();

            request.setAttribute("errorMessage", "****Successfully Submit Form****");
            request.getRequestDispatcher("/registration.jsp").forward(request, response);

        } catch (Exception ex) {

            request.setAttribute("errorMessage", ex);
            request.getRequestDispatcher("/registration.jsp").forward(request, response);

        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
            Logger.getLogger(UpdateUser1.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
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
            Logger.getLogger(UpdateUser1.class.getName()).log(Level.SEVERE, null, ex);
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
