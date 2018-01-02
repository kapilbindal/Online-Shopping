package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("<style>\n");
      out.write("            .smal {\n");
      out.write("            position: absolute;\n");
      out.write("            position: fixed;\n");
      out.write("            color: white;\n");
      out.write("            left: 10px;\n");
      out.write("            top : 80px;\n");
      out.write("            font-size: 20px;\n");
      out.write("            font-family: \"Times New Roman\";\n");
      out.write("}\n");
      out.write("\n");
      out.write(".fa {\n");
      out.write("  padding: 10px;\n");
      out.write("  font-size: 20px;\n");
      out.write("  width: 30px;\n");
      out.write("  text-align: center;\n");
      out.write("  text-decoration: none;\n");
      out.write("  //margin: 5px 2px;\n");
      out.write("  border-radius: 50%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".fa:hover {\n");
      out.write("    opacity: 0.7;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".fa-facebook {\n");
      out.write("  background: #3B5998;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write(".fa-twitter {\n");
      out.write("  background: #55ACEE;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".fa-google {\n");
      out.write("  background: #dd4b39;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("    .h {\n");
      out.write("            //position: absolute;\n");
      out.write("            color: white;\n");
      out.write("            left: 25px;\n");
      out.write("            top : 10px;\n");
      out.write("            font-size: 70px;\n");
      out.write("            font-family: \"Calibri\";\n");
      out.write("            position: fixed;\n");
      out.write("}\n");
      out.write("        \n");
      out.write(".mainmenu {\n");
      out.write("    position: absolute;\n");
      out.write("    top: 200px;\n");
      out.write("    left: 40px;   \n");
      out.write("    list-style-type: none;\n");
      out.write("    text-align: center;\n");
      out.write("    margin: 0;\n");
      out.write("    padding: 0;\n");
      out.write("    width: 15%;\n");
      out.write("    height: 100%;\n");
      out.write("    position: fixed;\n");
      out.write("    overflow: auto;\n");
      out.write("    font-size: 20px;\n");
      out.write("}\n");
      out.write("li {\n");
      out.write("     border-bottom: 1px solid white;\n");
      out.write("     font-family: \"Times New Roman\";\n");
      out.write("}\n");
      out.write("li a{\n");
      out.write("       color: white;\n");
      out.write("       text-decoration: none;\n");
      out.write("}\n");
      out.write("li:last-child {\n");
      out.write("    border-bottom: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".submenu{\n");
      out.write("  list-style: none;\n");
      out.write("  padding: 0;\n");
      out.write("  margin: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li:hover .submenu {\n");
      out.write("  max-height: 200px;\n");
      out.write("}\n");
      out.write(".submenu li{\n");
      out.write("    border-bottom: none;\n");
      out.write("}\n");
      out.write(".submenu {\n");
      out.write("  font-size: 15px;\n");
      out.write("  overflow: hidden;\n");
      out.write("  //text-align: start ;\n");
      out.write("  max-height: 0;\n");
      out.write("  //-webkit-transition: all 0.5s ease-out;\n");
      out.write("}\n");
      out.write("\n");
      out.write("          .pos{\n");
      out.write("            position: absolute;\n");
      out.write("            right: 30px;\n");
      out.write("            top: 120px;\n");
      out.write("            font-size: 30px;\n");
      out.write("            font-family: \"Georgia\";\n");
      out.write("            color: white;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .lab {\n");
      out.write("        font-size: 30px;\n");
      out.write("        font-family: \"Georgia\";\n");
      out.write("        position: absolute;\n");
      out.write("        right: 30px;\n");
      out.write("        top: 200px;\n");
      out.write("        color: white; \n");
      out.write("        width: 250px;\n");
      out.write("        display: inline;\n");
      out.write("        vertical-align: 500px;\n");
      out.write("}\n");
      out.write(".lab2 {\n");
      out.write("        font-size: 25px;\n");
      out.write("        font-family: \"Georgia\";\n");
      out.write("        position: absolute;\n");
      out.write("        right: 30px;\n");
      out.write("        top: 350px;\n");
      out.write("        color: white; \n");
      out.write("        width: 250px;\n");
      out.write("        display: inline;\n");
      out.write("        vertical-align: 500px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"#DC143C\" >\n");
      out.write("        <div>\n");
      out.write("        <div class=\"h\"><b>Bindal's</b></div>\n");
      out.write("        <div class=\"smal\">PREMIUM FAMILY DRESSING</div>\n");
      out.write("       \n");
      out.write("        \n");
      out.write("        <ul class=\"mainmenu\">\n");
      out.write("          <li><a href=\"http://localhost:8080/Project/HomePage.jsp\"> &nbsp; HOME</a></li>\n");
      out.write("          <li><a>&nbsp; MENS</a>\n");
      out.write("              <ul class=\"submenu\">\n");
      out.write("              <li><a href=\"http://localhost:8080/Project/M-Sports.jsp\">SPORTS WEAR</a></li>\n");
      out.write("              <li><a href=\"http://localhost:8080/Project/M-Casual.jsp\">CASUAL WEAR</a></li>\n");
      out.write("              <li><a href=\"http://localhost:8080/Project/Brands.jsp?id=Formal\">FORMAL WEAR</a></li>\n");
      out.write("              <li><a href=\"http://localhost:8080/Project/Brands.jsp?id=Wedding\">WEDDING WEAR</a></li>\n");
      out.write("              </ul>\n");
      out.write("          </li>\n");
      out.write("          <li><a> &nbsp; WOMEN</a>\n");
      out.write("          <ul class=\"submenu\">\n");
      out.write("              <li><a href=\"http://localhost:8080/Project/W-Teenager.jsp\">TEENAGER</a></li>\n");
      out.write("              <li><a href=\"http://localhost:8080/Project/Brands.jsp?id=WNight\">NIGHT WEAR</a></li>\n");
      out.write("              <li><a href=\"http://localhost:8080/Project/Brands.jsp?id=WDesign\">DESIGNER SUIT & SAREES</a></li>\n");
      out.write("              </ul>\n");
      out.write("          </li>\n");
      out.write("          <li><a> &nbsp; KIDS</a>\n");
      out.write("          <ul class=\"submenu\">\n");
      out.write("              <li><a href=\"http://localhost:8080/Project/Brands.jsp?id=Girls\">GIRLS</a></li>\n");
      out.write("              <li><a href=\"http://localhost:8080/Project/Brands.jsp?id=Boys\">BOYS</a></li>\n");
      out.write("              <li><a href=\"http://localhost:8080/Project/Brands.jsp?id=Infants\">INFANTS</a></li>\n");
      out.write("              </ul>\n");
      out.write("          </li>\n");
      out.write("          <li><a href=\"http://localhost:8080/Project/Brands.jsp?id=Sale\">&nbsp;SALE</a></li>\n");
      out.write("          <li><a href=\"http://localhost:8080/Project/About.jsp\">&nbsp;ABOUT US</a></li>\n");
      out.write("          <li><a href=\"http://localhost:8080/Project/StoreLocator.jsp\">&nbsp;STORE LOCATOR</a></li><br>\n");
      out.write("          <li>\n");
      out.write("              <a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("              <a href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("              <a href=\"#\"><i class=\"fa fa-google\"></i></a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("    <script>\n");
      out.write("        function editRecord(id){\n");
      out.write("                //var sel= document.getElementById(id);\n");
      out.write("                //var selValue = sel.options[sel.selectedIndex].value;\n");
      out.write("                var f=document.form2;\n");
      out.write("                f.method=\"post\";\n");
      out.write("                f.action=\"http://localhost:8080/Project/Brands.jsp?id=\"+id;\n");
      out.write("                f.submit();\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
