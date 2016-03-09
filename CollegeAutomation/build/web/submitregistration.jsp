
<!DOCTYPE HTML>
<!--[if IE 8 ]>    <html lang="en" class="ie8"> <![endif] 
    [if IE 9 ]>    <html lang="en" class="ie"> <![endif] -->
<!--[if !IE]--> <html lang="en"> <!--[endif]-->

    <head>
        <%@ page import="java.sql.*"%>
        <%@include file="Secure.jsp"%>


        <%            String uid = (String) session.getAttribute("uid");

            String ans, uuid = "", uunm = "", uupass = "", upost = "", uadrs = "", usex = "", uemail = "", ucontact = "";

            boolean status=false;

            boolean uverify = false;
            ans = request.getParameter("ans");

            String unm = "", mail = "", scontact = "";
            String semnos = "", semno1 = "", branch="", sessionfrom="", sessionto="", sub1="", sub2="", sub3="", sub4="", sub5="", subcode1="", subcode2="", subcode3="", subcode4="", subcode5="", prat1="", prat2="", prat3="", prat4="", pratcode1="", pratcode2="", pratcode3="", pratcode4="",
                    semgd="",
                    selfstudy="",
                    minormajor="",
                    guidename="";
            ;
            String classrollno = "", fnm = "", mnm = "", relation = "", fmail = "", locadrs = "", paradrs = "", category = "";
            String emername = "", emerphno = "", bloodgp = "",lastsemgread="", donateblood = "", disease = "", joiningdate = "", fphno = "";

            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = connection.start.MyConnection.myConnection();
            Statement st = con.createStatement();

            PreparedStatement preparedStatement;

            String q2 = " SELECT * FROM `semreg` WHERE uid=?";
            preparedStatement = con.prepareCall(q2);
            preparedStatement.setString(1, ans);
