
<!DOCTYPE HTML>
<!--[if IE 8 ]>    <html lang="en" class="ie8"> <![endif] 
    [if IE 9 ]>    <html lang="en" class="ie"> <![endif] -->
<!--[if !IE]--> <html lang="en"> <!--[endif]-->

    <head>

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
            <img src="images/logo.png" alt="" />
        </div>

        <!-- HOME --> 
        <div id="home">
            <span class="quoted">Academic<br/>Excellence<br/>since 2005</span><br/>
            <span class="paragraph">TRUBA Group of engineering and management Colleges are top and best Institutes in Indore,Bhopal M.P India. <a href="grid_gallery.jsp">link to Collections</a></span>

            <!-- HOME FULLSCREEN BACKGROUNDS --> 
            

        </div>
        <div id="home3">
           
             <table width="800" height="800" border="1">
            
    <tr>
   
      <td width="632" height="2324"><p align="right"><img src="LOGO60917.gif" alt="XDSADS" width="130" height="100" align="left" /><span class="style2">HOME | SITE MAP | CONTACT US </span></p>
        <p class="style2">&nbsp;</p>
        <p><strong><h2>TRUBA COLLEGE OF ENGINEERING AND TECHNOLOGY,INDORE</h2></strong></p>
        <p ><strong><u><h4>BACHELOR OF ENGINEERING(B.E)</h4></u> </strong></p>
        <p align="center"><strong><font color="#ff0000">(AFFILIATED TO R.G.P.V. BHOPAL)</font> </strong></p>
        <p align="center"><strong><font color="#ff0000">REGISTRATION CARD FOR SESSION-- </font>
          <select name="select">
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
		  </select>
          TO 
          <select name="select2">
		  
		  
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
          </select>
          SEMESTER</font></strong></p>
        <p align="center"><strong><font color="#ff0000">BRANCH-
          <input value="CSE" type="radio" name="Branch" />
          CSE
          <input value="ME" type="radio" name="Branch" />
          ME
          <input value="EC" type="radio" name="Branch" />
          EC
          <input value="IT" type="radio" name="Branch" />
          IT</font></strong></p>
        <p align="left"><strong><font color="#ff0000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enrollment number-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="textfield" />
          &nbsp;&nbsp;</font>
          </strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Class roll number-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="text" name="textfield2" />
        </strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name Shri/Kumari/Smt-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="textfield3" />
        </strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Father's name-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="textfield4" />
          </strong></p>
        <p align="left"><strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mother's name-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="textfield5" />
          </strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gaurdian-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <input type="text" name="textfield6" />
        (<span class="style4">specify relationship</span></strong><strong>)</strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Telephone number-</strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(A)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Father's-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="textfield7" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile no-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="textfield8" />
        </strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email(<span class="style4">Student</span>):
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="textfield9" />
          </strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email(<span class="style4">Father's/guardian's/any</span>)
            <input type="text" name="textfield10" />
          </strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mailing address-</strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(A)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Local:</strong></p>
        <p align="left"><strong>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="textfield11"></textarea>
          </strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(B)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Permanent:</strong></p>
        <p align="left">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="textfield12"></textarea>
        </p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7.Category:
            <input name="Category" type="radio" value="General" />
          General
          <input name="Category" type="radio" value="ST" />
          ST 
          /
          SC
          <input name="Category" type="radio" value="OBC" />
        OBC</strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8.Whom to inform in case of emergency-<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(A)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="text" name="textfield92" />
          </strong></p>
        <p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(B)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Telephone number/Mob. no.-&nbsp;
          <input type="text" name="textfield93" />
          </strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9.Blood group-
          <select name="bg">
		  <b><option>A+</option><option>A-</option><option>B+</option><option>B-</option><option>O+</option><option>O-</option><option>AB+</option><option>AB-</option></b>
		  </select>
          </strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10.Willingness to donate blood to needy in case of emergency?
          <input name="donateblood" type="radio" value="yes" />
          Yes
          <input name="donateblood" type="radio" value="no" />
          No</strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;11.Disease(if any)that needs immediate attention?
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input name="Disease" type="radio" value="yes" />
          Yes
          <input name="Disease" type="radio" value="no" />
          No</strong></p>
        <p align="center"><strong>(<span class="style4">if yes,students are advised to keep prescribed drug with them suggested by physician in case of emergency</span>)</strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;12.Academic details:- </strong></p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a)Year of Joining Institute:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          <select name="select4">
			<option>2000</option><option>2001</option><option>2002</option><option>2003</option><option>2004</option><option>2005</option><option>2006</option><option>2007</option><option>2008</option><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option><option>2022</option><option>2023</option><option>2024</option><option>2025</option>
          </select>
          </strong></p>
         <table width="701" border="0">
        </table>
        <p align="center">&nbsp;</p>
        <p><strong>&nbsp;PERCENTAGE OR GRADE OF LAST SEM -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="text" name="textfield9420" />
          </strong></p>
        <p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;13.(A)&nbsp;&nbsp;&nbsp;&nbsp;Subjects of current semester:-</strong></p>
        <table width="628" height="155" border="0">
            <tr>
              <td width="337" height="21"><div align="center"><strong>Name of theory papers</strong></div></td>
              <td width="281"><div align="center"><strong>Code</strong></div></td>
            </tr>
            <tr>
              <td height="24"><div align="center">a)<strong>
                  <input type="text" name="textfield9421" />
              </strong></div></td>
              <td><p align="center"><strong>
                  <input type="text" name="textfield9422" />
              </strong></p></td>
            </tr>
            <tr>
              <td height="24"><div align="center">b)<strong>
                <input type="text" name="textfield9423" />
              </strong></div></td>
              <td><div align="center"><strong>
                <input type="text" name="textfield9424" />
              </strong></div></td>
            </tr>
            <tr>
              <td height="24"><div align="center">c)<strong>
                <input type="text" name="textfield9425" />
              </strong></div></td>
              <td><div align="center"><strong>
                <input type="text" name="textfield9426" />
              </strong></div></td>
            </tr>
            <tr>
              <td height="24"><div align="center">d)<strong>
                <input type="text" name="textfield9427" />
              </strong></div></td>
              <td><div align="center"><strong>
                <input type="text" name="textfield9428" />
              </strong></div></td>
            </tr>
            <tr>
              <td height="24"><div align="center">e)<strong>
                <input type="text" name="textfield9429" />
              </strong></div></td>
              <td><div align="center"><strong>
                <input type="text" name="textfield9430" />
              </strong></div></td>
            </tr>
        </table>
        <p>&nbsp;</p>
        <table width="631" height="145" border="0">
            <tr>
              <td width="337" valign="bottom"><div align="center"><strong>Name of paper(practicals)</strong></div></td>
              <td width="284" valign="bottom"><div align="center"><strong>Code</strong></div></td>
            </tr>
            <tr>
              <td height="24" valign="bottom"><div align="center">a)<strong>
                <input type="text" name="textfield9431" />
              </strong></div></td>
              <td valign="bottom"><div align="center"><strong>
                <input type="text" name="textfield82" />
              </strong></div></td>
            </tr>
            <tr>
              <td height="24" valign="bottom"><div align="center">b)<strong>
                <input type="text" name="textfield9432" />
              </strong></div></td>
              <td valign="bottom"><div align="center"><strong>
                <input type="text" name="textfield83" />
              </strong></div></td>
            </tr>
            <tr>
              <td height="24" valign="bottom"><div align="center">c)<strong>
                <input type="text" name="textfield9433" />
              </strong></div></td>
              <td valign="bottom"><div align="center"><strong>
                <input type="text" name="textfield84" />
              </strong></div></td>
            </tr>
            <tr>
              <td height="24" valign="bottom"><div align="center">d)<strong>
                <input type="text" name="textfield9434" />
              </strong></div></td>
              <td valign="bottom"><div align="center"><strong>
                <input type="text" name="textfield85" />
              </strong></div></td>
            </tr>
        </table>
        <p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Seminar/Group Discussion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="text" name="textfield86" />
        </strong>(<span class="style4">not for 1st,2nd and 3rd sem</span>)</p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Topic of self study&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="text" name="textfield87" />
        </strong>(<span class="style4">not for 1st,2nd and 3rd sem</span>)</p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Minor project title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="text" name="textfield88" />
          </strong>(<span class="style4">not for 1st,2nd and 3rd sem</span>)</p>
        <p align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Guide Name(s)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="text" name="textfield89" />
          </strong>(<span class="style4">not for 1st,2nd and 3rd sem</span>)</p>
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="checkbox" value="checkbox" />
            <span class="style5">The details filled by me,are correct to the best of my knowledge.I hereby declare that i am responsible to complete all necessary academic requirements of the institute &amp; the university. </span>
        
        <p align="center">&nbsp;</p>
         <div align="center">
              <input type="submit" name="Submit" value="Submit" />
            </div>
       
      <p>&nbsp;</p></td>
    </tr>
 

             
             
             
             
           
             </table>
           
           
           
           
           
           
            
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
    </body>
</html>
