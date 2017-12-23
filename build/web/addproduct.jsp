<%@ include file = "Header.jsp" %>
<%@ include file = "Admin_Page.jsp" %>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .place {
                position: absolute;
                left: 330px;
                top: 30px;
            }
        </style>
    </head>
    <body>  
        <div class="place">
        <form action="http://localhost:8080/Project/Addprod" method="post">
                <table>
                <tr>
                <td><input type="text" name="S.No"></td> 
                <td><input type="text" name="ProductId"></td>
                <td><input type="text" name="Name"></td>
                <td><input type="text" name="Brand"></td>
                <td><input type="text" name="Price"></td>
                <td><input type="text" name="Specs"></td>
                
                <td><input type="submit" name="Submit" value="ADD" style="background-color:yellow; width: 75px;"></td>
                </tr>
                </table>
        </form></div>
    </body>
</html>
