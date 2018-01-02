<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div>
<%@ include file = "Header.jsp" %>
<%@ include file = "SubHeader.jsp" %></div>

<html>
    <head>
        <style>
            //.mySlides {display:none;}
 
            .abs {
            position: absolute;
            top: 120px;
            left: 300px;
        }
        
        
.lab3 {
       text-align:center;
        font-size: 25px;
        font-family: "Georgia";
        position: absolute;
        right: 300px;
        top: 850px;
        color: white; 
        width: 750px;
        display: inline;
        vertical-align: 500px;
}
.footer {
          position: absolute;
          top: 950px;
          left: 300px;
          background-color: white;
        }
.boxy {
    padding: 10px;
    color: red;
    font-size: 16px;
    font-family: "Georgia";
    text-align: center;
    background-color: white;
    width: 70px;
    height: 50px;
}
.pos1 {
    position: absolute;
    right:160px;
    top: 580px;
}
.pos2 {
    position: absolute;
    right:60px;
    top: 580px;
}
.pos3 {
    position: absolute;
    right:160px;
    top: 660px;
}
.pos4 {
    //padding: 20px;
    position: absolute;
    right:60px;
    top: 660px;
}
hr {
    position: absolute;
    top: 820px;
    right: 320px;   
    
}
        </style>
    </head>
    <body>
         <%
                //PrintWriter pw=null;
                //String id1=request.getParameter("id2");
        %>
        <div class="abs" >
        <img class="mySlides w3-center w3-animate-bottom" alt="no. 1" style="width:730px; height:700px" src="images\C1.jpg">
        <img class="mySlides w3-center w3-animate-bottom" alt="no. 2" style="width:730px; height:700px" src="images\C2.jpg">
        <img class="mySlides w3-center w3-animate-bottom" alt="no. 3" style="width:730px; height:700px" src="images\C3.jpg">
        <img class="mySlides w3-center w3-animate-bottom" alt="no. 4" style="width:730px; height:700px" src="images\C4.jpg">
        </div>
       
        <div class="boxy pos1"><a href="http://localhost:8080/Project/M-Casual.jsp">VIEW MEN</a></div>
        <div class="boxy pos2"><a href="http://localhost:8080/Project/W-Teenager.jsp">VIEW WOMEN</a></div>
        <div class="boxy pos3"><a href="http://localhost:8080/Project/Brands.jsp?id=Boys">VIEW KIDS</a></div>
        <div class="boxy pos4"><a href="http://localhost:8080/Project/Brands.jsp?id=Infants">VIEW INFANTS</a></div>
        <hr width="730">
        <label class="lab3" >
            <b>EXPERIENCE</b> AN <b>EXCLUSIVE BRANDS.</b>
            HAVE FUN AND SAVE MONEY AT OUR <b>APPAREL</b> HOUSE.
        </label>
        
        <div class="footer">
        <fieldset style="width:990px; height:210px;">
            <center>
        <p>© Bindals apparel house ESTD. 1981. All rights reserved with the bindals</p>
        <p>Main Office: 47, Bunglow Road, Kamla Nagar, Delhi - 110007, India Contact No. 91-11-27667495 , 27667691
        Connaught Place (Delhi) Opposite Gate No. 2, Palika Bazar, Connaught Place, New Delhi- 110001, India Contact No. +91-11-23352335
        \
        Rajouri Garden (New Delhi) H-12, Rajouri Garden Main Market, New Delhi- 110027, India Contact No. +91-11-23352335
        Laxmi Nagar (New Delhi) V3S East Centre Laxmi Nagar, New Delhi- 110092, India Contact No. +91-11- xxxxxxxxx
        Meerut 47, Bunglow Road Abu Ln, Sadar Bazaar Meerut, Uttar Pradesh 250001
        Moradabad Moradabad,Uttar Pradesh 
        Lucknow 7/9,shahnajaf road,opp. saharaGanj mall, Lucknow, India 226001 
        Ghaziabad 54 A, Model Town West, GT Road, Uttar Pradesh, India
        Muzaffarnagar Muzaffarnagar, Uttar Pradesh</p>

        Buy men's wear, women wear, kids wear , infant wear, baby wear of all top brands from levis, pepe, ucb, j hampstead, louise phillipe, allan solly, mufti, proline, wrangler and many more..
                </center>
        </fieldset>
        </div>
       
            
        
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2500);    
}
</script>

</body>
</html>
