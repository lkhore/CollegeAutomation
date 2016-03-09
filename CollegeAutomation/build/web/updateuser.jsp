
<!DOCTYPE HTML>
<!--[if IE 8 ]>    <html lang="en" class="ie8"> <![endif] 
    [if IE 9 ]>    <html lang="en" class="ie"> <![endif] -->
<!--[if !IE]--> <html lang="en"> <!--[endif]-->

    <head>
        <%@ page import="java.sql.*"%>
        <%@include file="Secure.jsp"%>




        <%            String unm = "", sex, mail, scontact;
            String uid = (String) session.getAttribute("uid");
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = connection.start.MyConnection.myConnection();
            Statement st = con.createStatement();

            String q = "select unm,sex,email,contact from user where uid=?";
            PreparedStatement preparedStatement = con.prepareCall(q);
            preparedStatement.setString(1, uid);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {

                unm = rs.getString("unm");
               

            }

            con.isClosed();
			
			
			


        %>     


        <script>

            function myValidation()
            {

                var result;

                result = isAlphapet();

                return result;
            }

            function isAlphapet()
            {

                var namee = document.field.ans.value;
                var nalt = document.getElementById('number');
                if (namee.length === 0) {
                    nalt.innerHTML = "<font color='red'> *Invalid UserId</font>";

                    return false;
                } else {
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
        <div id="home3">

            <form id="field" name="field" method="post" onSubmit="return myValidation();" action="updateuser1.jsp">
                <table width="800" height="100" >
                    <tr>
                        <td width="100" height="100"><p align="right"><span class="style2">Enrollment no. :-<strong><font size="+1" >Enroll. no.:-<%=uid%>|Name:-<%=unm%>|<a href="logoutdemo.jsp">LOGOUT</a></font></strong></span></p>
                            <p class="style2"> <form id="form" name="form" method="post" onSubmit="return myValidation();" action="UpdateUser1.jsp">
                                <table width="617" border="0">
                                    <tr>
                                        <td><div style="color: #FF0000;">${errorMessage}</div></td>
                                        <td width="287"> <font color="red" size="3">* </font> <font color="#0000ff">value required</font></td>
                                        <td width="8">&nbsp;</td>
                                        <td width="22">&nbsp;</td>
                                        <td width="174">&nbsp;</td>
                                    </tr>

                                    <tr>


                                    <tr>
                                        <td><font color="red" size="3">* </font><font color="#0000ff">uid</font></td>
                                        <td colspan="4"><input type="text" name="ans" id="ans" onkeyup="isAlphapet();"   /><span id=number></span></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td><input type="submit" name="button" id="button" value="Showdata" />
                                            <input type="reset" name="button2" id="button2" value="Reset" /></td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>

                            </form></p>
                            <p>                
                                <strong>
                                    <h2>&nbsp;</h2>
                                </strong>
                            <p>&nbsp;</p></td>
                    </tr>
                </table>
            </form>
        </div>
        <!-- MENU -->
        <div id="menu">

            <ul id="sample-menu-3" class="sf-menu sf-vertical">

                <li>
                    <a href="admin.jsp">Home</a>
                                   </li>

                              
            </ul>
        </div>



        <!-- FOOTER - COPYRIGHT & SOCIAL NETWORKS -->
        <div id="footer">
            <ul>
                <li class="copyright">Copyright ? 2012 - <a href="mailto:info@coolagora.com">info@coolagora.com</a></li>
                <li><a href="http://www.facebook.com/pezflash" target="_blank" title="Facebook"><img src="images/icon_facebook.png" alt="facebook"/></a></li>
                <li><a href="http://www.twitter.com/pezflash" target="_blank" title="Twitter"><img src="images//icon_twitter.png" alt="twitter"/></a></li>
                <li><a href="http://themeforest.net/user/pezflash" target="_blank" title="RSS"><img src="images//icon_rss.png" alt="rss"/></a></li>
            </ul>
        </div>
    </body>
</html>
