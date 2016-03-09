
<!DOCTYPE HTML>
<!--[if IE 8 ]>    <html lang="en" class="ie8"> <![endif] 
    [if IE 9 ]>    <html lang="en" class="ie"> <![endif] -->
<!--[if !IE]--> <html lang="en"> <!--[endif]-->

    <head>


        <%@page  import="java.sql.*"%>

        <%

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
            
            
            
            
            

        %>
        <script>
            function myValidation()
            {

                var nalt = document.getElementById('validate');
                if (login.uid.value.length === 0 && login.upass.value.length === 0)
                {
                    //                    alert('Please enter UserId ');
                    nalt.innerHTML = "<font color='red'>* Please Provide UserId and Password</font>";
                    return false;
                }
                else
                if (login.upass.value.length === 0)
                {
                    nalt.innerHTML = "<font color='red'>* Please Provide Password</font>";
                    return false;
                }
                else
                if (login.uid.value.length === 0)
                {
                    nalt.innerHTML = "<font color='red'>* Please Provide UserId</font>";
                    return false;
                }
                else
                {
                    nalt.innerHTML = "";
                    return true;
                }
            }
        </script>





        <meta charset="utf-8">
        <title>Truba Institute</title>
        <meta name="description" content="Html - jQuery template by pezflash"/>
        <meta name="keywords" content=""/>
        <meta name="robots" content="index, follow"/>

        <!-- CSS -->
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic,700,700italic" />
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Gentium+Basic:400,400italic,700,700italic" />
        <link rel="stylesheet" type="text/css" href="js/vegas/jquery.vegas.css" />
        <link rel="stylesheet" type="text/css" href="js/tipsy/tipsy.css" />
        <link rel="stylesheet" type="text/css" href="js/prettyPhoto/css/prettyPhoto.css" media="all" />
        <link rel="stylesheet" type="text/css" href="js/superfish/superfish.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="css/styles.css" />

        <!-- SCRIPTS -->
        <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="js/vegas/jquery.vegas.js"></script>
        <script type="text/javascript" src="js/vegas/vegas.home.config.js"></script>
        <script type="text/javascript" src="js/tipsy/jquery.tipsy.js"></script>
        <script type="text/javascript" src="js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
        <script type="text/javascript" src="js/superfish/hoverIntent.js"></script>
        <script type="text/javascript" src="js/superfish/superfish.js"></script>
        <script type="text/javascript" src="js/mdetect.js"></script>
        <script type="text/javascript" src="js/global.js"></script>

        <!-- CUSTOM SCRIPTS FOR THIS PAGE -->
        <!-- FOR CUSTOM SCRIPT CHECK ALSO js/vegas/vegas.home.config.js -->
        <script type="text/javascript">
            $(document).ready(function() {

                //ENTRY ANIMATION
                var quoted = $('#home .quoted');
                var thumbs = $('#home .thumbs');
                var paragraph = $('#home .paragraph');
                quoted.delay(1000).animate({opacity: 1}, 1500, 'linear');
                thumbs.delay(1400).animate({opacity: 1}, 1500, 'linear');
                paragraph.delay(1800).animate({opacity: 1}, 1500, 'linear');

            });
        </script>

    </head>


    <body>

        <!-- GLOBAL BORDER -->
        <div id="left"></div>
        <div id="right"></div>
        <div id="top"></div>
        <div id="bottom"></div>



        <!-- HEADER --> 
        <div id="header">
            <img src="images/logo.png" alt="" />
        </div>

        <!-- HOME --> 
        <div id="home">
            <span class="quoted">Academic<br/>Excellence<br/>since 2005</span><br/>
            <span class="paragraph">TRUBA Group of engineering and management Colleges are top and best Institutes in Indore,Bhopal M.P India. <a href="grid_gallery.jsp">link to Collections</a></span>

            <!-- HOME FULLSCREEN BACKGROUNDS --> 
            <div class="thumbs">
                <ul>
                    <li><a href="images/home/background_1.jpg" data-align="right"><img src="images/home/thumbnail_1.jpg" alt="thumbnail"/></a></li>
                    <li><a href="images/home/background_2.jpg"><img src="images/home/thumbnail_2.jpg" alt="thumbnail"/></a></li>
                    <li><a href="images/home/background_3.jpg"><img src="images/home/thumbnail_3.jpg" alt="thumbnail"/></a></li>

                    <li><a href="images/home/background_4.jpg"><img src="images/home/thumbnail_4.jpg" alt="thumbnail"/></a></li>
                    <li><a href="images/home/background_5.jpg" data-align="left"><img src="images/home/thumbnail_5.jpg" alt="thumbnail"/></a></li>
                    <li><a href="images/home/background_6.jpg" data-valign="top"><img src="images/home/thumbnail_6.jpg" alt="thumbnail"/></a></li>
                    <li><a href="images/home/background_7.jpg" data-valign="top"><img src="images/home/thumbnail_7.jpg" alt="thumbnail"/></a></li>
                </ul>

                <img id="slideshow" class="playpause" title="Play slideshow" src="images/home/play.png" alt="" />
            </div>

        </div>
        <div id="home2">
            <form id="login" name="login" method="post" onSubmit="return myValidation();" action="Login">
                <table width="276" height="204" border="0">
                    <tr>
                        <td height="36" colspan="3" class="two"><div align="center"><font color="#ff0000" size="5">LOGIN SECTION</font></div></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <span id=validate></span> <br>

                            <font color="red" size="3">${errorMessage}</font>

                        </td>
                        <td width="16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="88"><font color="#ff0000" size="3">USER ID</font></td>

                        <td colspan="2"><label for="login"></label>
                            <input type="text" name="uid" value="<%=s%>" size="20" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><font color="#ff0000" size="3">PASSWORD</font></td>
                        <td colspan="2"><label for="password"></label>
                            <input type="password" name="upass" size="20" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td colspan="2">
                            <input type="checkbox" name="check" id="check" value="ON" />
                            <label for="check"><font color="#ff0000" size="3">Keep Me Sign In</font></label></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td height="39" colspan="2">
                            <input type="submit" name="B1" id="login2" value="SignIn" style="float: right" /> </td>
                        <td width="157">
                            <p align="right"><a href="registration.jsp"><font color="#ff0000" size="3">Register</font></a></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td height="39" colspan="3">
                            <p align="right"><a href="forget.html"><font color="red" size="3">Forget Password</font></a></td>
                        <td></td>
                    </tr>
                </table>
                <p>&nbsp;       </p>



            </form>
        </div>


        <!-- MENU -->
        <div id="menu">

            <ul id="sample-menu-3" class="sf-menu sf-vertical">

                <li>
                    <a href="#a">About Us</a>
                    <ul class="second_level">
                        <li><a href="about_company.jsp">Company</a></li>
                        <li><a href="about_team.jsp">Our Team</a></li>
                        <li><a href="about_reel.jsp">Video Reel</a></li>
                        <li><a href="about_events.jsp">Events Slider</a></li>

                        <li>
                            <a href="#">Sample of</a>
                            <ul class="third_level">
                                <li><a href="#">Third</a></li>
                                <li><a href="#">level</a></li>
                                <li><a href="#">menu</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#">Collections</a>
                    <ul class="second_level">
                        <li><a href="grid_gallery.jsp">Grid Gallery</a></li>
                        <li><a href="horizontal_gallery.jsp">Horizontal Gallery</a></li>
                        <li><a href="fullscreen_gallery.jsp">Fullscreen Gallery</a></li>
                        <li><a href="video_gallery.jsp">Html5 Video Gallery</a></li>
                    </ul>
                </li>

                <li><a href="news.jsp">News</a></li>
                <li><a href="shops.jsp">Shops</a></li>
                <li><a href="location.jsp">Location</a></li>
                <li><a href="blog.jsp">Blog</a></li>
            </ul>
        </div>



        <!-- FOOTER - COPYRIGHT & SOCIAL NETWORKS -->
        <div id="footer">
            <ul>
                <li class="copyright">Copyright � 2012 - <a href="mailto:info@coolagora.com">info@coolagora.com</a></li>
                <li><a href="http://www.facebook.com/pezflash" target="_blank" title="Facebook"><img src="images/icon_facebook.png" alt="facebook"/></a></li>
                <li><a href="http://www.twitter.com/pezflash" target="_blank" title="Twitter"><img src="images//icon_twitter.png" alt="twitter"/></a></li>
                <li><a href="http://themeforest.net/user/pezflash" target="_blank" title="RSS"><img src="images//icon_rss.png" alt="rss"/></a></li>
            </ul>
        </div>
    </body>
</html>
