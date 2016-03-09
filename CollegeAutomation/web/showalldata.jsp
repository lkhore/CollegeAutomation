
<!DOCTYPE HTML>
<!--[if IE 8 ]>    <html lang="en" class="ie8"> <![endif] 
    [if IE 9 ]>    <html lang="en" class="ie"> <![endif] -->
<!--[if !IE]--> <html lang="en"> <!--[endif]-->

    <head>
        <%@ page import="java.sql.*"%>
        <%@include file="Secure.jsp"%>


        <%            String uid = (String) session.getAttribute("uid");
            String unm = "", sex = "", mail = "", scontact = "";
            String semnos = "", semno1 = "";
            String classrollno = "", fnm = "", mnm = "", relation = "", fmail = "", locadrs = "", paradrs = "", category = "";
            String emername = "", emerphno = "", bloodgp = "", donateblood = "", disease = "", joiningdate = "", fphno = "";

            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = connection.start.MyConnection.myConnection();
            Statement st = con.createStatement();

          

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


            function isAlphaNumeric5()
            {
                var alphaExp = /^[a-zA-Z0-9]+$/;
                var subj1 = document.field.sub1.value;
                var ualt = document.getElementById('subject1');
                if (!subj1.match(alphaExp) && (subj1 !== ""))
                {

                    ualt.innerHTML = "<font color='red'> *Invalid Subject Name </font>";
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
                    ualt.innerHTML = "<font color='red'> *InValid Enrollment</font>";

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
                    //                    ualt.innerHTML = "";

                    return charlen();
                }
            }
            function isAlphaNumeric3()
            {
                var alphaExp = /^[a-zA-Z]+$/;
                var usernam = document.field.father.value;
                var ualt = document.getElementById('fathererror');
                if (!usernam.match(alphaExp) && (usernam !== ""))
                {

                    ualt.innerHTML = "<font color='red'> *Invalid FatherName </font>";
                    return false;
                } else {
                    //                    ualt.innerHTML = "";

                    return charlen3();
                }
            }
            function isAlphaNumeric02()
            {
                var alphaExp = /^[a-zA-Z0-9]+$/;
                var enam = document.field.enam.value;
                var ualt = document.getElementById('enam1');
                if (!enam.match(alphaExp) && (enam !== ""))
                {

                    ualt.innerHTML = "<font color='red'> *Invalid Name </font>";
                    return false;
                } else {
                    ualt.innerHTML = "";
                    return true;
                }
            }
            function isAlphaNumeric05()
            {
                var alphaExp = /^[a-zA-Z0-9]+$/;
                var suu = document.field.enam.value;
                var ualt = document.getElementById('sub1');
                if (!suu.match(alphaExp) && (suu !== ""))
                {

                    ualt.innerHTML = "<font color='red'> *Invalid SubjectName </font>";
                    return false;
                } else {
                    ualt.innerHTML = "";
                    return true;
                }
            }
            function isAlphaNumeric03()
            {
                var alphaExp = /^[a-zA-Z0-9]+$/;
                var gread1 = document.field.gread.value;
                var ualt = document.getElementById('gread1');
                if (gread1 == "")
                {

                    ualt.innerHTML = "<font color='red'> *Enter Gread or Peresent </font>";
                    return false;
                } else {
                    ualt.innerHTML = "";
                    return true;
                }
            }
            function isAlphaNumeric01()
            {
                var alphaExp = /^[a-zA-Z0-9]+$/;
                var Rel = document.field.relation.value;
                var ualt = document.getElementById('relation1');
                if (!Rel.match(alphaExp) && (Rel !== ""))
                {

                    ualt.innerHTML = "<font color='red'> *Invalid RelationShip </font>";
                    return false;
                } else {
                    ualt.innerHTML = "";
                    return true;
                }
            }

            function isNumeric1()
            {

                var roll = document.form.clas.value;
                var nalt = document.getElementById('class1');
                if (roll !== "")
                {
                    var numericExpression = /^[0-9]+$/;
                    if (roll.match(numericExpression))
                    {
                        if (roll.length === 0)
                        {
                            nalt.innerHTML = "<font color='red' size='2'>*</font>";
                            return false;
                        }
                        else
                        {
                            nalt.innerHTML = "";
                            return true;
                        }
                    }
                    else {
                        document.form.clas.value = "";
                        nalt.innerHTML = "<font color='red' size='2' >* Numeric Values Only</font>";
                        return false;
                    }
                }
                else {
                    document.form.clas.value = "";
                    nalt.innerHTML = "<font color='red' size='2'>* Numeric Values Only</font>";
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
            function isAlphapet1()
            {

                var padd = document.field.padd.value;
                var nalt = document.getElementById('padd1');
                if (padd.length === 0) {
                    nalt.innerHTML = "<font color='red'> *Invalid Address</font>";

                    return false;
                } else {
                    nalt.innerHTML = "";
                    return true;
                }
            }





            function isAlphaNumeric4()
            {
                var alphaExp = /^[a-zA-Z]+$/;
                var usernam = document.field.mother.value;
                var ualt = document.getElementById('mothererror');
                if (!usernam.match(alphaExp) && (usernam !== ""))
                {

                    ualt.innerHTML = "<font color='red'> *Invalid MotherName </font>";
                    return false;
                } else {
                    //                    ualt.innerHTML = "";

                    return charlen4();
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
            function emailvalid1()
            {
                var femal = document.field.femail.value;
                var ealt = document.getElementById('femail1');
                if (femal !== "")
                {
                    var emailExp = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
                    if (!femal.match(emailExp))
                    {


                        ealt.innerHTML = "<font color='red'> *Invalid Father Email id </font>";
                        return false;
                    } else {
                        ealt.innerHTML = "";
                        document.getElementById('femail');
                        return true;
                    }
                }
                else if (femal.length === 0)
                {
                    ealt.innerHTML = "<font color='red'> *Invalid Father Email id</font>";
                    return false;
                }
            }
            function isNumeric11()
            {

                var mob = document.field.stuph_no.value;
                var nalt = document.getElementById('stuphno1');
                if (mob !== "")
                {
                    var numericExpression = /^[0-9]+$/;
                    if (mob.match(numericExpression))
                    {
                        if (mob.length == "10")
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
                        document.field.stuph_no.value = "";
                        nalt.innerHTML = "<font color='red'>* Numeric Values Only</font>";
                        return false;
                    }
                }
                else {
                    document.field.stuph_no.value = "";
                    nalt.innerHTML = "<font color='red'>* Numeric Values Only</font>";
                    return false;
                }


            }

            function isNumeric22()
            {

                var rmob = document.field.re_no.value;
                var nalt = document.getElementById('reno1');
                if (rmob !== "")
                {
                    var numericExpression = /^[0-9]+$/;
                    if (rmob.match(numericExpression))
                    {
                        if (rmob.length == "10")
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
                        document.field.re_no.value = "";
                        nalt.innerHTML = "<font color='red'>* Numeric Values Only</font>";
                        return false;
                    }
                }
                else {
                    document.field.re_no.value = "";
                    nalt.innerHTML = "<font color='red'>* Numeric Values Only</font>";
                    return false;
                }


            }

            function  charlen01()
            {
                var su1 = document.getElementById('sub1');
                var uu1 = su1.value;
                var chrlen01 = uu.length;
                var ualt = document.getElementById('subject1');
                if (uu1 !== "")
                {
                    if (chrlen01 < 3)
                    {


                        ualt.innerHTML = "<font color='red'> *Subject Name Too Short</font>";
                        return false;
                    } else {
                        ualt.innerHTML = "";
                        return true;
                    }
                }
                else if (chrlen01 === 0) {
                    ualt.innerHTML = "<font color='red'> *Invalid Subject Name  </font>";

                    return false;
                }
            }


            function  charlen3()
            {
                var userid = document.getElementById('father');
                var uu = userid.value;
                var chrlen = uu.length;
                var ualt = document.getElementById('fathererror');
                if (uu !== "")
                {
                    if (chrlen < 3)
                    {


                        ualt.innerHTML = "<font color='red'> *Fathername Too Short</font>";
                        return false;
                    } else {
                        ualt.innerHTML = "";
                        return true;
                    }
                }
                else if (chrlen === 0) {
                    ualt.innerHTML = "<font color='red'> *Invalid  Fathername</font>";

                    return false;
                }
            }
            function  charlen4()
            {
                var userid = document.getElementById('mother');
                var uu = userid.value;
                var chrlen = uu.length;
                var ualt = document.getElementById('mothererror');
                if (uu !== "")
                {
                    if (chrlen < 3)
                    {


                        ualt.innerHTML = "<font color='red'> *MotherName Too Short</font>";
                        return false;
                    } else {
                        ualt.innerHTML = "";
                        return true;
                    }
                }
                else if (chrlen === 0) {
                    ualt.innerHTML = "<font color='red'> *Invalid  MotherName</font>";

                    return false;
                }
            }

            function  charlen2()
            {
                var Rid = document.getElementById('relation');
                var uu = Rid.value;
                var chrlen2 = uu.length;
                var ualt = document.getElementById('relation1');
                if (uu !== "")
                {
                    if (chrlen2 < 3)
                    {


                        ualt.innerHTML = "<font color='red'> *Relationship Too Short</font>";
                        return false;
                    } else {
                        ualt.innerHTML = "";
                        return true;
                    }
                }
                else if (chrlen2 === 0) {
                    ualt.innerHTML = "<font color='red'> *Invalid Relationship  </font>";

                    return false;
                }
            }

            function  charlen5()
            {
                var enam = document.getElementById('enam');
                var uu = enam.value;
                var chrlen5 = uu.length;
                var ualt = document.getElementById('enam1');
                if (uu !== "")
                {
                    if (chrlen5 < 3)
                    {


                        ualt.innerHTML = "<font color='red'> *Name Too Short</font>";
                        return false;
                    } else {
                        ualt.innerHTML = "";
                        return true;
                    }
                }
                else if (chrlen5 === 0) {
                    ualt.innerHTML = "<font color='red'> *Invalid Name  </font>";

                    return false;
                }
            }
            function  charlen05()
            {
                var psuu = document.getElementById('psub');
                var uu = psuu.value;
                var chrlen05 = uu.length;
                var ualt = document.getElementById('psub1');
                if (uu !== "")
                {
                    if (chrlen05 < 3)
                    {


                        ualt.innerHTML = "<font color='red'> *subjectName Too Short</font>";
                        return false;
                    } else {
                        ualt.innerHTML = "";
                        return true;
                    }
                }
                else if (chrlen05 === 0) {
                    ualt.innerHTML = "<font color='red'> *Invalid Subject Name</font>";

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


                        ualt.innerHTML = "<font color='red'> *Name Too Short</font>";
                        return false;
                    } else {
                        ualt.innerHTML = "";
                        return true;
                    }
                }
                else if (chrlen === 0) {
                    ualt.innerHTML = "<font color='red'> *Invalid  Name</font>";

                    return false;
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
        <div id="home3" style="width: 969; height: 185">

            <form method="post" action="res2.jsp">
                <table width="1055" border="1" style="border-width: 0">
                    <tr>
                        <td style="border-style: none; border-width: medium; " width="1049"><span style="border-left-style: none; border-left-width: medium; border-top: medium none #111111; border-bottom: medium none #111111">

                            </span></td>
                    </tr>
                </table>
                <table width="1056" border="1">
                
                 <tr>
                        <td width="117"><font color="#ff0000">UserId</font></td>
                   <td width="112"><font color="#ff0000">UserName</font></td>                      
                        <td width="81"><font color="#ff0000">Password</font></td>
                        <td width="72"><font color="#ff0000">Post</font></td>
                        <td width="191"><font color="#ff0000">Address</font></td>
                        <td width="65"><font color="#ff0000">Gender</font></td>
                        <td width="219"><font color="#ff0000">Email</font></td>
                        <td width="79"> <font color="#ff0000">Contact No.</font></td>
                        <td width="80"><font color="#ff0000">Verify</font></td>


                    </tr>
                
                
                <%                    Class.forName("com.mysql.jdbc.Driver");

                    String s = "select * from user";
                    PreparedStatement preparedStatement2 = con.prepareCall(s);
                    ResultSet resultSet = preparedStatement2.executeQuery();

                    while (resultSet.next()) {
                %>
                

                    <tr>
                        <td width="117">  
                        <font color="#3300FF" size="+1"><%=resultSet.getString(1)%> </font>
                        <td width="112">
                            <font color="#3300FF" size="+1"><%=resultSet.getString(2)%></font></td>                      
                        <td width="81"> <font color="#3300FF" size="+1"><%=resultSet.getString(3)%></font></td>
                        <td width="72"> <font color="#3300FF" size="+1"><%=resultSet.getString(4)%></font></td>
                        <td width="191"> 
                       <font color="#3300FF" size="+1"><%=resultSet.getString(5)%></font></td>
                        <td width="65"> <font color="#3300FF" size="+1"><%=resultSet.getString(6)%></font></td>
                        <td width="219"> <font color="#3300FF" size="+1"><%=resultSet.getString(7)%></font></td>
                        <td width="79"> <font color="#3300FF" size="+1"><%=resultSet.getString(8)%></font></td>
                        <td width="80"> 
                        <font color="#3300FF" size="+1"><%=resultSet.getString(9)%></font></td>


                    </tr>

                <%}%>
                </table>
                <p>&nbsp;</p>
                <p>&nbsp;</p>



            </form>

        </div>
        <!-- MENU -->
        <div id="menu" style="width: 266; height: 180">

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

                <li><a href="registration2.jsp">Semester_Registration_Form</a></li>
                <li><a href="shops.jsp">Shops</a></li>
                <li><a href="location.jsp">Location</a></li>
                <li><a href="blog.jsp">Blog</a></li>
            </ul>
        </div>



        <!-- FOOTER - COPYRIGHT & SOCIAL NETWORKS -->
        <div id="footer">
            <ul>
                <li class="copyright">Copyright ? 2012 - <a href="mailto:info@coolagora.com">info@coolagora.com</a></li>
                <li><a href="http://www.facebook.com/pezflash" target="_blank" title="Facebook">
                <img src="images/icon_facebook.png" alt="facebook" width="19" height="19"/></a></li>
                <li><a href="http://www.twitter.com/pezflash" target="_blank" title="Twitter">
                <img src="images/icon_twitter.png" alt="twitter" width="19" height="19"/></a></li>
                <li><a href="http://themeforest.net/user/pezflash" target="_blank" title="RSS">
                <img src="images/icon_rss.png" alt="rss" width="19" height="19"/></a></li>
            </ul>
        </div>
    </body>
</html>