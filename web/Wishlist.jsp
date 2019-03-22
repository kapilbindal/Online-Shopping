<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file = "Header.jsp" %>
<%@ include file = "SubHead.jsp" %>

<html>
    <head>
        <style>        
        .left {
    position: absolute;
    top: 130px;
    left: 30%;
}
.wish{
    width: 50px;
    height: 400px;
    position: absolute;
  left: 330px;
  top: 170px;
  border-radius: 10px;
  background-color: #f4511e;
  border: none;
    box-shadow: 0 4px #999;
    text-align: center;
  color: #FFFFFF;
  font-size: 40px;
}
.button {
  display: inline-block;
  width: 200px;
  height: 45px;
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

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
    
div.gallery {
 padding: 5px;
 margin-top:80px;
 margin-left: 50px;
 border: 1px solid #ccc;
 left: 300px;
 float: right ;
 width: 300px;
 height: 400px;
 border-style: hidden;
}

.desc {
  text-align: center;
  font-size: 25px;
  font-family: "Comic Sans MS", cursive, sans-serif;
}
            
.image {
  opacity: 1;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

.gallery:hover .image {
  opacity: 0.7;
}
select{
    border-radius: 5px;
    width: 60px;
    height: 25px;
    font-size: 25px;
    border: hidden;
    padding-right: 10px;
    direction: rtl; 
}
select::-ms-expand {
display: none;
}
        </style>
    </head>
    <body>
        <form name="form2">
            <div>                 
                
            <%
                try
                {
                    Connection con;
                    Statement st;
                    PreparedStatement st1;
                    ResultSet rs,rs1;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "K@pil1998");
                    st = con.createStatement();
                     rs1 = st.executeQuery("select count(*) from Wishlist");
                    int row=0;
                    while(rs1.next()){
                    row = rs1.getInt(1);
                    }
                    if(row == 0){
                        %>
                        <div>                 
                <fieldset  class="left" style="width:55%; ">
                        <h1 style='font-family: antigua; color: yellow; padding-left: 25%; font-size: 36px'>Your Wishlist is Empty</h1>
                        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                        </fieldset>
                  </div>
                        
                        <%
                    }
                    %>
                      <fieldset  class="left" style="width:55%; ">
                    <%
                    rs = st.executeQuery("select * from Wishlist");
                while(rs.next())
                {
                %>
              
                <table border="1" width="100%">
                <tr>
                    <td rowspan="6"  width="10%"><img class="image" src="<%= rs.getString(2) %>" style="width:300px; height:300px;"></td>
                    <td colspan="2"  class="desc"><b><%= rs.getString(3)%></b></td>
                </tr>             
                <tr>
                    <td  width="45%"class="desc" align="center" ><font color="yellow">&nbsp;&nbsp;Rs.<%= rs.getString(5)%></font>&nbsp;&nbsp;&nbsp;
                    <font color="yellow"><strike>Rs.<%= rs.getString(4)%></strike></font>&nbsp;&nbsp;&nbsp;
                    <font color="blue"><%= rs.getString(6)%>&nbsp;</font></td>                 
                    <td class="desc" width="35%">&nbsp;&nbsp;&nbsp;Size:
                        <% if(rs.getString(10).equals("Shirt")){%>
                                <select id="<%=rs.getString(1)%>">
                                    <option value="36">36</option>
                                    <option value="38">38</option>
                                    <option value="40">40</option>
                                    <option value="42">42</option>
                                    <option value="44">44</option>
                                </select>
                                <%
                                    }
                                else if(rs.getString(10).equals("T-Shirt")|| rs.getString(10).equals("Tops")|| rs.getString(10).equals("Jacket") || rs.getString(10).equals("Kurta")) {
                                %>
                                <select id="<%=rs.getString(1)%>">
                                    <option value="S">S</option>
                                    <option value="M">M</option>
                                    <option value="L">L</option>
                                    <option value="XL">XL</option>
                                </select>
                                    <%
                                    }
                                else if(rs.getString(10).equals("Shoes")) {
                                %>
                                <select id="<%=rs.getString(1)%>">
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                </select>
                                        <%
                                    }
                                else if(rs.getString(10).equals("Shoes")) {
                                %>
                                <select id="<%=rs.getString(1)%>">
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                </select>
                                    <%
                                    }
                                else if(rs.getString(10).equals("Design")) {
                                %>
                                <select id="<%=rs.getString(1)%>">
                                    <option value="OneSize">OneSize</option>
                                    
                                </select>
                                    <%
                                }
                                    else if(rs.getString(10).equals("WShoes")) {
                                %>
                                <select id="<%=rs.getString(1)%>">
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                </select>
                                     <%
                                    }
                                else if(rs.getString(10).equals("skirt") || rs.getString(10).equals("Sweatshirt")) {
                                %>
                                <select id="<%=rs.getString(1)%>">
                                    <option value="6">6</option>
                                    <option value="8">8</option>
                                    <option value="10">10</option>
                                    <option value="12">12</option>
                                    <option value="14">14</option>
                                    <option value="16">16</option>
                                </select>
                                    <%
                                    }
                                else if(rs.getString(10).equals("KidsWear")) {
                                %>
                                <select id="<%=rs.getString(1)%>">
                                    <option value="2-3Y">2-3Y</option>
                                    <option value="3-4Y">3-4Y</option>
                                    <option value="4-5Y">4-5Y</option>
                                    <option value="5-6Y">5-6Y</option>
                                    <option value="6-7Y">6-7Y</option>
                                </select>
                                    <%
                                    }
                                else if(rs.getString(10).equals("InfantsWear")) {
                                %>
                                <select id="<%=rs.getString(1)%>">
                                    <option value="Newborn">Newborn</option>
                                    <option value="0-3M">0-3M</option>
                                    <option value="3-6M">3-6M</option>
                                    <option value="6-9M">6-9M</option>
                                    <option value="9-12M">9-12M</option>
                                </select>
                                    <%
                                    }
                                else if(rs.getString(10).equals("IShoes")) {
                                %>
                                <select id="<%=rs.getString(1)%>">
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                </select>
                                <% }
                                else if(rs.getString(10).equals("Jeans")|| rs.getString(10).equals("Shorts")){  
                                %>
                                <select id="<%=rs.getString(1)%>">
                                    <option value="28">28</option>
                                    <option value="30">30</option>
                                    <option value="32">32</option>
                                    <option value="34">34</option>
                                    <option value="36">36</option>
                                </select>
                                <%
                                }
                                %>
                    </td>
<!--                    <td class="desc2">&nbsp;&nbsp;&nbsp;Qty:
                        <select id="<%= rs.getString(1)%>">
                            <option value="1"selected><%= rs.getString(7)%></option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3" >3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </td>                    -->
                    
                </tr>
                
                <tr>
                    <td colspan="3">&nbsp;<button class="button" onclick="editRecord(<%=rs.getString(1)%>);">ADD TO CART</button>
                        <button class="button" onclick="deleteRecord(<%=rs.getString(1)%>);">DELETE</button></td>
                </tr>
                </table> 
                  <% } %>
                   <%
                
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
                %> 
                </fieldset>
                  </div>
                <div class="wish">
                    W<br>I<br>S<br>H<br>L<br>I<br>S<br>T
                </div>
        </form>
    </body>
     <script  type="text/javascript">
            function editRecord(id){
                var sel= document.getElementById(id);
                var selValue = sel.options[sel.selectedIndex].value;
                var f=document.form2;
                f.method="post";
                f.action="http://localhost:8080/Project/To_cart_from_wish?id="+id+"&id2="+selValue;
                f.submit();
            }
            function deleteRecord(del){
            var f=document.form2;
            f.method="post";
            f.action='http://localhost:8080/Project/deleteItem2?del='+del;
            f.submit();
        }
            
        </script>
</html>
