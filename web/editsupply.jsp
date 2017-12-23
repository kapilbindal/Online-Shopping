<%@ include file = "Header.jsp" %>
<%@ include file = "Admin_Page.jsp" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .place {
                position: absolute;
                left: 550px;
                top: 30px;
            }
        </style>
    </head>
    <body>
        <div class="place">
        <form method="post" action="http://localhost:8080/Project/updatesupply">
        <table>
        <%
            String id=request.getParameter("id");
            int no = Integer.parseInt(id);
                try
                {
                    Connection con;
                    Statement st;
                    ResultSet rs;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "K@pil1998");
                    st = con.createStatement();
                    rs = st.executeQuery("select * from SupplierInfo where S_Num ='"+no+"'");
                while(rs.next())
                {
                %>
                <tr>
                <td><input type="text" name="Name" value="<%=rs.getString(3)%>"></td>
                <td><input type="text" name="Company" value="<%=rs.getString(4)%>"></td>
                <td><input type="text" name="Company" value="<%=rs.getString(5)%>"></td>
                <td><input type="hidden" name="id" value="<%=rs.getString(1)%>"></td>
                <td><input type="submit" name="Submit" value="Update" style="background-color:yellow; width: 75px;"></td>
                </tr>
                </table>
        </form>
                <%
                }
                }
                catch(Exception e){}
                %>
                </div>
    </body>
</html>
