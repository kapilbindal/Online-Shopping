
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ include file = "Header.jsp" %>
<%@ include file = "SubHead.jsp" %>

<html>
    <head>
        <style>
              div.gallery {
                margin: 5px;
                margin-top:100px;
                margin-left: 80px;
                border: 1px solid #ccc;
                left: 300px;
                float: right ;
                width: 150px;
                height: 200px;
            }
            .left {
    position: absolute;
    top: 130px;
    left: 330px;
}
.right{
    position: absolute;
    top: 245px;
    right: 8px;
}
.rightB{
    position: absolute;
    top: 430px;
    right: 8px;
}
.right0{
    position: absolute;
    top: 130px;
    right: 13px;
}
.button {
  display: inline-block;
  //padding: 15px 25px;
  //font-size: 24px;
  width: 150px;
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
.button1 {
  display: none;
  //padding: 15px 25px;
  //font-size: 24px;
  //margin-bottom: 17px;
  width: 100px;
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
.button3 {
  display: inline-block;
  //padding: 15px 25px;
  //font-size: 24px;
  width: 340px;
  height: 50px;
  cursor: pointer;
  text-align: center;
  font-size: 25px;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 4px #999;
}
.desc {
  //padding: 5px;
 // margin: 5px;
  text-align: center;
  font-family: "Comic Sans MS", cursive, sans-serif;
}
.desc2 {
// padding: 15px;
  //text-align: center;
  font-family: "Comic Sans MS", cursive, sans-serif;
}
select{
    border-radius: 5px;
    width: 50px;
    border: hidden;
    //text-align-last:right;
    padding-right: 20px;
    direction: rtl; 
}
select::-ms-expand {
display: none;
}
.amnt{
    position: absolute;
    top: 90px;
    left: 54%;
    font-size: 20px;
    color: #ff9900;
    //text-align: center;
  font-family: "Comic Sans MS", cursive, sans-serif;
}
.bag{
    position: absolute;
    top: 45px;
    left: 25%;
    font-size: 35px;
    color: #ff9900;
    //text-align: center;
  font-family: "Comic Sans MS", cursive, sans-serif;
}

        </style>
    
    <script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
    
    </head>
    <body><form name="form2">
        <div>                 
                <fieldset  class="left" style="width:44%; ">
                <% 
                    int TAmount=0,pay=0,tax=0;
                try
                {
                    Connection con;
                    Statement st;
                    PreparedStatement st1;
                    ResultSet rs,rs1;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "K@pil1998");
                    st = con.createStatement();
                    rs1 = st.executeQuery("select count(*) from Cart");
                    int row=0;
                    while(rs1.next()){
                    row = rs1.getInt(1);
                    }
                    if(row == 0){
                        %>
                        <h1 style='font-family: antigua; color: yellow; padding-left: 25%; font-size: 36px'>Your Cart is Empty</h1>
                        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                        <%
                    }
                    rs = st.executeQuery("select * from Cart");
                while(rs.next())
                {              
                    pay=pay+rs.getInt(5);
                    TAmount=TAmount+rs.getInt(4);
                    tax=pay/10;
                    
                %>
                <table width="55%">
                <tr>
                    <td rowspan="6"  width="10%"><img class="image" src="<%= rs.getString(2) %>" style="width:120px; height:150px;"></td>
                    <td width="35%" colspan="2"class="desc"><b><%= rs.getString(3)%></b></td>
                    <td colspan="2"  width="15%"class="desc" align="center"><font color="yellow">&nbsp;&nbsp;Rs.<%= rs.getString(5)%></font></td>
                </tr>             
                <tr>
                    <td class="desc2">&nbsp;&nbsp;&nbsp;Size:&emsp;<%= rs.getString(7)%>
                    </td>
                    <td class="desc2">&nbsp;&nbsp;&nbsp;Qty:
                        <select id="<%= rs.getString(1)%>">
                            <option value="1"selected><%= rs.getString(8)%></option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3" >3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </td>                    
                    <td class="desc"><font color="blue"><%= rs.getString(6)%>&nbsp;<font color="black">|</font></font></td>
                    <td class="desc"><font color="yellow"><strike>Rs.<%= rs.getString(4)%></strike></font></td>
                    
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp<button class="button" onclick="deleteRecord(<%=rs.getString(1)%>);">REMOVE</button>&nbsp;</td>
                    <td>&nbsp;&nbsp<button class="button" onclick="AddToWish(<%=rs.getString(1)%>);">SAVE FOR LATER</button>&nbsp;</td>
                    <td colspan="2">&nbsp;&nbsp<button class="button1" onclick="updateRecord(<%=rs.getString(1)%>);" id="<%= Integer.parseInt(rs.getString(1)) + 1000%>" >UPDATE</button>&nbsp;</td>
                </tr>
                </table>
              <%
                    
                }
                %>
          </fieldset>
                  </div>
                  <div>
                      <fieldset class="right" style="width:26%">
                          <table style=" width:100%; font-family: Comic Sans MS, cursive, sans-serif;">
                              <tr>
                                  <td width="200px"><b>ORDER SUMMARY</b></td>
                              </tr>
                              <tr>
                                  <td>Total Price</td>
                                  <td align='center'>Rs. <%= TAmount %></td>
                              </tr>
                              <tr>
                                  <td>Discount</td>
                                  <td align='center'>Rs. <%= TAmount - pay %></td>
                              </tr>
                              <tr>
                                  <td>Sub Total</td>
                                  <td align='center'>Rs. <%= pay %></td>
                              </tr>
                              <tr>
                                  <td>Tax</td>
                                  <td align='center'>Rs. <%= tax%></td>
                              </tr>
                              <tr>
                                  <td>Delivery</td>
                                  <td align='center'>FREE</td>
                              </tr>
                              
                          </table>
                      </fieldset>
                  </div>
                              <div>
                                  <fieldset class='right0' style="width:25%; border: thick dashed white">
                                      <table style="padding: 5px; font-family: Comic Sans MS, cursive, sans-serif;">
                                          <tr>
                                              <td><b>Standard Chartered Offer</b></td>
                                          </tr>
                                          <tr>
                                              <td><i>10% Additional Cashback upto Rs 500 on Debit & Credit cards. Min. spend Rs 2500.</i></td>
                                          </tr>
                                      </table>
                                  </fieldset>
                              </div>
                              <div>
                                  <fieldset class="rightB" style="width:26%">
                                    <table style="padding: 2px; font-family: Comic Sans MS, cursive, sans-serif;">
                                        <tr>
                                            <td width="200px"><b>TOTAL PAYABLE</b></td>
                                            <td align='center'>Rs. <%= pay + tax %></td>
                                        </tr>
                                        <tr>
                                            <td><br></td>
                                        </tr>
                                        
                                        <tr>
                                            <td colspan="2"><button class='button3'>PLACE ORDER</button></td>
                                        </tr>
                                    </table>

                                  </fieldset>
                              </div>
                <h1 class="bag">Your Shopping Bag (<%= row %>)</h1>
                 <h1 class="amnt">Total Amount: Rs.<%= pay %></h1>
</form>
                <%
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
                %> 
    </body>
    
    <script>
               
        $(document).ready(function(){
            var selects = document.querySelectorAll("select");
            //console.log(selects.length);
            //console.log(selects);
            selects.forEach(function(selectElement){
                    var id = selectElement.id;
                    //console.log(id);
                    $("#"+id).change(function(){
                    console.log("ID is "+id);
                            $(this).find("option:selected").each(function(){
                                    var optionValue = parseInt($(this).attr("value"));
                                        console.log("optionValue is "+optionValue);
                                        var temp = parseInt(id);
                                        temp=temp+1000;
                                        console.log("temp is "+temp);
                                        $("#"+temp).show();
                            })
                    })
            });
        });
        function updateRecord(id){
            var sel= document.getElementById(id);
            var selValue = sel.options[sel.selectedIndex].value;
            var f=document.form2;
            f.method="post";
            f.action="http://localhost:8080/Project/update_cart?id="+id+"&id2="+selValue;
            f.submit();
        }
        function deleteRecord(del){
            var f=document.form2;
            f.method="post";
            f.action='http://localhost:8080/Project/deleteItem?del='+del;
            f.submit();
        }
        function AddToWish(id){
                var sel= document.getElementById(id);
                var selValue = sel.options[sel.selectedIndex].value;
                var f=document.form2;
                f.method="post";
                f.action="http://localhost:8080/Project/Add_from_Cart?id="+id+"&id2="+selValue;
                f.submit();
            }
         
    </script>

        
</html>