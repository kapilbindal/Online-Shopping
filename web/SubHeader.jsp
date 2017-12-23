<%-- 
    Document   : SubHeader
    Created on : 18 Oct, 2017, 1:06:36 PM
    Author     : KAPIL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
          .pos{
            position: absolute;
            right: 30px;
            top: 120px;
            font-size: 30px;
            font-family: "Georgia";
            color: white;
        }
        
        .lab {
        font-size: 30px;
        font-family: "Georgia";
        position: absolute;
        right: 30px;
        top: 200px;
        color: white; 
        width: 250px;
        display: inline;
        vertical-align: 500px;
}
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
.lab2 {
        font-size: 25px;
        font-family: "Georgia";
        position: absolute;
        right: 30px;
        top: 350px;
        color: white; 
        width: 250px;
        display: inline;
        vertical-align: 500px;
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
        <div class="pos">
            <b>We are BINDAL'S</b>
        </div>
        <label class="lab">
        YOUR ONE-STOP FASHION DESTINATION
        </label>
        <label class="lab2">
        Shop from over 850 of the best brands and labels. Plus, get your daily fix of the freshest style.
        </label>
    </body>

    </body>
</html>