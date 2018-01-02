<%@page import="java.sql.Statement"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file = "Header.jsp" %>
<%@ include file = "SubHead.jsp" %>

<html>
    <head>
       
<style>        

.button {
  display: inline-block;
  //padding: 15px 25px;
  //font-size: 24px;
  width: 140px;
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

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
    
div.gallery {
 //margin: 5px;
 //position: relative;
 padding: 5px;
 margin-top:100px;
 margin-left: 50px;
 border: 1px solid #ccc;
 left: 300px;
 float: right ;
 width: 300px;
 height: 400px;
 border-style: hidden;
 //font: italic bold 12px/30px Georgia, serif;
}

div.desc {
// padding: 15px;
  text-align: center;
  font-family: "Comic Sans MS", cursive, sans-serif;
}
/*            
.image {
  opacity: 1;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}*/

.gallery:hover .image {
  opacity: 0.7;
}
select{
    border-radius: 5px;
    width: 50px;
    border: hidden;
    //text-align-last:right;
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
            <%
                PrintWriter pw=null;
                String id=request.getParameter("id");
                try
                {
                    Connection con;
                    Statement st;
                    PreparedStatement st1;
                    ResultSet rs;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "K@pil1998");
                    st = con.createStatement();
                    rs = st.executeQuery("select * from Image where Brand='"+id+"' ");
                while(rs.next())
                {
                %>
                <div class="gallery" style="border: thin solid white; border-radius: 7px;">
                            <img class="image" src="<%= rs.getString(5) %>"  style="width:300px; height:300px; border-radius: 7px;" >
                            <div class="desc"> 
                                <%=rs.getString(6)%><br>
                                <font color="yellow"><strike>Rs.<%=rs.getString(7)%></strike>&nbsp;&nbsp;Rs.<%=rs.getString(8)%></font><font color="blue">&nbsp<%=rs.getString(9)%></font>
                                &nbsp;Sizes: 
                                <% if(rs.getString(4).equals("Shirt")){%>
                                <select id="<%=rs.getString(1)%>">
                                    <option value="36">36</option>
                                    <option value="38">38</option>
                                    <option value="40">40</option>
                                    <option value="42">42</option>
                                    <option value="44">44</option>
                                </select>
                                    <%
                                    }
                                else if(rs.getString(4).equals("Shoes")) {
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
                                else if(rs.getString(4).equals("Design")) {
                                %>
                                <select id="<%=rs.getString(1)%>">
                                    <option value="OneSize">OneSize</option>
                                </select>
                                        <%
                                    }
                                else if(rs.getString(4).equals("KShoes")) {
                                %>
                                <select id="<%=rs.getString(1)%>">
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                </select>
                                         <%
                                    }
                                else if(rs.getString(4).equals("KidsWear")) {
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
                                <%
                                    }
                                else if(rs.getString(4).equals("T-Shirt")|| rs.getString(4).equals("Tops") || rs.getString(4).equals("Jacket") || rs.getString(4).equals("Kurta")) {
                                %>
                                <select id="<%=rs.getString(1)%>">
                                    <option value="S">S</option>
                                    <option value="M">M</option>
                                    <option value="L">L</option>
                                    <option value="XL">XL</option>
                                </select>
                                      <%
                                    }
                                else if(rs.getString(4).equals("skirt") || rs.getString(4).equals("Sweatshirt")) {
                                %>
                                <select id="<%=rs.getString(1)%>">
                                    <option value="6">6</option>
                                    <option value="8">8</option>
                                    <option value="10">10</option>
                                    <option value="12">12</option>
                                    <option value="14">14</option>
                                </select>
                                <%
                                }
                                    else if(rs.getString(4).equals("WShoes")) {
                                %>
                                <select id="<%=rs.getString(1)%>">
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                </select>
                                <% }
                                else if(rs.getString(4).equals("Jeans")||rs.getString(4).equals("Shorts")){  
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
                                <br>
                                <button class="button" onclick="AddToWish(<%=rs.getString(1)%>);">SAVE</button>
                                <button class="button" onclick="editRecord(<%=rs.getString(1)%>);">ADD TO CART</button>
                            </div>
                </div>                           
                  <% } %>    
        </form>
    </body>
     <script  type="text/javascript">
            function editRecord(id){
                var sel= document.getElementById(id);
                var selValue = sel.options[sel.selectedIndex].value;
                var f=document.form2;
                f.method="post";
                f.action="http://localhost:8080/Project/Add_to_Cart?id="+id+"&id2="+selValue;
                f.submit();
            }
             function AddToWish(id){
                var sel= document.getElementById(id);
                var selValue = sel.options[sel.selectedIndex].value;
                var f=document.form2;
                f.method="post";
                f.action="http://localhost:8080/Project/Add_to_Wishlist?id="+id+"&id2="+selValue;
                f.submit();
            }
         
         
        </script>
         <%
                
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
                %> 
         
        
</html>