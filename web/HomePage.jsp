<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div>
<%@ include file = "Header.jsp" %>
<%@ include file = "SubHeader.jsp" %></div>

<html>
    <head>
        <style>
            .abs {
            position: absolute;
            top: 120px;
            left: 370px;
        }
        
        
.lab3 {
       text-align:center;
        font-size: 25px;
        font-family: "Georgia";
        position: absolute;
        right: 175px;
        top: 850px;
        color: white; 
        width: 750px;
        display: inline;
        vertical-align: 500px;
}
.footer {
          position: absolute;
          top: 950px;
          left: 310px;
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
    position: absolute;
    right:60px;
    top: 660px;
}
hr {
    position: absolute;
    top: 820px;
    right: 150px;   
    
}
        </style>
    </head>
    <body>
         <%
                //PrintWriter pw=null;
                //String id1=request.getParameter("id2");
        %>
        <div class="abs" >
        <img class="mySlides w3-center w3-animate-bottom" alt="no. 1" style="width:830px; height:700px" src="images\C1.jpg">
        <img class="mySlides w3-center w3-animate-bottom" alt="no. 2" style="width:830px; height:700px" src="images\C2.jpg">
        <img class="mySlides w3-center w3-animate-bottom" alt="no. 3" style="width:830px; height:700px" src="images\C3.jpg">
        <img class="mySlides w3-center w3-animate-bottom" alt="no. 4" style="width:830px; height:700px" src="images\C4.jpg">
        </div>
        <hr width="830">
        <label class="lab3" >
            <b>EXPERIENCE</b> AN <b>EXCLUSIVE BRANDS.</b>
            HAVE FUN AND SAVE MONEY AT OUR <b>APPAREL</b> HOUSE.
        </label>
        
        <div class="footer">
        <fieldset style="width:990px; height:120px;">
            <center>
        <p>© Bindals apparel house ESTD. 1981. All rights reserved with the bindals</p>
        <p>Main Office: 47, Bunglow Road, Kamla Nagar, Delhi - 110007, India Contact No. 91-11-27667495 , 27667691
        Connaught Place (Delhi) Opposite Gate No. 2, Palika Bazar, Connaught Place, New Delhi- 110001, India Contact No. +91-11-23352335
        \
        Rajouri Garden (New Delhi) H-12, Rajouri Garden Main Market, New Delhi- 110027, India Contact No. +91-11-23352335
        Laxmi Nagar (New Delhi) V3S East Centre Laxmi Nagar, New Delhi- 110092, India Contact No. +91-11- xxxxxxxxx
        </p>
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