//            preparedStatement.setString(2, semnos);
            ResultSet rs2 = preparedStatement.executeQuery();

            if (rs2.next()) {

                unm = rs2.getString("unm");
                
                uid=ans;
//                sex = rs2.getString("sex");
                mail = rs2.getString("semail");
                scontact = rs2.getString("stuphno");
                classrollno = rs2.getString("classrollno");
                fnm = rs2.getString("fnm");
                mnm = rs2.getString("mnm");
                relation = rs2.getString("relation");
                fmail = rs2.getString("fmail");
                locadrs = rs2.getString("locadrs");
                paradrs = rs2.getString("paradrs");
                category = rs2.getString("category");
                emername = rs2.getString("emername");
                emerphno = rs2.getString("emerphno");
                bloodgp = rs2.getString("bloodgp");
                donateblood = rs2.getString("donateblood");
                disease = rs2.getString("disease");
                joiningdate = rs2.getString("joiningdate");
                fphno = rs2.getString("fphno");

                status = rs2.getBoolean("status");
                lastsemgread = rs2.getString("lastsemgread");
                branch = rs2.getString("branch");
                sessionfrom = rs2.getString("sessionfrom");
                sessionto = rs2.getString("sessionto");
                sub1 = rs2.getString("sub1");
                sub2 = rs2.getString("sub2");
                sub3 = rs2.getString("sub3");
                sub4 = rs2.getString("sub4");
                sub5 = rs2.getString("sub5");
                subcode1 = rs2.getString("subcode1");
                subcode2 = rs2.getString("subcode2");
                subcode3 = rs2.getString("subcode3");
                subcode4 = rs2.getString("subcode4");

                subcode5 = rs2.getString("subcode5");
                prat1 = rs2.getString("prat1");
                prat2 = rs2.getString("prat2");
                prat3 = rs2.getString("prat3");
                prat4 = rs2.getString("prat4");

                pratcode1 = rs2.getString("pratcode1");
                pratcode2 = rs2.getString("pratcode2");
                pratcode3 = rs2.getString("pratcode3");
                pratcode4 = rs2.getString("pratcode4");
                semgd = rs2.getString("semgd");
                selfstudy = rs2.getString("selfstudy");
                minormajor = rs2.getString("minormajor");

                guidename = rs2.getString("guidename");
				
				
				
				
				
				
                System.out.println("sub1:" + sub1);

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

            <form id="field" name="field" method="post" onSubmit="return myValidation();" action="SubmitRegistration">
                <table width="800" height="2000" >
                    <tr>
                        <td width="632" height="2000"><p align="right"><span class="style2">Enrollment no. :-<strong><font size="+1" >Enroll. no.:-<%=uid%>|Name:-<%=unm%>|<a href="logoutdemo.jsp">LOGOUT</a></font></strong></span></p>
                            <p class="style2">&nbsp;</p>
                            <p>                
                                <strong>
                                    <h2>TRUBA COLLEGE OF ENGINEERING AND TECHNOLOGY,INDORE</h2>
                                </strong>
                            </p>
                            <p >                
                                <strong><u>
                                        <h4>BACHELOR OF ENGINERING(B.E)</h4>
                                    </u></strong>
                            </p>
                            <p align="center"><strong><font color="#ff0000">(AFFILIATED TO R.G.P.V. BHOPAL)</font></strong></p>
                            <p align="center"><strong><font color="#ff0000">REGISTRATION CARD FOR SESSION-- </font>
                                    <select name="select">
                                        <option>2010</option>
                                        <option>2011</option>
                                        <option>2012</option>
                                        <option>2013</option>
                                        <option>2014</option>
                                        <option>2015</option>
                                        <option>2016</option>
                                        <option>2017</option>
                                        <option>2018</option>
                                        <option>2019</option>
                                        <option>2020</option>
                                    </select>
                                    TO
                                    <select name="select2">
                                        <option>2014</option>
                                        <option>2015</option>
                                        <option>2016</option>
                                        <option>2017</option>
                                        <option>2018</option>
                                        <option>2019</option>
                                        <option>2020</option>
                                        <option>2021</option>
                                        <option>2022</option>
                                        <option>2023</option>
                                        <option>2024</option>
                                        <option>2025</option>
                                    </select>
                                </strong></p>
                            <p align="center"><strong><font color="#ff0000">B.E.-
                                    <select name="select3">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                        <option>7</option>
                                        <option>8</option>
                                    </select></font>
                                    <font color="#FFFFFF">  SEMESTER</font></strong></p>
                            <p align="center"><strong><font color="#ff0000">BRANCH-<font color="#FFFFFF"> 
                                    <input value="CSE" type="radio" name="Branch" checked />
                                    CSE
                                    <input value="ME" type="radio" name="Branch" />
                                    ME
                                    <input value="EC" type="radio" name="Branch" />
                                    EC
                                    <input value="CE" type="radio" name="Branch" />
                                    CE
                                    <input value="IT" type="radio" name="Branch" />
                                    IT</font></strong></p>
                            <p align="left"><strong><font color="#ff6600">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">1.</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enrollment number-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input  type="text" name="enroll" id="enroll"  onblur="charlen1(this.id);" value="<%=uid%>"maxlength=20 onKeyup="isAlphaNumeric1();" size="20" /><span id=user12></span> 
                                    &nbsp;&nbsp;</font> </strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">2.</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Class roll number-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="text" name="clas" id="clas" onkeyup="isNumeric1();" value="<%=classrollno%>" /><span id=class1></span> </strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">3.</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name Shri/Kumari/Smt-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input  type="text" name="user" id="user"  onblur="" maxlength=20 value="<%=unm%>" onKeyup="isAlphaNumeric();" size="20" /><span id=user1></span> 
                                </strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">4.</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Father's name-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input  type="text" name="father" id="father"  onblur="" maxlength=20 onKeyup="isAlphaNumeric3();" size="20" value="<%=fnm%>" /><span id=fathererror></span> 
                                </strong></p>
                            <p align="left"><strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mother's name-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input  type="text" name="mother" id="mother"  onblur="" maxlength=20 onKeyup="isAlphaNumeric4();" size="20" value="<%=mnm%>"/><span id=mothererror></span> 
                                </strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gaurdian-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="text" name="relation" id="relation" onblur="charlen2(this.id);" maxlength="20" onkeyup="isAlphaNumeric01();" value="<%=relation%>" size="20"/>
                                    <span class="style4"><font color="#FFFFFF"> (specify relationship)<span id=relation1></font></span></strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">5.</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Telephone number-</strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">     </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Father's-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                                    <input type="text" name="ph_no" id="ph_no" onKeyUp="isNumeric();" minlength=10 maxlength=10 size="20" value="<%=fphno%>"/><span id=phno1></span>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Student-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;
                                    <input type="text" name="stuph_no" id="stuph_no" onKeyUp="isNumeric11();" value="<%=scontact%>" minlength=10 maxlength=10 size="20" /><span id=stuphno1></span>
                                </strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email<span class="style4">(Student)</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp; &nbsp; &nbsp;&nbsp;
                                    <input type="text" name="email" id="email" onKeyUp="emailvalid();" size="20" value="<%=mail%>" /><span id=email1></span>

                                </strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email<span class="style4"> (Father's/guardian's/any)</span>
                                    <input type="text" name="femail" id="femail" onKeyUp="emailvalid1();" size="20" value="<%=fmail%>" /><span id=femail1></span>                                </strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">6.</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mailing address-</strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">(A)</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Local:</strong></p>
                            <p align="left"><strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <textarea type="text" name="name" id="name"  onkeyup="isAlphapet();" rows="2"  cols="25"><%=locadrs%></textarea><span id=name1></span>
                                </strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">(B)</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Permanent:</strong></p>
                            <p align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <textarea type="text" name="padd" id="padd"  onkeyup="isAlphapet1();" rows="2" cols="25"><%=paradrs%></textarea><span id=padd1></span>

                            </p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">7.</font>Category:<font color="#FFFFFF"> 
                                    <input name="Category"  type="radio" value="General" checked />
                                    General
                                    <input name="Category" type="radio" value="ST" />
                                    ST 
                                    /
                                    SC
                                    <input name="Category" type="radio" value="OBC" />
                                    OBC</font></strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">8.</font>Whom to inform in case of emergency-<br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">(A)</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="text" name="enam" id="enam" onblur="charlen5(this.id);" maxlength="20" onkeyup="isAlphaNumeric02();" value="<%=emername%>" size="20"/><span id=enam1></span> 
                                </strong></p>
                            <p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">(B)</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Telephone number/Mob. no.-&nbsp;
                                    <input type="text" name="re_no" id="re_no" onKeyUp="isNumeric22();" minlength=10 value="<%=emerphno%>" maxlength=10 size="20" /><span id=reno1></span>
                                </strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">9.</font>Blood group-
                                    <select name="bg" >
                                        <b>
                                            <option>A+</option>
                                            <option>A-</option>
                                            <option>B+</option>
                                            <option>B-</option>
                                            <option>O+</option>
                                            <option>O-</option>
                                            <option>AB+</option>
                                            <option>AB-</option>
                                        </b>
                                    </select>
                                </strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">10.</font>Willingness to donate blood to needy in case of emergency?
                                    <input name="donateblood" type="radio" value="yes" checked/>
                                    <font color="#FFFFFF" >  Yes</font>
                                    <input name="donateblood" type="radio" value="no" /><font color="#FFFFFF"> 
                                    No</font></strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">11.</font>Disease(if any)that needs immediate attention?
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input name="Disease" type="radio" value="yes" checked/>
                                    <font color="#FFFFFF">  Yes</font>
                                    <input name="Disease" type="radio" value="no" /><font color="#FFFFFF"> 
                                    No</font></strong></p>
                            <p align="center"><strong><span class="style4">(if yes,students are advised to keep prescribed drug with them suggested by physician in case of emergency)</span></strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">12.</font>Academic details:- </strong></p>
                            <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">a)</font>Year of Joining Institute:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <select name="select4">
                                        <option>2000</option>
                                        <option>2001</option>
                                        <option>2002</option>
                                        <option>2003</option>
                                        <option>2004</option>
                                        <option>2005</option>
                                        <option>2006</option>
                                        <option>2007</option>
                                        <option>2008</option>
                                        <option>2009</option>
                                        <option>2010</option>
                                        <option>2011</option>
                                        <option>2012</option>
                                        <option>2013</option>
                                        <option>2014</option>
                                        <option>2015</option>
                                        <option>2016</option>
                                        <option>2017</option>
                                        <option>2018</option>
                                        <option>2019</option>
                                        <option>2020</option>
                                        <option>2021</option>
                                        <option>2022</option>
                                        <option>2023</option>
                                        <option>2024</option>
                                        <option>2025</option>
                                    </select>
                                </strong></p>
                            <table width="701" border="0">
                            </table>
                            <p align="center">&nbsp;</p>
                            <p><strong>&nbsp;PERCENTAGE OR GRADE OF LAST SEM -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="text" name="gread" id="gread" onblur="" maxlength="20" onkeyup="isAlphaNumeric03();" value="<%=lastsemgread%>" size="20"/><span id=gread1></span> 

                                </strong></p>
                            <p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ffffff">13.(A)</font>&nbsp;&nbsp;&nbsp;&nbsp;Subjects of current semester:-</strong></p>
                            <table width="628" height="155" border="0">
                                <tr>
                                    <td width="337" height="21"><div align="center"><strong>Name of theory papers</strong></div></td>
                                    <td width="281"><div align="center"><strong>Code</strong></div></td>
                                </tr>
                                <tr>
                                    <td height="24"><div align="center">a)<strong>
                                                <input  type="text" name="sub1" id="sub1"  onblur="charlen01(this.id);" maxlength=20 value="<%=sub1%>" onKeyup="isAlphaNumeric5();" size="20" /><span id=subject1><span>
                                                        </strong></div></td>
                                                        <td><p align="center"><strong>
                                                                    <input type="text" name="subcode1" value="<%=subcode1%>"/>
                                                                </strong></p></td>
                                                        </tr>
                                                        <tr>
                                                            <td height="24"><div align="center">b)<strong>
                                                                        <input type="text" value="<%=sub2%>" name="sub2" />
                                                                    </strong></div></td>
                                                            <td><div align="center"><strong>
                                                                        <input type="text" name="subcode2" value="<%=subcode2%>"/>
                                                                    </strong></div></td>
                                                        </tr>
                                                        <tr>
                                                            <td height="24"><div align="center">c)<strong>
                                                                        <input type="text" name="sub3" value="<%=sub3%>"/>
                                                                    </strong></div></td>
                                                            <td><div align="center"><strong>
                                                                        <input type="text" name="subcode3" value="<%=subcode3%>" />
                                                                    </strong></div></td>
                                                        </tr>
                                                        <tr>
                                                            <td height="24"><div align="center">d)<strong>
                                                                        <input type="text" name="sub4" value="<%=sub4%>" />
                                                                    </strong></div></td>
                                                            <td><div align="center"><strong>
                                                                        <input type="text" name="subcode4" value="<%=subcode4%>"/>
                                                                    </strong></div></td>
                                                        </tr>
                                                        <tr>
                                                            <td height="24"><div align="center">e)<strong>
                                                                        <input type="text" name="sub5" value="<%=sub5%>" />
                                                                    </strong></div></td>
                                                            <td><div align="center"><strong>
                                                                        <input type="text" name="subcode5" value="<%=subcode5%>" />
                                                                    </strong></div></td>
                                                        </tr>
                                                        </table>
                                                        <p>&nbsp;</p>
                                                        <table width="631" height="145" border="0">
                                                            <tr>
                                                                <td width="360" valign="bottom"><div align="center"><strong>Name of paper(practicals)</strong></div></td>
                                                                <td width="261" valign="bottom"><div align="center"><strong>Code</strong></div></td>
                                                            </tr>
                                                            <tr>
                                                                <td height="24" valign="bottom"><div align="center">a)<strong>
                                                                            <input type="text" name="prat1" id="prat1" onblur="charlen05(this.id);" maxlength="20" onkeyup="isAlphaNumeric05();" size="20" value="<%=prat1%>"/><span id=sub1></span> 

                                                                        </strong></div></td>
                                                                <td valign="bottom"><div align="center"><strong>
                                                                            <input type="text" name="pratcode1" value="<%=pratcode1%>"/>
                                                                        </strong></div></td>
                                                            </tr>
                                                            <tr>
                                                                <td height="24" valign="bottom"><div align="center">b)<strong>
                                                                            <input type="text" name="prat2" value="<%=prat2%>"/>
                                                                        </strong></div></td>
                                                                <td valign="bottom"><div align="center"><strong>
                                                                            <input type="text" name="pratcode2" value="<%=pratcode2%>"/>
                                                                        </strong></div></td>
                                                            </tr>
                                                            <tr>
                                                                <td height="24" valign="bottom"><div align="center">c)<strong>
                                                                            <input type="text" name="prat3" value="<%=prat3%>"/>
                                                                        </strong></div></td>
                                                                <td valign="bottom"><div align="center"><strong>
                                                                            <input type="text" name="pratcode3" value="<%=pratcode3%>"/>
                                                                        </strong></div></td>
                                                            </tr>
                                                            <tr>
                                                                <td height="24" valign="bottom"><div align="center">d)<strong>
                                                                            <input type="text" name="prat4" value="<%=prat4%>"/>
                                                                        </strong></div></td>
                                                                <td valign="bottom"><div align="center"><strong>
                                                                            <input type="text" name="pratcode4" value="<%=pratcode4%>"/>
                                                                        </strong></div></td>
                                                            </tr>
                                                        </table>
                                                        <p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Seminar/Group Discussion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <input type="text" name="semgd" value="<%=semgd%>"/>
                                                            </strong><span class="style4">(not for 1st,2nd and 3rd sem)</span></p>
                                                        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Topic of self study&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <input type="text" name="selfstudy" value="<%=selfstudy%>" />
                                                            </strong><span class="style4">(not for 1st,2nd and 3rd sem)</span></p>
                                                        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Minor or Major project title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <input type="text" name="minormajor" value="<%=minormajor%>" />
                                                            </strong><span class="style4">(not for 1st,2nd and 3rd sem)</span></p>
                                                        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Guide Name(s)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <input type="text" name="guidename" value="<%=guidename%>" />
                                                            </strong><span class="style4">(not for 1st,2nd and 3rd sem)</span></p>
                                                             <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Approval&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                 <% if(status==true) {%>       
                                                                <input name="approve" type="radio" value="yes" checked/>
                                    <font color="#FFFFFF" >  Yes</font>
                                    <input name="approve" type="radio" value="no" /><font color="#FFFFFF"> 
                                    No</font></p><%}else{%>
                                    
                                                                  <input name="approve" type="radio" value="yes" />
                                    <font color="#FFFFFF" >  Yes</font>
                                    <input name="approve" type="radio" value="no" checked/><font color="#FFFFFF"> 
                                    No</font></p>
                                    
                                    <%}%>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <input type="checkbox" name="checkbox" value="checkbox" /><font color="#ffffff">
                                                        <span class="style5" >The details filled by me,are correct to the best of my knowledge.I hereby declare that i am responsible to complete all necessary academic requirements of the institute &amp; the university. </span></font>
                                                        <p align="center"><div style="color: #0000ff;">${errorMessage}</div></p>
                                                        <div align="center">
                                                            <input type="submit" name="Submit" value="Submit" />
                                                        </div>
                                                        <p>&nbsp;</p></td>
                                                        </tr>
                                                        </table>
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
                                                                <li><a href="http://www.facebook.com/pezflash" target="_blank" title="Facebook"><img src="images/icon_facebook.png" alt="facebook"/></a></li>
                                                                <li><a href="http://www.twitter.com/pezflash" target="_blank" title="Twitter"><img src="images//icon_twitter.png" alt="twitter"/></a></li>
                                                                <li><a href="http://themeforest.net/user/pezflash" target="_blank" title="RSS"><img src="images//icon_rss.png" alt="rss"/></a></li>
                                                            </ul>
                                                        </div>
                                                        </body>
                                                        </html>
