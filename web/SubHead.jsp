
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

</style>
    </head>
    <body>
        <ul class="breadcrumb">
        <li><a href="http://localhost:8080/Project/Login.jsp">SIGN IN</a></li>
        <li><a href="http://localhost:8080/Project/Register.jsp">SIGN UP</a></li>
        <li><a href="#">1800-123-1555</a></li>
        <li><a href="http://localhost:8080/Project/Cart.jsp">CART <img src="images\bag.png"  width="25" height="25"></a></li>
        <li><a href="http://localhost:8080/Project/Wishlist.jsp">WISHLIST</a></li>
        
        </ul>
        </body>

    </body>
</html>