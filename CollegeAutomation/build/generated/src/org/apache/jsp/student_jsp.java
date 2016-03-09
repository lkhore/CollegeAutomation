package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class student_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE HTML>\r\n");
      out.write("<!--[if IE 8 ]>    <html lang=\"en\" class=\"ie8\"> <![endif] \r\n");
      out.write("    [if IE 9 ]>    <html lang=\"en\" class=\"ie\"> <![endif] -->\r\n");
      out.write("<!--[if !IE]--> <html lang=\"en\"> <!--[endif]-->\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("\r\n");
      out.write("        ");


            String value12 = (String) session.getAttribute("uid");

            if (value12 != null && value12 != "null" && value12 != "") {
                System.out.println("values2=" + value12);
            }

            Cookie ck[] = request.getCookies();
            String s = "";
            if (ck != null) {
                for (int i = 0; i < ck.length; i++) {
                    if (ck[i].getName().equals("TIGER")) {
                        s = ck[i].getValue();
                    }
                }
            }

        
      out.write("\r\n");
      out.write("        <script>\r\n");
      out.write("            function myValidation()\r\n");
      out.write("            {\r\n");
      out.write("\r\n");
      out.write("                var nalt = document.getElementById('validate');\r\n");
      out.write("                if (login.uid.value.length === 0 && login.upass.value.length === 0)\r\n");
      out.write("                {\r\n");
      out.write("                    //                    alert('Please enter UserId ');\r\n");
      out.write("                    nalt.innerHTML = \"<font color='red'>* Please Provide UserId and Password</font>\";\r\n");
      out.write("                    return false;\r\n");
      out.write("                }\r\n");
      out.write("                else\r\n");
      out.write("                if (login.upass.value.length === 0)\r\n");
      out.write("                {\r\n");
      out.write("                    nalt.innerHTML = \"<font color='red'>* Please Provide Password</font>\";\r\n");
      out.write("                    return false;\r\n");
      out.write("                }\r\n");
      out.write("                else\r\n");
      out.write("                if (login.uid.value.length === 0)\r\n");
      out.write("                {\r\n");
      out.write("                    nalt.innerHTML = \"<font color='red'>* Please Provide UserId</font>\";\r\n");
      out.write("                    return false;\r\n");
      out.write("                }\r\n");
      out.write("                else\r\n");
      out.write("                {\r\n");
      out.write("                    nalt.innerHTML = \"\";\r\n");
      out.write("                    return true;\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        </script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <title>Truba Institute</title>\r\n");
      out.write("        <meta name=\"description\" content=\"Html - jQuery template by pezflash\"/>\r\n");
      out.write("        <meta name=\"keywords\" content=\"\"/>\r\n");
      out.write("        <meta name=\"robots\" content=\"index, follow\"/>\r\n");
      out.write("\r\n");
      out.write("        <!-- CSS -->\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic,700,700italic\" />\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"http://fonts.googleapis.com/css?family=Gentium+Basic:400,400italic,700,700italic\" />\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"js/vegas/jquery.vegas.css\" />\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"js/tipsy/tipsy.css\" />\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"js/prettyPhoto/css/prettyPhoto.css\" media=\"all\" />\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"js/superfish/superfish.css\" media=\"screen\" />\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/styles.css\" />\r\n");
      out.write("\r\n");
      out.write("        <!-- SCRIPTS -->\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-1.7.1.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.easing.1.3.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/vegas/jquery.vegas.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/vegas/vegas.home.config.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/tipsy/jquery.tipsy.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/prettyPhoto/js/jquery.prettyPhoto.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/superfish/hoverIntent.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/superfish/superfish.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/mdetect.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/global.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <!-- CUSTOM SCRIPTS FOR THIS PAGE -->\r\n");
      out.write("        <!-- FOR CUSTOM SCRIPT CHECK ALSO js/vegas/vegas.home.config.js -->\r\n");
      out.write("        <script type=\"text/javascript\">\r\n");
      out.write("            $(document).ready(function() {\r\n");
      out.write("\r\n");
      out.write("                //ENTRY ANIMATION\r\n");
      out.write("                var quoted = $('#home .quoted');\r\n");
      out.write("                var thumbs = $('#home .thumbs');\r\n");
      out.write("                var paragraph = $('#home .paragraph');\r\n");
      out.write("                quoted.delay(1000).animate({opacity: 1}, 1500, 'linear');\r\n");
      out.write("                thumbs.delay(1400).animate({opacity: 1}, 1500, 'linear');\r\n");
      out.write("                paragraph.delay(1800).animate({opacity: 1}, 1500, 'linear');\r\n");
      out.write("\r\n");
      out.write("            });\r\n");
      out.write("        </script>\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <!-- GLOBAL BORDER -->\r\n");
      out.write("        <div id=\"left\"></div>\r\n");
      out.write("        <div id=\"right\"></div>\r\n");
      out.write("        <div id=\"top\"></div>\r\n");
      out.write("        <div id=\"bottom\"></div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- HEADER --> \r\n");
      out.write("        <div id=\"header\">\r\n");
      out.write("            <img src=\"images/logo.png\" alt=\"\" />\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!-- HOME --> \r\n");
      out.write("        <div id=\"home\">\r\n");
      out.write("            <span class=\"quoted\">Academic<br/>Excellence<br/>since 2005</span><br/>\r\n");
      out.write("            <span class=\"paragraph\">TRUBA Group of engineering and management Colleges are top and best Institutes in Indore,Bhopal M.P India. <a href=\"grid_gallery.jsp\">link to Collections</a></span>\r\n");
      out.write("\r\n");
      out.write("            <!-- HOME FULLSCREEN BACKGROUNDS --> \r\n");
      out.write("            <div class=\"thumbs\">\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li><a href=\"images/home/background_1.jpg\" data-align=\"right\"><img src=\"images/home/thumbnail_1.jpg\" alt=\"thumbnail\"/></a></li>\r\n");
      out.write("                    <li><a href=\"images/home/background_2.jpg\"><img src=\"images/home/thumbnail_2.jpg\" alt=\"thumbnail\"/></a></li>\r\n");
      out.write("                    <li><a href=\"images/home/background_3.jpg\"><img src=\"images/home/thumbnail_3.jpg\" alt=\"thumbnail\"/></a></li>\r\n");
      out.write("\r\n");
      out.write("                    <li><a href=\"images/home/background_4.jpg\"><img src=\"images/home/thumbnail_4.jpg\" alt=\"thumbnail\"/></a></li>\r\n");
      out.write("                    <li><a href=\"images/home/background_5.jpg\" data-align=\"left\"><img src=\"images/home/thumbnail_5.jpg\" alt=\"thumbnail\"/></a></li>\r\n");
      out.write("                    <li><a href=\"images/home/background_6.jpg\" data-valign=\"top\"><img src=\"images/home/thumbnail_6.jpg\" alt=\"thumbnail\"/></a></li>\r\n");
      out.write("                    <li><a href=\"images/home/background_7.jpg\" data-valign=\"top\"><img src=\"images/home/thumbnail_7.jpg\" alt=\"thumbnail\"/></a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("\r\n");
      out.write("                <img id=\"slideshow\" class=\"playpause\" title=\"Play slideshow\" src=\"images/home/play.png\" alt=\"\" />\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"home3\">\r\n");
      out.write("          <table width=\"\" height=\"\" border=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td><strong><font size=\"+1\" >Enroll. no.:-0830cs101053|Name:-Lovekesh</font></strong></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </table>\r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- MENU -->\r\n");
      out.write("        <div id=\"menu\">\r\n");
      out.write("\r\n");
      out.write("            <ul id=\"sample-menu-3\" class=\"sf-menu sf-vertical\">\r\n");
      out.write("\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"#a\">About Us</a>\r\n");
      out.write("                    <ul class=\"second_level\">\r\n");
      out.write("                        <li><a href=\"about_company.jsp\">Company</a></li>\r\n");
      out.write("                        <li><a href=\"about_team.jsp\">Our Team</a></li>\r\n");
      out.write("                        <li><a href=\"about_reel.jsp\">Video Reel</a></li>\r\n");
      out.write("                        <li><a href=\"about_events.jsp\">Events Slider</a></li>\r\n");
      out.write("\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"#\">Sample of</a>\r\n");
      out.write("                            <ul class=\"third_level\">\r\n");
      out.write("                                <li><a href=\"#\">Third</a></li>\r\n");
      out.write("                                <li><a href=\"#\">level</a></li>\r\n");
      out.write("                                <li><a href=\"#\">menu</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </li>\r\n");
      out.write("\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"#\">Collections</a>\r\n");
      out.write("                    <ul class=\"second_level\">\r\n");
      out.write("                        <li><a href=\"grid_gallery.jsp\">Grid Gallery</a></li>\r\n");
      out.write("                        <li><a href=\"horizontal_gallery.jsp\">Horizontal Gallery</a></li>\r\n");
      out.write("                        <li><a href=\"fullscreen_gallery.jsp\">Fullscreen Gallery</a></li>\r\n");
      out.write("                        <li><a href=\"video_gallery.jsp\">Html5 Video Gallery</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </li>\r\n");
      out.write("\r\n");
      out.write("                <li><a href=\"registration2.jsp\">Semester_Registration_Form</a></li>\r\n");
      out.write("                <li><a href=\"shops.jsp\">Shops</a></li>\r\n");
      out.write("                <li><a href=\"location.jsp\">Location</a></li>\r\n");
      out.write("                <li><a href=\"blog.jsp\">Blog</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- FOOTER - COPYRIGHT & SOCIAL NETWORKS -->\r\n");
      out.write("        <div id=\"footer\">\r\n");
      out.write("            <ul>\r\n");
      out.write("                <li class=\"copyright\">Copyright ï¿½ 2012 - <a href=\"mailto:info@coolagora.com\">info@coolagora.com</a></li>\r\n");
      out.write("                <li><a href=\"http://www.facebook.com/pezflash\" target=\"_blank\" title=\"Facebook\"><img src=\"images/icon_facebook.png\" alt=\"facebook\"/></a></li>\r\n");
      out.write("                <li><a href=\"http://www.twitter.com/pezflash\" target=\"_blank\" title=\"Twitter\"><img src=\"images//icon_twitter.png\" alt=\"twitter\"/></a></li>\r\n");
      out.write("                <li><a href=\"http://themeforest.net/user/pezflash\" target=\"_blank\" title=\"RSS\"><img src=\"images//icon_rss.png\" alt=\"rss\"/></a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
