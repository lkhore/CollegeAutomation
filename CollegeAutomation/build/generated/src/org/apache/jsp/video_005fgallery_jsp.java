package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class video_005fgallery_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("<!DOCTYPE HTML>\r\n");
      out.write("<!--[if IE 8 ]>    <html lang=\"en\" class=\"ie8\"> <![endif]--> \r\n");
      out.write("<!--[if IE 9 ]>    <html lang=\"en\" class=\"ie\"> <![endif]--> \r\n");
      out.write("<!--[if !IE]><!--> <html lang=\"en\"> <!--<![endif]-->\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("\t<meta charset=\"utf-8\">\r\n");
      out.write("\t<title>Truba Institute</title>\r\n");
      out.write("\t<meta name=\"description\" content=\"Html - jQuery template by pezflash\"/>\r\n");
      out.write("\t<meta name=\"keywords\" content=\"\"/>\r\n");
      out.write("\t<meta name=\"robots\" content=\"index, follow\"/>\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- CSS -->\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"http://fonts.googleapis.com/css?family=Lato:300,300italic,400,400italic,700,700italic\" />\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"js/tipsy/tipsy.css\" />\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"js/prettyPhoto/css/prettyPhoto.css\" media=\"all\" />\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"js/superfish/superfish.css\" media=\"screen\" />\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"js/video/video-js.css\" />\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/styles.css\" />\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- SCRIPTS -->\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery-1.7.1.min.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery.easing.1.3.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/tipsy/jquery.tipsy.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/prettyPhoto/js/jquery.prettyPhoto.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/superfish/hoverIntent.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/superfish/superfish.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/video/video.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/video/playlist.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/mdetect.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/global.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t<!-- GLOBAL BORDER -->\r\n");
      out.write("\t<div id=\"left\"></div>\r\n");
      out.write("\t<div id=\"right\"></div>\r\n");
      out.write("\t<div id=\"top\"></div>\r\n");
      out.write("\t<div id=\"bottom\"></div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!-- FULLSCREEN BACKGROUND -->\r\n");
      out.write("\t<div id=\"backg\">\r\n");
      out.write("\t\t<img src=\"images/reel/background.jpg\" class=\"bg\">\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t<!-- HEADER --> \r\n");
      out.write("\t<div id=\"header\">\r\n");
      out.write("\t\t<a href=\"index.jsp\"><img src=\"images/logo.png\" alt=\"\" title=\"Back to home\" /></a>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- VIDEO GALLERY --> \r\n");
      out.write("\t<div id=\"video-gallery\">\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- BASE BAND --> \r\n");
      out.write("\t\t<div class=\"base\"></div>\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- VIDEO PLAYER WITH PLAYLIST --> \r\n");
      out.write("\t\t<div class=\"player\">\r\n");
      out.write("\t\t\t<video id=\"vid1\"\r\n");
      out.write("\t\t         class=\"video-js vjs-default-skin\"\r\n");
      out.write("\t\t         controls\r\n");
      out.write("\t\t         preload=\"auto\"\r\n");
      out.write("\t\t         width=\"600\"\r\n");
      out.write("\t\t         height=\"338\"\r\n");
      out.write("\t\t         poster=\"images/video_gallery/poster1.jpg\"\r\n");
      out.write("\t\t         data-setup='{\r\n");
      out.write("\t\t           \"playlist\":[\r\n");
      out.write("\t\t              {\"thumb_url\":\"images/video_gallery/thumb1.jpg\",\r\n");
      out.write("\t\t               \"poster_url\":\"\",\r\n");
      out.write("\t\t               \"sources\":[\r\n");
      out.write("\t\t                 {\"src\":\"rtmpe://94.242.228.19:443/liveedge/setmax2123\",\r\n");
      out.write("\t\t                  \"type\":\"video/flv\",\r\n");
      out.write("\t\t                  \"media\":\"\",\r\n");
      out.write("\t\t                  \"title\":\"\"},\r\n");
      out.write("\t\t                 {\"src\":\"images/video_gallery/sample_vid.ogv\",\r\n");
      out.write("\t\t                  \"type\":\"video/mp4\",\r\n");
      out.write("\t\t                  \"media\":\"\",\r\n");
      out.write("\t\t                  \"title\":\"\"\r\n");
      out.write("\t\t              \t }\r\n");
      out.write("\t\t               ]\r\n");
      out.write("\t\t              },\r\n");
      out.write("\t\t              {\"thumb_url\":\"images/video_gallery/thumb2.jpg\",\r\n");
      out.write("\t\t               \"poster_url\":\"\",\r\n");
      out.write("\t\t               \"sources\":[\r\n");
      out.write("\t\t                 {\"src\":\"images/video_gallery/sample_vid.mp4\",\r\n");
      out.write("\t\t                  \"type\":\"video/mp4\",\r\n");
      out.write("\t\t                  \"media\":\"\",\r\n");
      out.write("\t\t                  \"title\":\"\"},\r\n");
      out.write("\t\t                 {\"src\":\"images/video_gallery/sample_vid.ogv\",\r\n");
      out.write("\t\t                  \"type\":\"video/mp4\",\r\n");
      out.write("\t\t                  \"media\":\"\",\r\n");
      out.write("\t\t                  \"title\":\"\"\r\n");
      out.write("\t\t              \t }\r\n");
      out.write("\t\t                ]\r\n");
      out.write("\t\t              },\r\n");
      out.write("\t\t              {\"thumb_url\":\"images/video_gallery/thumb3.jpg\",\r\n");
      out.write("\t\t               \"poster_url\":\"\",\r\n");
      out.write("\t\t               \"sources\":[\r\n");
      out.write("\t\t                 {\"src\":\"images/video_gallery/sample_vid.mp4\",\r\n");
      out.write("\t\t                  \"type\":\"video/mp4\",\r\n");
      out.write("\t\t                  \"media\":\"\",\r\n");
      out.write("\t\t                  \"title\":\"\"},\r\n");
      out.write("\t\t                 {\"src\":\"images/video_gallery/sample_vid.ogv\",\r\n");
      out.write("\t\t                  \"type\":\"video/mp4\",\r\n");
      out.write("\t\t                  \"media\":\"\",\r\n");
      out.write("\t\t                  \"title\":\"\"\r\n");
      out.write("\t\t              \t }\r\n");
      out.write("\t\t                ]\r\n");
      out.write("\t\t              },\r\n");
      out.write("\t\t              {\"thumb_url\":\"images/video_gallery/thumb4.jpg\",\r\n");
      out.write("\t\t               \"poster_url\":\"\",\r\n");
      out.write("\t\t               \"sources\":[\r\n");
      out.write("\t\t                 {\"src\":\"images/video_gallery/sample_vid.mp4\",\r\n");
      out.write("\t\t                  \"type\":\"video/mp4\",\r\n");
      out.write("\t\t                  \"media\":\"\",\r\n");
      out.write("\t\t                  \"title\":\"\"},\r\n");
      out.write("\t\t                 {\"src\":\"images/video_gallery/sample_vid.ogv\",\r\n");
      out.write("\t\t                  \"type\":\"video/mp4\",\r\n");
      out.write("\t\t                  \"media\":\"\",\r\n");
      out.write("\t\t                  \"title\":\"\"\r\n");
      out.write("\t\t              \t }\r\n");
      out.write("\t\t                ]\r\n");
      out.write("\t\t              }\r\n");
      out.write("\t\t            ]\r\n");
      out.write("\t\t          }'>\r\n");
      out.write("\t\t    <source src=\"images/video_gallery/sample_vid.mp4\" type='video/mp4'/>\r\n");
      out.write("\t\t  </video>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!-- MENU -->\r\n");
      out.write("\t<div id=\"menu\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<ul id=\"sample-menu-3\" class=\"sf-menu sf-vertical\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<a href=\"#a\">About Us</a>\r\n");
      out.write("\t\t\t\t\t<ul class=\"second_level\">\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"about_company.jsp\">Company</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"about_team.jsp\">Our Team</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"about_reel.jsp\">Video Reel</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"about_events.jsp\">Events Slider</a></li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">Sample of</a>\r\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"third_level\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">Third</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">level</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">menu</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<a href=\"#\">Collections</a>\r\n");
      out.write("\t\t\t\t\t<ul class=\"second_level\">\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"grid_gallery.jsp\">Grid Gallery</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"horizontal_gallery.jsp\">Horizontal Gallery</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"fullscreen_gallery.jsp\">Fullscreen Gallery</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"video_gallery.jsp\" class=\"disabled\">Html5 Video Gallery</a></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<li><a href=\"news.jsp\">News</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"offices.jsp\">Offices</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"location.jsp\">Location</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"blog.jsp\">Blog</a></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!-- FOOTER - COPYRIGHT & SOCIAL NETWORKS -->\r\n");
      out.write("\t<div id=\"footer\">\r\n");
      out.write("\t\t<ul>\r\n");
      out.write("\t\t\t<li class=\"copyright\">Copyright © 2012 - <a href=\"mailto:info@coolagora.com\">info@coolagora.com</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"http://www.facebook.com/pezflash\" target=\"_blank\" title=\"Facebook\"><img src=\"images/icon_facebook.png\" alt=\"facebook\"/></a></li>\r\n");
      out.write("\t\t\t<li><a href=\"http://www.twitter.com/pezflash\" target=\"_blank\" title=\"Twitter\"><img src=\"images//icon_twitter.png\" alt=\"twitter\"/></a></li>\r\n");
      out.write("\t\t\t<li><a href=\"http://themeforest.net/user/pezflash\" target=\"_blank\" title=\"RSS\"><img src=\"images//icon_rss.png\" alt=\"rss\"/></a></li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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
