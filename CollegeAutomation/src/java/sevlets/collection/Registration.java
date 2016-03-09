package sevlets.collection;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sun.font.Script;

public class Registration extends HttpServlet {

    private String enrollment = "";
    private String enrollment1 = "";
    private String upass = "";
    private String post = "";
    private String adrs = "";
    private String gender = "";
    private String email = "";
    private String contact = "";
    private String unm = "";
    private boolean validate = false;

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

            enrollment1 = enrollment;
            String one = enrollment1.substring(0, 6);

            if (one.equals("0830".concat("ec")) || one.equals("0830".concat("cs")) || one.equals("0830".concat("it")) || one.equals("0830".concat("me")) || one.equals("0830".concat("ce")) || one.equals("0830".concat("CS")) || one.equals("0830".concat("ME")) || one.equals("0830".concat("IT")) || one.equals("0830".concat("CE")) || one.equals("0830".concat("EC"))) {

                post = "student";
                validate = true;

            } else {

                validate = false;
            }

            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = connection.start.MyConnection.myConnection();
            Statement st = con.createStatement();
            String q = "insert into user(uid,unm,upass,post,adrs,sex,email,contact,verify) values(?,?,?,?,?,?,?,?,?)";
            PreparedStatement preparedStatement = con.prepareCall(q);

            preparedStatement.setString(1, enrollment);
            preparedStatement.setString(2, unm);
            preparedStatement.setString(3, upass);
            preparedStatement.setString(4, post);
            preparedStatement.setString(5, adrs);
            preparedStatement.setString(6, gender);
            preparedStatement.setString(7, email);
            preparedStatement.setString(8, contact);
            preparedStatement.setBoolean(9, false);

            preparedStatement.executeUpdate();


            request.setAttribute("errorMessage", "****Successfully Submit Form****");
            request.getRequestDispatcher("/registration.jsp").forward(request, response);



        } catch (Exception ex) {

            request.setAttribute("errorMessage", "****Email Address and Contect No. Alredy register  ****");
            request.getRequestDispatcher("/registration.jsp").forward(request, response);



        } finally {
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
            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
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
