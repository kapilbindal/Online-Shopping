<%@ include file = "Header.jsp" %>
<%@ include file = "Admin_Page.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <style>
            .place {
                position: absolute;
                left: 400px;
                top: 30px;
            }
        </style>
    </head>
    <body>
         <div class="place">
         <form action="http://localhost:8080/Project/AddSupply" method="post">
                <table>
                <tr>
                <td><input type="text" name="S.No"></td> 
                <td><input type="text" name="SupplierId"></td>
                <td><input type="text" name="Name"></td>
                <td><input type="text" name="SuppliedItem"></td>
                <td><input type="text" name="Company"></td>
             
                <td><input type="submit" name="Submit" value="Add" style="background-color:yellow; width: 75px;"></td>
                </tr>
                </table>
        </form>
         </div>
    </body>
</html>
