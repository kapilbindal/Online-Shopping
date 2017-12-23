<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file = "Header.jsp" %>
<%@ include file = "SubHeader.jsp" %></div>

<html>
<head>
    <style>
        fieldset {
            
            position: absolute;
            top: 120px;
            left: 450px;
        }
 
font {
    color: darkorange; 
}
legend {
    color: yellow;
    font-size: 50px;
}
    </style>
</head>
<body>
     
<center>
    <br>
    <fieldset style="width:400px; height:400px;">
        <legend>Login</legend>
<b>
<form action = "http://localhost:8080/Project/LoginServlet" method = "post" >
    <font size = "5">Usernames&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;<font style="color: #DC143C;">.</font></font><br>
<input type = "text" name = "t1" style = "height:23px; width:350px" required><br><br>

<div><font size = "5">Password &emsp;&emsp;&emsp;&emsp;&emsp;</font>
<small><a href = "">Forgot Password</a></small><br>
<input type = "password" name = "t2" style = "height:23px; width:350px" required></div><br><br>

<input type="submit" value="Login"  style = "width:350px; height:33px; background-color:yellowgreen"><br><br><br><br><br>
</form>
    <small style="color: yellow;">New Here?</small><br>
<input type="submit" value="Create your account" onclick = "location.href ='http://localhost:8080/Project/Register.jsp'" style = "width:350px; height:30px; background-color:orangered">

</b>
</fieldset>

</center>
</body>
</html>