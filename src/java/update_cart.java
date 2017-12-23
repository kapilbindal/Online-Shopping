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
@WebServlet(urlPatterns = {"/update_cart"})
public class update_cart extends HttpServlet {

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
        String id=request.getParameter("id");
            String id2=request.getParameter("id2");
            String s4=null,s5=null,s3=null,s2=null;
            int no = Integer.parseInt(id);
            int ne = Integer.parseInt(id2);
            int an1=0,an2=0;
            
            
             try
                {
                    Connection con;
                    Statement st;
                    PreparedStatement st1;
                    ResultSet rs;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "K@pil1998");
                    st = con.createStatement();
                    rs = st.executeQuery("select * from Cart where S_No ='"+no+"'"); 
                    while(rs.next())
                    {
                        s2 = rs.getString(10);
                        s3 = rs.getString(9);
                        //s4 = rs.getString(4);
                        //s5 = rs.getString(5);
                        an1 = Integer.parseInt(s3);
                        s4=Integer.toString(an1*ne);
                        an2 = Integer.parseInt(s2);
                        s5=Integer.toString(an2*ne);
                    }
                    
                    //console.log(s4);
                    //System.out.print(s4);
                    int cnt = st.executeUpdate("UPDATE Cart SET Actual_Price ='"+s4+"',Quantity='"+ne+"',Discounted_Price ='"+s5+"' WHERE S_No='"+no+"'");
                    
//                    st1 = con.prepareStatement("UPDATE Cart SET Quantity='"id2"' WHERE S_No = '"+no+"'");   
//                    st1.setString(1,id2);
//                    boolean ctr = st1.execute();
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
