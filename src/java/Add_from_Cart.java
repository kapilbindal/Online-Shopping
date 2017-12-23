/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KAPIL
 */
@WebServlet(urlPatterns = {"/Add_from_Cart"})
public class Add_from_Cart extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            //PrintWriter pw=null;
        String id=request.getParameter("id");
        String id2=request.getParameter("id2");
        String s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null,s9=null,s10=null,s11=null;
        int no = Integer.parseInt(id);
        //pw.println(id2);
        
                try
                {
                    Connection con;
                    Statement st;
                    PreparedStatement st1;
                    ResultSet rs;
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "K@pil1998");
                    
                    st = con.createStatement();
                    rs = st.executeQuery("select * from Cart where S_No ='"+no+"'"); 
                    while(rs.next())
                    {
                        //s2=rs.getString(2);
                        //s3=rs.getString(3);
                        //s4=rs.getString(4);
                        s2=rs.getString(2);
                        s3=rs.getString(3);
                        s4=rs.getString(4);
                        s5=rs.getString(5);
                        s6=rs.getString(6);
                        s7=rs.getString(8);
                        s8=rs.getString(9);
                        s9=rs.getString(10);
                        s10=rs.getString(11);
                    }
                    st.executeUpdate("delete from Cart where S_No='"+no+"' ");
                 
                    st1 = con.prepareStatement("insert into Wishlist(link,Description,Actual_Price,Discounted_Price,Discount,Quantity,fixedA,fixedB,Category) values(?,?,?,?,?,?,?,?,?)");
                    st1.setString(1,s2);
                    st1.setString(2,s3); 
                    st1.setString(3,s4);
                    st1.setString(4,s5);
                    st1.setString(5,s6);
                    st1.setString(6,s7);
                    st1.setString(7,s8);
                    st1.setString(8,s9);
                    st1.setString(9,s10);
                    boolean ctr = st1.execute();
                    
                    //char[] alphabet = "".toCharArray();
                    
                    response.sendRedirect("http://localhost:8080/Project/Cart.jsp");
                }
                catch(Exception e){}
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
        processRequest(request, response);
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
        processRequest(request, response);
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
