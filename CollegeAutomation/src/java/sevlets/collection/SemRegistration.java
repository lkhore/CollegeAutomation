/*
 * To change this template, choose Tools | Templates
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
public class SemRegistration extends HttpServlet {

    private String enrollment;
    private String classrollno;
    private String username;
    private String fname;
    private String mname;
    private String relation;
    private String semail;
    private String fmail;
    private String ladrs;
    private String padrs;
    private String Category;
    private String emergencyname;
    private String bloodgrp;
    private String donateblood;
    private String Disease;
    private String lastsemgrd;
    private String sem;
    private String fphno;
    private String stuphno;
    private String emergencyno;
    private String joininginst;
    private String btn;
    private String Branch;
    private String sessionfrom;
    private String sessionto;
    private String sub1;
    private String sub2;
    private String sub3;
    private String sub4;
    private String sub5;
    private String subcode1;
    private String subcode2;
    private String subcode3;
    private String subcode4;
    private String subcode5;
    private String prat1;
    private String prat2;
    private String prat3;
    private String prat4;
    private String pratcode1;
    private String pratcode2;
    private String pratcode3;
    private String pratcode4;
    private String semgd;
    private String selfstudy;
    private String minormajor;
    private String guidename;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            sem = request.getParameter("select3");
            enrollment = request.getParameter("enroll");
            classrollno = request.getParameter("clas");
            username = request.getParameter("user");
            fname = request.getParameter("father");
            mname = request.getParameter("mother");
            relation = request.getParameter("relation");
            fphno = request.getParameter("ph_no");

            stuphno = request.getParameter("stuph_no");
            semail = request.getParameter("email");
            fmail = request.getParameter("femail");
            ladrs = request.getParameter("name");
            padrs = request.getParameter("padd");
            Category = request.getParameter("Category");
            emergencyname = request.getParameter("enam");
            emergencyno = request.getParameter("re_no");
            bloodgrp = request.getParameter("bg");
            donateblood = request.getParameter("donateblood");
            Disease = request.getParameter("Disease");
            joininginst = request.getParameter("select4");
            lastsemgrd = request.getParameter("gread");
            Branch = request.getParameter("Branch");
            btn = request.getParameter("Submit");
            sessionfrom = request.getParameter("select");
            sessionto = request.getParameter("select2");

            sub1 = request.getParameter("sub1");
            sub2 = request.getParameter("sub2");
            sub3 = request.getParameter("sub3");
            sub4 = request.getParameter("sub4");
            sub5 = request.getParameter("sub5");

            subcode1 = request.getParameter("subcode1");

            subcode2 = request.getParameter("subcode2");
            subcode3 = request.getParameter("subcode3");
            subcode4 = request.getParameter("subcode4");
            subcode5 = request.getParameter("subcode5");

            prat1 = request.getParameter("prat1");
            prat2 = request.getParameter("prat2");

            prat3 = request.getParameter("prat3");
            prat4 = request.getParameter("prat4");

            pratcode1 = request.getParameter("pratcode1");
            pratcode2 = request.getParameter("pratcode2");
            pratcode3 = request.getParameter("pratcode3");
            pratcode4 = request.getParameter("pratcode4");

            semgd = request.getParameter("semgd");
            selfstudy = request.getParameter("selfstudy");
            minormajor = request.getParameter("minormajor");

            guidename = request.getParameter("guidename");

            if (btn != null) {
                try {

                    Class.forName("com.mysql.jdbc.Driver");
                    java.sql.Connection con = connection.start.MyConnection.myConnection();
                    Statement st = con.createStatement();
                    String q = "insert into semreg(uid,classrollno,unm,fnm,mnm,relation,stuphno,semail,fmail,locadrs,paradrs,category,emername,emerphno,bloodgp,donateblood,disease,joiningdate,lastsemgread,semno,fphno,status,branch,sessionfrom,sessionto,sub1,sub2,sub3,sub4,sub5,subcode1,subcode2,subcode3,subcode4,subcode5,prat1,prat2,prat3,prat4,pratcode1,pratcode2,pratcode3,pratcode4,semgd,selfstudy,minormajor,guidename) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                    PreparedStatement preparedStatement = con.prepareCall(q);

                    preparedStatement.setString(1, enrollment);
                    preparedStatement.setString(2, classrollno);
                    preparedStatement.setString(3, username);
                    preparedStatement.setString(4, fname);
                    preparedStatement.setString(5, mname);
                    preparedStatement.setString(6, relation);
                    preparedStatement.setString(7, stuphno);
                    preparedStatement.setString(8, semail);
                    preparedStatement.setString(9, fmail);
                    preparedStatement.setString(10, ladrs);
                    preparedStatement.setString(11, padrs);
                    preparedStatement.setString(12, Category);
                    preparedStatement.setString(13, emergencyname);
                    preparedStatement.setString(14, emergencyno);
                    preparedStatement.setString(15, bloodgrp);
                    preparedStatement.setString(16, donateblood);
                    preparedStatement.setString(17, Disease);
                    preparedStatement.setString(18, joininginst);
                    preparedStatement.setString(19, lastsemgrd);
                    preparedStatement.setString(20, sem);
                    preparedStatement.setString(21, fphno);
                    preparedStatement.setBoolean(22, false);
                    preparedStatement.setString(23, Branch);
                    preparedStatement.setString(24, sessionfrom);
                    preparedStatement.setString(25, sessionto);

                    preparedStatement.setString(26, sub1);
                    preparedStatement.setString(27, sub2);
                    preparedStatement.setString(28, sub3);
                    preparedStatement.setString(29, sub4);
                    preparedStatement.setString(30, sub5);

                    preparedStatement.setString(31, subcode1);
                    preparedStatement.setString(32, subcode2);
                    preparedStatement.setString(33, subcode3);
                    preparedStatement.setString(34, subcode4);

                    preparedStatement.setString(35, subcode5);

                    preparedStatement.setString(36, prat1);
                    preparedStatement.setString(37, prat2);
                    preparedStatement.setString(38, prat3);
                    preparedStatement.setString(39, prat4);

                    preparedStatement.setString(40, pratcode1);
                    preparedStatement.setString(41, pratcode2);
                    preparedStatement.setString(42, pratcode3);
                    preparedStatement.setString(43, pratcode4);

                    preparedStatement.setString(44, semgd);
                    preparedStatement.setString(45, selfstudy);
                    preparedStatement.setString(46, minormajor);
                    preparedStatement.setString(47, guidename);

                    preparedStatement.executeUpdate();

                    request.setAttribute("errorMessage", "****Successfully Submit Form****");
                    request.getRequestDispatcher("/registration2.jsp").forward(request, response);

                } catch (Exception e) {

                    request.setAttribute("errorMessage", "****Please check which semester form is filled****");
                    request.getRequestDispatcher("/registration2.jsp").forward(request, response);
                }
            }
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
            Logger.getLogger(SemRegistration.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(SemRegistration.class.getName()).log(Level.SEVERE, null, ex);
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
