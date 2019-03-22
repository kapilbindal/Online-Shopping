<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file = "Header.jsp" %>
<%@ include file = "SubHeader.jsp" %>
<html>
<head>
    <style>
        .inp {
            background-color: #DC143C;
            width: 200px;
            height: 25px;
            color: black;
        }
         .order{
               position: absolute;
                top: 10%;
                right: 45%;
                font-size: 25px;
                color: #33cc33;
            }
        input {
            background-color: #DC143C;
        }
        legend {
            color: yellow;
               font-size: 50px;
        }
        fieldset {
            
            position: absolute;
            top: 120px;
            left: 400px;
        }
        
          
font {
    color: darkorange; 
}
    </style>
</head>
<body>
    <%   String i=request.getParameter("id");
         if(i == null){
    %>
    <h1 class="order"></h1>
    <% } else{ %>
    <h1 class="order"><%= i %></h1>
    <% } %>
        
<form action = "http://localhost:8080/Project/RegisterServlet" method = "post">
<center>
<br>
<fieldset style="width:450px; height:500px;">
    <legend>Register</legend>
    <b>
    <table height = "400" width = "450" border = "0">
<tr>
    <td colspan = "2" align = "center"><font size="5">Your good Name</td></tr>
<tr>
    <td  align = "center"><input class="inp" type = "text" name = "n1" placeholder = "First Name" required></td>
<td  align = "center"><input class="inp" type = "text" name = "n2" placeholder = "Last Name" required></td>
</tr>
<tr>
    <td  align = "center"><font size="5">Username </td>
<td  align = "center"><input class="inp" type = "email" name = "u1" width="48%"  placeholder = "@gmail.com" required></td>
</tr>
<tr>
<td  align = "center"><font size="5">Password</td>
<td  align = "center"><input class="inp" type = "password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required></td>
</tr>
<tr>
<td  align = "center"><font size="5">Confirm Password</td>
<td  align = "center"><input class="inp" type = "password" name="confirm_password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required></td>
</tr>
<tr><td  align = "center"><font size="5">Birthday</td>
<td  align = "center"><input class="inp"type = "date" name = "budday" required></td>
</tr>
<tr>
<td  align = "center"><font size="5">Gender</td>
<td  align = "center"><input type = "radio" name = "gender" value = "male" checked required><font size="5">Male<br>
<input type = "radio" name = "gender" value = "female" required>Female<br>
<input type = "radio" name = "gender" value = "other" required>Other</td>
</tr>
<tr><td  align = "center"><font size="5">Mobile Phone</td>
<td align = "center"><input class="inp" type = "number" name = "p2" maxlength = "10" title = "Only numbers accepted" required></td>
</tr>
<tr><td  align = "center"><font size="5">Location</td>
<td  align = "center"><input class="inp" type = "text" name = "p3" required></td>
</tr>
<tr>
<td><input type = "checkbox" name = "check" value = "checked" required><font size="5">Accept all T&C</td>
<td align = "center"><input type = "reset" style = "width:200px; height:30px; background-color:orangered;"></td>
</tr>
<tr>
    <td>&nbsp;</td>
</tr>
<tr>
<td  align = "center" colspan = "2"><input type = "submit" value = "Submit" style = "width:400px; height:30px; background-color:yellow"></td>
</tr>

</table>
    </fieldset>
</center>
</form>
</body>
</html>
