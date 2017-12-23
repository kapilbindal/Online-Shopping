import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddSupply extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter pw = response.getWriter();
        String s1 = request.getParameter("S.No"); 
        String s2 = request.getParameter("SupplierId"); 
	String s3 = request.getParameter("Name");
        String s4 = request.getParameter("SuppliedItem");
	String s5 = request.getParameter("Company");
        try{
			Connection con;
			PreparedStatement st;
			//ResultSet rs;
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "K@pil1998");
			st = con.prepareStatement("insert into SupplierInfo values(?,?,?,?,?)");
			
			st.setString(1,s1);
			st.setString(2,s2);
                        st.setString(3,s3);
                        st.setString(4,s4);
                        st.setString(5,s5);
			boolean ctr = st.execute();
                        //System.out.println(ctr);
                        response.sendRedirect("http://localhost:8080/Project/Admin_Page.jsp");
                        
		}catch(Exception e)
		{
			pw.println(e);
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
