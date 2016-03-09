
<!DOCTYPE HTML>
<!--[if IE 8 ]>    <html lang="en" class="ie8"> <![endif]--> 
<!--[if IE 9 ]>    <html lang="en" class="ie"> <![endif]--> 
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>Truba Institute</title>
	<meta name="description" content="Html - jQuery template by pezflash"/>
	<meta name="keywords" content=""/>
	<meta name="robots" content="index, follow"/>
	
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Lato:300,300italic,400,400italic,700,700italic" />
	<link rel="stylesheet" type="text/css" href="js/tipsy/tipsy.css" type="text/css" />
	<link rel="stylesheet" type="text/css" href="js/prettyPhoto/css/prettyPhoto.css" />
	<link rel="stylesheet" type="text/css" href="js/superfish/superfish.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="js/tweet/jquery.tweet.css" />
	<link rel="stylesheet" type="text/css" href="js/scrollpane/jquery.jscrollpane.css" media="all" />
	<link rel="stylesheet" type="text/css" href="css/styles.css" />
	
	<!-- SCRIPTS -->
	<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/tipsy/jquery.tipsy.js"></script>
	<script type="text/javascript" src="js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="js/superfish/hoverIntent.js"></script>
	<script type="text/javascript" src="js/superfish/superfish.js"></script>
	<script type="text/javascript" src="js/tweet/jquery.tweet.js" ></script>
	<script type="text/javascript" src="js/jquery.mousewheel.min.js"></script>
	<script type="text/javascript" src="js/scrollpane/jquery.jscrollpane.min.js"></script>
	<script type="text/javascript" src="js/mdetect.js"></script>
	<script type="text/javascript" src="js/global.js"></script>

	<!-- CUSTOM SCRIPTS FOR THIS PAGE -->
	<script type="text/javascript">
		$(document).ready(function() {

			//SCROLL TEXT
			$('.scroll-paragraph').jScrollPane();

			//IMG ZOOM ICON
			generateHover($("#company .img .rollover"));

			//TWITTER WIDGET
			jQuery(function($){
				$("#ticker").tweet({
					username: "ILikeArch",
					page: 1,
					avatar_size: 32,
					count: 20,
					loading_text: ""
				}).bind("loaded", function() {
					var ul = $(this).find(".tweet_list");
					var ticker = function() {
						setTimeout(function() {
							ul.find('li:first').animate( {marginTop: '-70px'}, 500, function() {
								$(this).detach().appendTo(ul).removeAttr('style');
							});
							ticker();
						}, 5000);
					};
					ticker();
				});
			});

		});
	</script>

</head>


<body>

	<!-- GLOBAL BORDER -->
	<div id="left"></div>
	<div id="right"></div>
	<div id="top"></div>
	<div id="bottom"></div>



	<!-- FULLSCREEN BACKGROUND -->
	<div id="backg">
		<img src="images/company/background.jpg" class="bg">
	</div>


		
	<!-- HEADER --> 
	<div id="header">
		<a href="index.jsp"><img src="images/logo.png" alt="" title="Back to home" /></a>
	</div>


	
	<!-- ABOUT - COMPANY --> 
	<div id="company">

		<!-- BASE BAND --> 
		<div class="base"></div>

		<!-- TITLE & SUBTITLE --> 
		<span class="title">About Us</span>
		<span class="subtitle">COMPANY</span>

		<!-- QUOTED --> 
		<span class="quoted">We are an <strong>independent studio based on London, UK</strong>. We make awesome buildings, imagining projects and top architecture services around the world.</span>

		<!-- SCROLL PARAGRAPH -->
		<div class="scroll-paragraph">
			<span>Lorem ipsum ad his scripta blandit partiendo, eum fastidii, quo dicit ridens inciderint id. Quo mundi lobortis reformidans eu, <a href="grid_gallery.jsp">link to Portfolio</a> vis mutat affert percipit cu, eirmod consectetuer signiferumque eu per. <br /><br /><img src="images/company/text_img.png" class="text-image" alt="" width="127" height="86" />In usu latine equidem dolores. Quo no falli viris intellegam, ut fugit veritus placerat per. Ius id vidit volumus mandamus, vide veritus democritum te nec, ei eos debet libris consulatu. No mei ferri graeco dicunt, ad cum veri accommodare. Sed at malis omnesque delicata, usu et iusto zzril meliore. Dicunt maiorum eloquentiam cum cu, sit summo dolor essent te. Ne quodsi nusquam legendos has, ea dicit voluptua eloquentiam pro, ad sit quas qualisque. Eos vocibus deserunt quaestio ei. Blandit incorrupte quaerendum in quo, nibh impedit id vis, vel no nullam semper audiam. Ei populo graeci consulatu mei, has ea stet modus phaedrum. Inani oblique ne has, duo et veritus detraxit.<br /><br />Tota ludus oratio ea mel, offendit persequeris ei vim. Eos dicat oratio partem ut, id cum ignota senserit intellegat. Sit inani ubique graecis ad, quando graecis liberavisse et cum, dicit option eruditi at duo. Homero salutatus suscipiantur eum id, tamquam voluptaria expetendis ad sed, nobis feugiat similique usu ex. Eum hinc argumentum te, no sit percipit adversarium, ne qui feugiat persecuti. Odio omnes scripserit ad est, ut vidit lorem maiestatis his, putent mandamus gloriatur ne pro. Oratio iriure rationibus ne his, ad est corrumpit splendide. Ad duo appareat moderatius, ei falli tollit denique eos.</span>
		</div>

		<!-- POPUP IMAGE -->
		<div class="img">
			<a href="images/company/img_big.jpg" data-rel="prettyPhoto" title="Sample image title" class="rollover"><img src="images/company/img.png" alt=""/></a>
		</div>

		<!-- TWITTER WIDGET -->
		<div class="twitter-widget">
			<span class="widget-title">Useful Twitter Widget</span>
			<div id="ticker" class="query"></div>
		</div>
	
	</div>
	


	<!-- MENU -->
	<div id="menu">

			<ul id="sample-menu-3" class="sf-menu sf-vertical">

				<li>
					<a href="#a">About Us</a>
					<ul class="second_level">
						<li><a href="about_company.jsp" class="disabled">Company</a></li>
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
				<li><a href="offices.jsp">Offices</a></li>
				<li><a href="location.jsp">Location</a></li>
				<li><a href="blog.jsp">Blog</a></li>
			</ul>
	</div>
	


	<!-- FOOTER - COPYRIGHT & SOCIAL NETWORKS -->
	<div id="footer">
		<ul>
			<li class="copyright">Copyright © 2012 - <a href="mailto:info@coolagora.com">info@coolagora.com</a></li>
			<li><a href="http://www.facebook.com/pezflash" target="_blank" title="Facebook"><img src="images/icon_facebook.png" alt="facebook"/></a></li>
			<li><a href="http://www.twitter.com/pezflash" target="_blank" title="Twitter"><img src="images//icon_twitter.png" alt="twitter"/></a></li>
			<li><a href="http://themeforest.net/user/pezflash" target="_blank" title="RSS"><img src="images//icon_rss.png" alt="rss"/></a></li>
		</ul>
	</div>


</body>
</html>
