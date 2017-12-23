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
    margin-top:130px;
    margin-right: 80px;
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
      <img class="image" onclick="editRecord('HRX');" src="images\hrx.jpg" style="width:310px; height:400px; border-radius: 7px;" >
    </a>
    <a target="_blank">
      <img class="image" onclick="editRecord('Nike');" src="images\nike.jpg" style="margin-left: 20px; width:310px; height:400px; border-radius: 7px;">
    </a>
    <a target="_blank">
      <img class="image" onclick="editRecord('Puma');" src="images\puma.jpg" style="margin-left: 20px; width:310px; height:400px; border-radius: 7px;">
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
