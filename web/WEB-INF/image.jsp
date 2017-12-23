
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
div.gallery {

    margin: 5px;
    margin-top:100px;
    margin-left: 80px;
    border: 1px solid #ccc;
    left: 300px;
    float: right ;
    width: 300px;
    height: 250px;
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}
</style>
    </head>
    <body>

         <%
                try
                {
                    Connection con;
                    Statement st;
                    ResultSet rs;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "K@pil1998");
                    st = con.createStatement();
                    rs = st.executeQuery("select * from Image");
                while(rs.next())
                {
                %>
                           <div class="gallery">
                            <a target="_blank" href="img_fjords.jpg">
                              <img src="<%= rs.getString(4) %>" alt="Trolltunga Norway" style="width:300px; height:200px;" >
                            </a>
                            <div class="desc">Add a description of the image here</div>
                          </div>
                <%
                }
                %>
                <%
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
                %>
    </body>
</html>
