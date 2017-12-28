<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">        <style>
            .smal {
            position: absolute;
            position: fixed;
            color: white;
            left: 10px;
            top : 80px;
            font-size: 20px;
            font-family: "Times New Roman";
}

.fa {
  padding: 10px;
  font-size: 20px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  //margin: 5px 2px;
  border-radius: 50%;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}
.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}
    .h {
            //position: absolute;
            color: white;
            left: 25px;
            top : 10px;
            font-size: 70px;
            font-family: "Calibri";
            position: fixed;
}
        
.mainmenu {
    position: absolute;
    top: 200px;
    left: 40px;   
    list-style-type: none;
    text-align: center;
    margin: 0;
    padding: 0;
    width: 15%;
    height: 100%;
    position: fixed;
    overflow: auto;
    font-size: 20px;
}
li {
     border-bottom: 1px solid white;
     font-family: "Times New Roman";
}
li a{
       color: white;
       text-decoration: none;
}
li:last-child {
    border-bottom: none;
}

.submenu{
  list-style: none;
  padding: 0;
  margin: 0;
}

li:hover .submenu {
  max-height: 200px;
}
.submenu li{
    border-bottom: none;
}
.submenu {
  font-size: 15px;
  overflow: hidden;
  //text-align: start ;
  max-height: 0;
  //-webkit-transition: all 0.5s ease-out;
}

          .pos{
            position: absolute;
            right: 30px;
            top: 120px;
            font-size: 30px;
            font-family: "Georgia";
            color: white;
        }
        
        .lab {
        font-size: 30px;
        font-family: "Georgia";
        position: absolute;
        right: 30px;
        top: 200px;
        color: white; 
        width: 250px;
        display: inline;
        vertical-align: 500px;
}
.lab2 {
        font-size: 25px;
        font-family: "Georgia";
        position: absolute;
        right: 30px;
        top: 350px;
        color: white; 
        width: 250px;
        display: inline;
        vertical-align: 500px;
}
</style>
    
    </head>
    <body bgcolor="#DC143C" >
        <div>
        <div class="h"><b>Bindal's</b></div>
        <div class="smal">PREMIUM FAMILY DRESSING</div>
       
        
        <ul class="mainmenu">
          <li><a href="http://localhost:8080/Project/HomePage.jsp"> &nbsp; HOME</a></li>
          <li><a>&nbsp; MENS</a>
              <ul class="submenu">
              <li><a href="http://localhost:8080/Project/M-Sports.jsp">SPORTS WEAR</a></li>
              <li><a href="http://localhost:8080/Project/M-Casual.jsp">CASUAL WEAR</a></li>
              <li><a href="http://localhost:8080/Project/Brands.jsp?id=Formal">FORMAL WEAR</a></li>
              <li><a href="http://localhost:8080/Project/Brands.jsp?id=Wedding">WEDDING WEAR</a></li>
              </ul>
          </li>
          <li><a> &nbsp; WOMEN</a>
          <ul class="submenu">
              <li><a href="http://localhost:8080/Project/W-Teenager.jsp">TEENAGER</a></li>
              <li><a href="">NIGHT WEAR</a></li>
              <li><a href="">DESIGNER SUIT</a></li>
              <li><a href="">DESIGNER SAREE</a></li>           
              </ul>
          </li>
          <li><a> &nbsp; KIDS</a>
          <ul class="submenu">
              <li><a href="http://localhost:8080/Project/Brands.jsp?id=Girls">GIRLS</a></li>
              <li><a href="http://localhost:8080/Project/Brands.jsp?id=Boys">BOYS</a></li>
              <li><a href="http://localhost:8080/Project/Brands.jsp?id=Infants">INFANTS</a></li>
              </ul>
          </li>
          <li><a href="#About Us">&nbsp;SALE</a></li>
          <li><a href="#About Us">&nbsp;ABOUT US</a></li>
          <li><a href="#contact">&nbsp;STORE LOCATOR</a></li><br>
          <li>
              <a href="#"><i class="fa fa-facebook"></i></a>
              <a href="#"><i class="fa fa-twitter"></i></a>
              <a href="#"><i class="fa fa-google"></i></a>
          </li>
        </ul>
        </div>
        
    </body>
    <script>
        function editRecord(id){
                //var sel= document.getElementById(id);
                //var selValue = sel.options[sel.selectedIndex].value;
                var f=document.form2;
                f.method="post";
                f.action="http://localhost:8080/Project/Brands.jsp?id="+id;
                f.submit();
                return true;
            }
        </script>
</html>
