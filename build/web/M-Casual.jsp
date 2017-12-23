<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file = "Header.jsp" %>
<%@ include file = "SubHead.jsp" %>

<html>
    <head>
        <style>
.breadcrumb {
    position: absolute;
    top: 70px;
    right: 520px;
    padding: 10px 16px;
    list-style-type: none;
    font-size: 20px;
}
.breadcrumb li {
    font-family: "Verdana";
    display: inline;
    border-bottom: none;
}
.breadcrumb li+li:before {
    color: white;
    content: "/\00a0";
}            
            
.gallery {
    margin: 5px;
    margin-top:110px;
    margin-left: 300px;
    float: right ;
}
.gallery2{
    margin: 5px;
    margin-top: 60px;
    margin-left: 60px;
    float: right ;
}
.image:hover  {
  opacity: 0.7;
}
.gallery2:hover .image {
  opacity: 0.7;
}
</style>

    </head>
    <body>
        <form name="form2">
          <div class="gallery">
    <a target="_blank">
      <img class="image" onclick="editRecord('Levis');" src="images\levis.jpg" alt="Trolltunga Norway" style="width:310px; height:200px; border-radius: 7px;" >
    </a>
    <a target="_blank">
      <img class="image" onclick="editRecord('USPA');" src="images\uspa.jpg" alt="Northern Lights" style="margin-left: 20px; width:310px; height:200px; border-radius: 7px;">
    </a>
    <a target="_blank">
      <img class="image" onclick="editRecord('Pepe');" src="images\pepe.jpg" alt="Mountains" style="margin-left: 20px; width:310px; height:200px; border-radius: 7px;">
    </a>
    <a target="_blank">
      <img class="image" onclick="editRecord('UCB');" src="images\ucb.jpg" alt="Trolltunga Norway" style=" margin-top: 20px; width:310px; height:200px; border-radius: 7px;">
    </a>
    <a target="_blank">
      <img class="image" onclick="editRecord('Wrangler');" src="images\wrangler.jpg" alt="Northern Lights" style="margin-left: 20px; width:310px; height:200px; border-radius: 7px;">
    </a>
    <a target="_blank">
      <img class="image" onclick="editRecord('Lee');" src="images\lee.jpg" alt="Mountains" style="margin-left: 20px; width:310px; height:200px; border-radius: 7px;">
    </a>
  </div>
            </form>
    </body>
    <script>
        function editRecord(id){
                //var sel= document.getElementById(id);
                //var selValue = sel.options[sel.selectedIndex].value;
                var f=document.form2;
                f.method="post";
                f.action="http://localhost:8080/Project/Brands.jsp?id="+id;
                f.submit();
            }
        </script>
</html>
