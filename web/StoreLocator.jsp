<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file = "Header.jsp" %>
<html>
    <head>
        <style>
            .set{
                position: absolute;
                top: 150px;
                left: 25%;
            }
            .tag{
                position: absolute;
                top: 100px;
                left: 45%;
                font-family: Didot, serif;
                font-size: 30px;
                color: yellow;
            }
        </style>  
    </head>
    <body>
        <div class="set" id="googleMap" style="width:70%;height:80%;"></div>
        <div class="tag">
            <b>FIND YOUR NEAREST STORE!</b>
        </div>
    </body>
    <script>
        function myMap() {
        var mapProp= {
            center:new google.maps.LatLng(28.6605087,77.1889003),
            zoom:15,
        };
        var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
        var marker = new google.maps.Marker({position:myCenter});
            marker.setMap(map);
        }
    </script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC40mY4ld3rP9Hav-CsBVQ9w3g24P6IrwU&callback=myMap"></script>

</html>
