
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
          
ul.breadcrumb {
    position: absolute;
    top: 20px;
    right: 0;
    padding: 10px 16px;
    list-style-type: none;
    
    //background-color: #eee;
    font-size: 20px;
}
ul.breadcrumb li {
    font-family: "Verdana";
    display: inline;
    border-bottom: none;
}
ul.breadcrumb li+li:before {
    //padding: 8px;
    color: white;
    content: "/\00a0";
}
.user {
    position: relative;
    //top: 0px;
    //padding-bottom: 100%;
    left:  400px;
    font-size: 20px;
}

</style>
    </head>
    <body>
         <div>
        <ul class="breadcrumb">
             <%
//                PrintWriter pw = null;
//                HttpSession s=request.getSession(false);  
//                if(s!=null){ 
                    //pw.print(s);
                HttpSession s=request.getSession(false);  
                if(s!=null){  
                String n=(String)s.getAttribute("name");  
                if(n != null){
           %>
           <li><a href="http://localhost:8080/Project/LogOutServlet">SIGN OUT</a></li>
           <%  } else if(n == null) { %>
        <li><a href="http://localhost:8080/Project/Login.jsp">LOGIN</a></li>
            <% session.invalidate();}}
           else{%>
                <li><a href="http://localhost:8080/Project/Login.jsp">LOGIN</a></li>
                <% } %>
        <li><a href="http://localhost:8080/Project/Register.jsp">SIGN UP</a></li>
        <li><a href="#">1800-123-1555</a></li>
        <li><a href="http://localhost:8080/Project/Cart.jsp">CART <img src="images\bag.png"  width="25" height="25"></a></li>
        <li><a href="http://localhost:8080/Project/Wishlist.jsp">WISHLIST</a></li>
        </ul>
            </div>
       
        </body>

    </body>
</html>