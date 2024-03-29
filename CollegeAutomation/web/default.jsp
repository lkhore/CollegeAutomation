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
	<link rel="stylesheet" type="text/css" href="../../../../../fonts.googleapis.com/css@family=Lato_3A300,300italic,400,400italic,700,700italic" />
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
			quoted.delay(1000).animate({ opacity: 1 }, 1500, 'linear');
			thumbs.delay(1400).animate({ opacity: 1 }, 1500, 'linear');
			paragraph.delay(1800).animate({ opacity: 1 }, 1500, 'linear');

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
		<span class="quoted">We make<br/>wonderful<br/>buildings</span><br/>
		<span class="paragraph">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor <a href="grid_gallery.jsp">link to Portfolio</a> et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>

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
				<li><a href="offices.jsp">Offices</a></li>
				<li><a href="location.jsp">Location</a></li>
				<li><a href="blog.jsp">Blog</a></li>
			</ul>
	</div>
	


	<!-- FOOTER - COPYRIGHT & SOCIAL NETWORKS -->
	<div id="footer">
		<ul>
			<li class="copyright">Copyright © 2012 - <a href="mailto:info@coolagora.com">info@coolagora.com</a></li>
			<li><a href="../../../../../www.facebook.com/pezflash" target="_blank" title="Facebook"><img src="images/icon_facebook.png" alt="facebook"/></a></li>
			<li><a href="../../../../../www.twitter.com/pezflash" target="_blank" title="Twitter"><img src="images/icon_twitter.png" alt="twitter"/></a></li>
			<li><a href="../../../../../themeforest.net/user/pezflash" target="_blank" title="RSS"><img src="images/icon_rss.png" alt="rss"/></a></li>
		</ul>
	</div>


</body>
</html>
