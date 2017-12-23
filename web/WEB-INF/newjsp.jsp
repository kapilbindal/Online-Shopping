<%-- 
    Document   : newjsp
    Created on : 28 Oct, 2017, 12:14:27 AM
    Author     : KAPIL
--%>


<%@page import="java.lang.System.console()"%>
<%@page import="java.awt.SystemColor.window"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        
        <% 
            try {
  var SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
  var recognition = new SpeechRecognition();
}
catch(e) {
  console.error(e);
  $('.no-browser-support').show();
  $('.app').hide();
}
            %>
            
    </body>
</html>
