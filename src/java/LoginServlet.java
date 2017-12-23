
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//PrintWriter out = response.getWriter();
		PrintWriter pw = response.getWriter();
		String s1 = request.getParameter("t1");
		String s2 = request.getParameter("t2");
		boolean flag = false;
		
		try{
			Connection con;
			PreparedStatement st;
			ResultSet rs;
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "K@pil1998");
			st = con.prepareStatement("select * from registerform where Username=? and Password=?");
			
			st.setString(1,s1);
			st.setString(2,s2);		
			if(s1.equals("admin") && s2.equals("Kapil")) response.sendRedirect("http://localhost:8080/Project/Admin_Page.jsp");
                        else{
                            rs = st.executeQuery();
                            while(rs.next())
                            {
                                    flag = true;
                                    pw.println("hello!!");
                            }
                            if(flag == false)pw.println("Not Registered");
                        }
		}catch(Exception e)
		{
			System.out.println(e);
		}
		doGet(request, response);
	}

}
