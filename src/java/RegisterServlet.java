
import java.sql.*;
import java.io.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class REGISTER
 */
@WebServlet("/REGISTER")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       boolean ctr;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
                
		try
		{
			Connection con;
			PreparedStatement st;
                        Statement st1;
			ResultSet rs;
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","K@pil1998");
			st = con.prepareStatement("insert into registerform values(?,?,?,?,?,?,?,?)");
			String s1 = request.getParameter("n1");
			String s2 = request.getParameter("n2");
			String s3 = request.getParameter("u1");
			String s4 = request.getParameter("password");
			String s9 = request.getParameter("confirm_password");
			String s5 = request.getParameter("budday");
			String s6 = request.getParameter("gender");
			String s7 = request.getParameter("p2");
			String s8 = request.getParameter("p3");
                        
			if(s4.equals(s9) == false){
                            response.sendRedirect("http://localhost:8080/Project/Register.jsp?id=Password%20not%20Matched!");
                        }
                        else{                  
                            st.setString(1, s1);
                            st.setString(2, s2);
                            st.setString(3, s3);
                            st.setString(4, s4);
                            st.setString(5, s5);
                            st.setString(6, s6);
                            st.setString(7, s7);
                            st.setString(8, s8);
                            boolean ctr = st.execute();
                            //pw.println("Registration Successful");
                            response.sendRedirect("http://localhost:8080/Project/Login.jsp");
                            HttpSession session=request.getSession();  
                            session.invalidate();
                            st1 = con.createStatement();
                            st1.executeUpdate("truncate table Cart");
                        }
		}
		catch(Exception e)
		{
                    //pw.print(e);
                    response.sendRedirect("http://localhost:8080/Project/Register.jsp?id=Username%20Exists!");
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
