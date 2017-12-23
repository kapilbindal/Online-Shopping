<%@page import="java.sql.Statement"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file = "Header.jsp" %>
<html>
    <head>
<style type="text/css">
    //.container {
    //height:100px;
    //width:600px;
    //background-color:gray;       
//}
.left {
    position: absolute;
    left: 320px;
    top: 80px;
}
    tr, td {
    border-bottom: 1px solid #ddd;
}
    //tr:nth-child(even) {background-color: }
    tr:hover {
        background-color:gold; 
    }
    tr:last-child:hover {
        background-color: #DC143C; 
    }
    tr:first-child:hover {
        background-color: #DC143C; 
    }
   
.hidden {
    display: none;
}
fieldset {
   border:0 none;
}
.button1 {
  display: inline-block;
  //padding: 15px 25px;
  //font-size: 24px;
  width: 250px;
  height: 25px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 4px #999;
}

.button {
  display: inline-block;
  height: 400px;
  width: 30px;
  position: absolute;
  left: 290px;
  top: 100px;
  border-radius: 10px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  box-shadow: 0 4px #999;
  //text-align: center;
  font-size: 20px;
  //padding: 20px;
  //width: 200px;
  //transition: all 0.5s;
  //cursor: pointer;
 // margin: 5px;
}   
</style>
        <script language="javascript">
function onsubmitform()
{
    if(document.pressed == "ADD PRODUCT")
        {
        document.form.action = "addproduct.jsp";         
        }
     
else if(document.pressed == "ADD SUPPLIER")
    {
    document.form2.action = "addsupplier.jsp";
    }
}
     
            
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='http://localhost:8080/Project/editproduct.jsp?id='+id;
    f.submit();
}

function deleteRecord(id){
    var f=document.form;
    f.method="post";
    f.action='http://localhost:8080/Project/deleteproduct?id='+id;
    f.submit();
}
function editSRecord(id){
    var f=document.form2;
    f.method="post";
    f.action='http://localhost:8080/Project/editsupply.jsp?id='+id;
    f.submit();
}

function deleteSRecord(id){
    var f=document.form2;
    f.method="post";
    f.action='http://localhost:8080/Project/deletesupply?id='+id;
    f.submit();
}
function toggle(layer){
    var d = document.getElementById(layer);
    d.style.display = (d.style.display == 'none')?'':'none';
}

function myFunction() {
    var x = document.getElementById("pro");
    var y = document.getElementById("sup");

    if (x.style.display === "none") {
        x.style.display = "block";
        y.style.display = "none";
    } else {
        x.style.display = "none";
        y.style.display = "block";
    }
}
</script>
        
    </head>
    <body>
        <br>         
        <button class="button left2" onclick="myFunction()">S<br>W<br>I<br>T<br>C<br>H<br><br>T<br>A<br>B<br>L<br>E</button><br>
            <div id = "pro" class="left">
            <fieldset>
                <legend align="center"><font size = "6"><b>PRODUCT INFO</b></font></legend>
                    <form method="post" name="form" onsubmit = "return onsubmitform();">
                        <center>
                            <table bgcolor="#FFFACD">
                        <tr  bgcolor="#F08080">
                            <td align = "center"><b>S.NO</b></td>
                            <td width = "15%" align = "center"><b>PRODUCT ID</b></td>
                            <td width = "15%" align = "center"><b>NAME</b></td>
                            <td width = "15%" align = "center"><b>BRAND</b></td>
                            <td width = "15%" align = "center"><b>PRICE</b></td>
                            <td align = "center"><b>SPECIFICATION</b></td>
                            <td colspan="2" align = "center"><b>MODIFY</b></td>
                        </tr>
                <%
                try
                {
                    Connection con;
                    Statement st;
                    ResultSet rs;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "K@pil1998");
                    st = con.createStatement();
                    rs = st.executeQuery("select * from ProductInfo");
                while(rs.next())
                {
                %>
                    
                    <tr> 
                    <td  width = "15%" col height = "20" align = "center"><%= rs.getString(1) %></td>
                    <td align = "center"><%= rs.getString(2) %></td>
                    <td align = "center"><%= rs.getString(3) %></td>
                    <td align = "center"><%= rs.getString(4) %></td>
                    <td align = "center"><%= rs.getString(5) %></td>
                    <td align = "center"><%= rs.getString(6) %></td>
                    <td><button onclick="editRecord(<%=rs.getString(1)%>);"  style = "background-color:gold">EDIT</button></td>
                    <td><button onclick="deleteRecord(<%=rs.getString(1)%>);" style = "background-color:gold">DELETE</button></td>
                    </tr>                    
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
                
                <tr bgcolor="#DC143C">                   
                    <td colspan="8" align = "center"><button class="button1" onclick = "document.pressed = this.value" value = "ADD PRODUCT">ADD PRODUCT</button></td>
                </tr>
                </table> 
                        </center>
                </form>               
                </fieldset>
                </div>
                
                <div id="sup" class="left hidden">
                <fieldset>
                    <legend align="center"><font size = "6"><b>SUPPLIER INFO</b></font></legend>
                    <form method="post" name="form2" onsubmit = "return onsubmitform();" >
                        <center>
                        <table bgcolor="#FFFACD">
                        <tr  bgcolor="#F08080">
                            <td width = "15%" col height = "20" align = "center"><b>S.NO</b></td>
                            <td width = "16%" align = "center"><b>SUPPLIER ID</b></td>
                            <td width = "25%" align = "center"><b>SUPPLIER NAME</b></td>
                            <td width = "20%" align = "center"><b>SUPPLIED ITEMS</b></td>
                            <td  align = "center"><b>COMPANY</b></td>
                            <td  colspan="2" align = "center"><b>MODIFY</b></td>
                        </tr>
                <%
                try
                {
                    Connection con;
                    Statement st;
                    ResultSet rs;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "K@pil1998");
                    st = con.createStatement();
                    rs = st.executeQuery("select * from SupplierInfo");
                while(rs.next())
                {
                %>
                    
                    <tr> 
                    <td col height = "20" align = "center"><%= rs.getString(1) %></td>
                    <td align = "center"><%= rs.getString(2) %></td>
                    <td align = "center"><%= rs.getString(3) %></td>
                    <td align = "center"><%= rs.getString(4) %></td>
                    <td align = "center"><%= rs.getString(5) %></td>
                    <td><button onclick="editSRecord(<%=rs.getString(1)%>);"  style = "background-color:gold">EDIT</button></td>
                    <td><button onclick="deleteSRecord(<%=rs.getString(1)%>);" style = "background-color:gold">DELETE</button></td>
                    </tr>                    
                <%
                }
                %>
                <tr bgcolor="#DC143C">                    
                    <td colspan="8" align = "center"><button class="button1" onclick = "document.pressed = this.value" value = "ADD SUPPLIER">ADD SUPPLIER</button></td>
                </tr>
                <%
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
                %>
                </table> 
                        </center>
                </form>
                </fieldset>
                </div>
    </body>
</html>