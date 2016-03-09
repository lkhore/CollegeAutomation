
<!DOCTYPE HTML>
<!--[if IE 8 ]>    <html lang="en" class="ie8"> <![endif] 
    [if IE 9 ]>    <html lang="en" class="ie"> <![endif] -->
<!--[if !IE]--> <html lang="en"> <!--[endif]-->

    <head>


        <%@ page import="java.sql.*"%>
        <%@include file="Secure.jsp"%>




        <%            String unm = "";
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

            String ans, uuid = "", uunm = "", uupass = "", upost = "", uadrs = "", usex = "", uemail = "", ucontact = "";
            boolean uverify=false;
            ans = request.getParameter("ans");
            System.out.println("userid====" + ans);
            if (ans == null) {
                response.sendRedirect("updateuser.jsp");
            }
            st = con.createStatement();
            q = "select * from user where uid=?";

            preparedStatement = con.prepareCall(q);
            preparedStatement.setString(1, ans);
            rs = preparedStatement.executeQuery();
            if (rs.next()) {

                uuid = rs.getString("uid");
                uunm = rs.getString("unm");
                uupass = rs.getString("upass");
                upost = rs.getString("post");
                uadrs = rs.getString("adrs");
                usex = rs.getString("sex");
                System.out.println("usex:"+usex);
                uemail = rs.getString("email");
                ucontact = rs.getString("contact");
                uverify = rs.getBoolean("verify");

            }


        %>     

        <script type="text/javascript">
            function myValidation()
            {

                var result;
                var result1;
                var result2;
                var result3;
                var result4;
                var result5;
                var result6;
                var result7;
                var result8;

                result = isAlphaNumeric();
                result1 = charlen(this.id) && result;

                result2 = password() && result1;
                //result3 = pass()&&result2;
                result3 = isAlphapet() && result2;


                result4 = isNumeric() && result3;
                result5 = emailvalid() && result4;
                result6 = pass() && result5;
                result7 = isAlphaNumeric1() && result6;
                result8 = charlen1(this.id) && result7;
                return result8;
            }
            function isAlphaNumeric1()
            {
                var alphaExp = /^[a-zA-Z0-9]+$/;
                var usernam = document.field.user112.value;
                var ualt = document.getElementById('user12');
                if (!usernam.match(alphaExp) && (usernam !== ""))
                {

                    ualt.innerHTML = "<font color='red'> *Invalid Username </font>";
                    return false;
                } else {
                    ualt.innerHTML = "";
                    return true;
                }
            }
            function  charlen1()
            {
                var userid = document.getElementById('enroll');
                var uu = userid.value;
                var chrlen = uu.length;
                var ualt = document.getElementById('user12');
                var alphaExp1 = /^([0830])+([e]c|[c]s|[i]t|[m]e|[c]e|[e]c|[C]S|[I]T|[M]E|[C]E)+(\d{6}$)+/;
                if (uu !== "")
                {

                    if (uu.match(alphaExp1))
                    {
                        if (chrlen == 12) {
//                            ualt.innerHTML = "Valid ID";
                            return true;
                        } else
                        {
                            ualt.innerHTML = "<font color='red'> *Enter Valid Enroll. Id</font>";
                            return false;

                        }


                    } else {
                        ualt.innerHTML = "<font color='red'> *InValid Enrollment</font>";
                        return true;
                    }
                }
                else if (chrlen === 0)
                {
                    ualt.innerHTML = "<font color='red'> *Invalid  Username</font>";

                    return false;
                }
            }

            function isAlphapet()
            {

                var namee = document.field.name.value;
                var nalt = document.getElementById('name1');
                if (namee.length === 0) {
                    nalt.innerHTML = "<font color='red'> *Invalid Address</font>";

                    return false;
                } else {
                    nalt.innerHTML = "";
                    return true;
                }
            }

            function isAlphaNumeric()
            {
                var alphaExp = /^[a-zA-Z]+$/;
                var usernam = document.field.user.value;
                var ualt = document.getElementById('user1');
                if (!usernam.match(alphaExp) && (usernam !== ""))
                {

                    ualt.innerHTML = "<font color='red'> *Invalid Username </font>";
                    return false;
                } else {
                    ualt.innerHTML = "";
                    return true;
                }
            }

            function emailvalid()
            {
                var emal = document.field.email.value;
                var ealt = document.getElementById('email1');
                if (emal !== "")
                {
                    var emailExp = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
                    if (!emal.match(emailExp))
                    {


                        ealt.innerHTML = "<font color='red'> *Invalid Email id </font>";
                        return false;
                    } else {
                        ealt.innerHTML = "";
                        document.getElementById('email');
                        return true;
                    }
                }
                else if (emal.length === 0)
                {
                    ealt.innerHTML = "<font color='red'> *Invalid Email id</font>";
                    return false;
                }
            }

            function isNumeric()
            {

                var elem = document.field.ph_no.value;
                var nalt = document.getElementById('phno1');
                if (elem !== "")
                {
                    var numericExpression = /^[0-9]+$/;
                    if (elem.match(numericExpression))
                    {
                        if (elem.length == "10")
                        {
                            nalt.innerHTML = "";
                            return true;
                        }
                        else
                        {
                            nalt.innerHTML = "<font color='red'>* Please Check your mobile No.</font>";
                            return false;
                        }
                    } else {
                        document.field.ph_no.value = "";
                        nalt.innerHTML = "<font color='red'>* Numeric Values Only</font>";
                        return false;
                    }
                }
                else {
                    document.field.ph_no.value = "";
                    nalt.innerHTML = "<font color='red'>* Numeric Values Only</font>";
                    return false;
                }


            }
            function isNumeric1()
            {

                var elem = document.field.stuph_no.value;
                var nalt = document.getElementById('stuphno1');
                if (elem !== "")
                {
                    var numericExpression = /^[0-9]+$/;
                    if (elem.match(numericExpression))
                    {
                        if (elem.length == "10")
                        {
                            nalt.innerHTML = "";
                            return true;
                        }
                        else
                        {
                            nalt.innerHTML = "<font color='red'>* Please Check your mobile No.</font>";
                            return false;
                        }
                    } else {
                        document.field.ph_no.value = "";
                        nalt.innerHTML = "<font color='red'>* Numeric Values Only</font>";
                        return false;
                    }
                }
                else {
                    document.field.ph_no.value = "";
                    nalt.innerHTML = "<font color='red'>* Numeric Values Only</font>";
                    return false;
                }


            }

            function  charlen()
            {
                var userid = document.getElementById('user');
                var uu = userid.value;
                var chrlen = uu.length;
                var ualt = document.getElementById('user1');
                if (uu !== "")
                {
                    if (chrlen < 3)
                    {


                        ualt.innerHTML = "<font color='red'> *Username Too Short</font>";
                        return false;
                    } else {
                        ualt.innerHTML = "";
                        return true;
                    }
                }
                else if (chrlen === 0) {
                    ualt.innerHTML = "<font color='red'> *Invalid  Username</font>";

                    return false;
                }
            }


            function password() {
                var pawd = document.field.pwd.value;
                var palt = document.getElementById('pwd1');
                var pattern = /[^a-zA-Z0-9]/g
                if (!pawd.length == "")
                {
                    if (pawd.length < 4)
                    {
                        palt.innerHTML = "<font color='red'>* Weak Password !</font>";
                        return false;
                    }
                    else if (pattern.test(pawd))
                    {
                        palt.innerHTML = "<font color='Blue'> *Strong Password</font>";
                        return true;
                    }
                }
                else {
                    palt.innerHTML = "<font color='red'>*Enter Password</font>";
                    return false;
                }

            }


            function pass()
            {
                var pawd1 = document.getElementById('pwd');
                var pawdcon2 = document.getElementById('pwd_con');
                var palt = document.getElementById('pwd1');
                var pcalt = document.getElementById('pwdcon1');

                if (pawdcon2.value.length === 0) {
                    pcalt.innerHTML = "<font color='red'> Invalid Password Cofirm </font>";

                    return false;
                }

                else if (pawd1.value !== pawdcon2.value)
                {
                    pcalt.innerHTML = "";
                    palt.innerHTML = "<font color='red'> *Password Mismatch</font>";
                    return false;
                } else {
                    palt.innerHTML = "";
                    pcalt.innerHTML = "";
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
            <img src="images/logo.png" alt="" width="194" height="45" />
        </div>

        <!-- HOME --> 
        <div id="home">
            <span class="quoted">Academic<br/>Excellence<br/>since 2005</span><br/>
            <span class="paragraph">TRUBA Group of engineering and management Colleges are top and best Institutes in Indore,Bhopal M.P India. <a href="grid_gallery.jsp">link to Collections</a></span>

            <!-- HOME FULLSCREEN BACKGROUNDS --> 
            <div class="thumbs">
                <ul>
                    <li><a href="images/home/background_1.jpg" data-align="right">
                    <img src="images/home/thumbnail_1.jpg" alt="thumbnail" width="53" height="4"/></a></li>
                    <li><a href="images/home/background_2.jpg">
                    <img src="images/home/thumbnail_2.jpg" alt="thumbnail" width="53" height="4"/></a></li>
                    <li><a href="images/home/background_3.jpg">
                    <img src="images/home/thumbnail_3.jpg" alt="thumbnail" width="53" height="4"/></a></li>

                    <li><a href="images/home/background_4.jpg">
                    <img src="images/home/thumbnail_4.jpg" alt="thumbnail" width="53" height="4"/></a></li>
                    <li><a href="images/home/background_5.jpg" data-align="left">
                    <img src="images/home/thumbnail_5.jpg" alt="thumbnail" width="53" height="4"/></a></li>
                    <li><a href="images/home/background_6.jpg" data-valign="top">
                    <img src="images/home/thumbnail_6.jpg" alt="thumbnail" width="53" height="4"/></a></li>
                    <li><a href="images/home/background_7.jpg" data-valign="top">
                    <img src="images/home/thumbnail_7.jpg" alt="thumbnail" width="53" height="4"/></a></li>
                </ul>

                <img id="slideshow" class="playpause" title="Play slideshow" src="images/home/play.png" alt="" width="11" height="11" />
            </div>

        </div>
        <div id="home2">
            <form id="field" name="field" method="post" onSubmit="return myValidation();" action="UpdateUser1">
                <table width="509" height="447" border="0">
                    <tr>
                        <td width="24" height="33">&nbsp;</td>
                        <td colspan="4"><p align="left"><span class="style2"><strong><font size="+1" >Enroll. no.:-<%=uid%>|Name:-<%=unm%>|<a href="logoutdemo.jsp">LOGOUT</a></font></strong></span></p></td>
                    </tr>
                    <tr>
                        <td width="24" height="33">&nbsp;</td>
                        <td colspan="4"><div align="center"><span class="header"><font color="#ff0000" size="5">Register Here</font></span></div></td>
                    </tr>
                    <tr>
                        <td height="24">&nbsp;</td>
                        <td colspan="4"><div style="color: #0000ff;">${errorMessage}</div></td>
                    </tr>
                    <tr>
                        <td height="46">&nbsp;</td>
                        <td class="one"><font color="#ff0000" size="3">ENROLLMENT ID/USER ID</font></td>
                        <td>&nbsp;</td>
                        <td colspan="2"><input  type="text" name="enroll" id="enroll"  onblur="charlen1(this.id);" maxlength=20 onKeyup="isAlphaNumeric1();" value="<%=uuid%>" size="20" /><span id=user12></span> </td>
                    </tr>
                    <tr>
                        <td height="46">&nbsp;</td>
                        <td width="148" class="one"> <font color="#ff0000" size="3">NAME</font></td>
                        <td width="15">&nbsp;</td>
                        <td colspan="2">
                            <label for="textfield2"></label>
                            <input  type="text" name="user" id="user"  onblur="charlen(this.id);" maxlength=20 onKeyup="isAlphaNumeric();" size="20" value="<%=uunm%>" /><span id=user1></span> 
                        </td>
                    </tr>
                    <tr>
                        <td height="32">&nbsp;</td>
                        <td class="one"><font color="#ff0000" size="3">PASSWORD</font></td>
                        <td>&nbsp;</td>
                        <td colspan="2">
                            <label for="textfield3"></label>
                            <input name="pwd" id="pwd" onKeyUp="password();" size="20" value="<%=uupass%>"/><span id=pwd1></span> 
                        </td>
                    </tr>
                    <tr>
                        <td height="34">&nbsp;</td>
                        <td class="one"> <font color="#ff0000" size="3">CONFIRM PASSWORD</font></td>
                        <td>&nbsp;</td>
                        <td colspan="2">
                            <label for="textfield4"></label>
                            <input  name="pwd_con" id="pwd_con" onBlur='pass();' size="20" value="<%=uupass%>"/><span id=pwdcon1></span>
                        </td>
                    </tr>
                    <tr>
                        <td height="35">&nbsp;</td>
                        <td class="one"><font color="#ff0000" size="3">ADDRESS</font></td>
                        <td>&nbsp;</td>
                        <td colspan="2">

                            <label for="textfield6"></label>
                            <textarea type="text" name="name" id="name"  onkeyup="isAlphapet();"  rows="2" cols="25"><%=uadrs%></textarea><span id=name1></span></td>
                    </tr>
                    <tr>
                        <td height="39">&nbsp;</td>
                        <td><font color="#ff0000" size="3">MOBILE NO.</font></td>
                        <td>&nbsp;</td>
                        <td colspan="2">
                            <label for="textfield5"></label>
                            <input type="text" name="ph_no" id="ph_no" onKeyUp="isNumeric();" minlength=10 value="<%=ucontact%>" maxlength=10 size="20" /><span id=phno1></span></td>
                    </tr>
                       <tr>
                       <% if (usex.equals("MALE")) { %>
                        <td height="30">&nbsp;</td>
                        <td><font color="#ff0000" size="3">GENDER</font></td>
                        <td>&nbsp;</td>
                        <td colspan="2"><input type="radio" name="group1" value="MALE" checked />
                            <font color="#ff0000" size="3">MALE</font>
                            <input type="radio" name="group1" value="FEMALE" />
                            <font color="#ff0000" size="3">FEMALE</font></td><%} else {%>
                        <td colspan="2">
                            <input type="radio" name="group1" value="MALE" />
                            <font color="#ff0000" size="3">MALE</font>
                            <input type="radio" name="group1" value="FEMALE" checked  />
                            <font color="#ff0000" size="3">FEMALE</font></td>


                        <%}%>
                    </tr>
                    <tr>
                        <td height="30">&nbsp;</td>
                        <td><font color="#ff0000" size="3">POST</font></td>
                        <td>&nbsp;</td>

                        <% if (upost.equals("admin")) { %>


                        <td colspan="2">
                            <input type="radio" name="post" value="student" />
                            <font color="#ff0000" size="3">STUDENT</font>
                            <input type="radio" name="post" value="admin" checked />
                            <font color="#ff0000" size="3">ADMIN</font></td>

                        <%} else {%>
                        <td colspan="2">
                            <input type="radio" name="post" value="student" checked />
                            <font color="#ff0000" size="3">STUDENT</font>
                            <input type="radio" name="post" value="admin"  />
                            <font color="#ff0000" size="3">ADMIN</font></td>


                        <%}%>


                    </tr>
                   
                    <tr>
                        <td height="30">&nbsp;</td>
                        <td><font color="#ff0000" size="3">EMAIL</font></td>
                        <td>&nbsp;</td>
                        <td colspan="2">
                            <input type="text" name="email" id="email" onKeyUp="emailvalid();" size="20" value="<%=uemail%>" /><span id=email1></span>
                        </td>
                    </tr>
                    <tr>
                     <td height="30">&nbsp;</td>
                        <td><font color="#ff0000" size="3">Verify</font></td><td>&nbsp;</td>
                    <% if (uverify==true) { %>
                       
                       
                        <td colspan="2"><input type="radio" name="verify" value="true" checked/>
                            <font color="#ff0000" size="3">TRUE</font>
                            <input type="radio" name="verify" value="false" />
                            <font color="#ff0000" size="3">FALSE</font></td><%} else {%>
                        
                        
                        <td colspan="2"><input type="radio" name="verify" value="true" />
                            <font color="#ff0000" size="3">TRUE</font>
                            <input type="radio" name="verify" value="false" checked/>
                            <font color="#ff0000" size="3">FALSE</font></td>


                        <%}%>
                    </tr>
                    <tr>
                        <td height="74">&nbsp;</td>
                        <td colspan="4"><table width="331" border="0">
                                <tr>
                                    <td width="162"><input type="submit" name="button" id="button"  value="Submit" /></td>
                                    <td width="159"><input type="reset" name="button2" id="button2" value="Reset" /></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table></td>
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
    </body>
</html>