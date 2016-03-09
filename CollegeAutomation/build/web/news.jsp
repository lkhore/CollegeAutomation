
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
	<link rel="stylesheet" type="text/css" href="js/prettyPhoto/css/prettyPhoto.css" media="all" />
	<link rel="stylesheet" type="text/css" href="js/superfish/superfish.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="css/styles.css" />
	
	<!-- GLOBAL SCRIPTS -->
	<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/tipsy/jquery.tipsy.js"></script>
	<script type="text/javascript" src="js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="js/superfish/hoverIntent.js"></script>
	<script type="text/javascript" src="js/superfish/superfish.js"></script>
	<script type="text/javascript" src="js/jquery.mousewheel.min.js"></script>
	<script type="text/javascript" src="js/jquery.touchwipe.js"></script>
	<script type="text/javascript" src="js/carouFredSel/jquery.carouFredSel-5.6.1.js"></script>
	<script type="text/javascript" src="js/mdetect.js"></script>
	<script type="text/javascript" src="js/global.js"></script>

	<!-- CUSTOM SCRIPTS FOR THIS PAGE -->
	<script type="text/javascript">
		$(document).ready(function() {

			//TICKER FUNCTIONALITY
			$('#news .ticker .carousel').carouFredSel({
					width: 800,
					height: 250,
					direction: 'top',
					items: 1,
					auto: false,
					prev: {
						button: '#news .ticker .navi .prev',
						key: "left"
					},
					next: {
						button: '#news .ticker .navi .next',
						key: "right"
					},
					scroll: {
						wipe: true,
						duration: 600,
						easing: "easeOutQuart",
						mousewheel: true,
						onBefore: function( oldI, newI ) {
							newI.children().css( 'opacity', 0 ).delay( 200 ).fadeTo( 300, 1 );
							oldI.children().fadeTo( 300, 0 );
						}
					}
			});

			//TOOLTIPS
			$("#news .ticker .carousel .item .links img").tipsy({ gravity: 'n', fade: true, offset: 8 });

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
		<img src="images/news/background.jpg" class="bg">
	</div>


		
	<!-- HEADER --> 
	<div id="header">
		<a href="index.jsp"><img src="images/logo.png" alt="" title="Back to home" /></a>
	</div>


	
	<!-- SHOPS --> 
	<div id="news">

		<!-- BASE BAND 
		<div class="base"></div>--> 

		<!-- TITLE & SUBTITLE --> 
		<span class="title">News</span>
		<span class="subtitle">Stay updated</span>

		<!-- DIVIDER --> 
		<div class="divider"></div>

		<!-- TICKER --> 
		<div class="ticker">

			<div class="navi">
				<img src="images/news/prev_bt.png" alt="" class="prev" />
				<img src="images/news/next_bt.png" alt="" class="next" />
			</div>

			<div class="carousel">
				<div class="item">
					<img src="images/news/img_01.jpg" border="0" />
					<div class="date">September 18th, 2012</div>
					<div class="links"><a href="#"><img src="images/news/permalink.png" title="Permalink" /></a><a href="#"><img src="images/news/external.png" title="Go to site" /></a></div>
					<div class="text">
						<h3>This is a news title. Use Scroll-Wheel!</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et <strong>dolore magna aliqua.</strong> Ut enim ad minim veniam, quis nostrud exercitation enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet incididunt ut labore et dolore magna aliqua.<br/><br/>Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
						<a href="#">&raquo; External link</a>
					</div>
				</div>

				<div class="item">
					<img src="images/news/img_02.jpg" border="0" />
					<div class="date">September 18th, 2012</div>
					<div class="links"><a href="#"><img src="images/news/permalink.png" title="Permalink" /></a><a href="#"><img src="images/news/external.png" title="Go to site" /></a></div>
					<div class="text">
						<h3>This is another news title</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et <strong>dolore magna aliqua.</strong> Ut enim ad minim veniam, quis nostrud exercitation enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						<a href="#">&raquo; External link</a>
					</div>
				</div>

				<div class="item">
					<img src="images/news/img_03.jpg" border="0" />
					<div class="date">September 18th, 2012</div>
					<div class="links"><a href="#"><img src="images/news/permalink.png" title="Permalink" /></a><a href="#"><img src="images/news/external.png" title="Go to site" /></a></div>
					<div class="text">
						<h3>This is a news title</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et <strong>dolore magna aliqua.</strong> Ut enim ad minim veniam, quis nostrud exercitation enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet incididunt ut labore et dolore magna aliqua.<br/><br/>Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
						<a href="#">&raquo; External link</a>
					</div>
				</div>
			</div>

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

				<li><a href="news.jsp" class="disabled">News</a></li>
				<li><a href="offices.jsp">Offices</a></li>
				<li><a href="location.jsp">Location</a></li>
				<li><a href="blog.jsp">Blog</a></li>
			</ul>
	</div>
	


	<!-- FOOTER - COPYRIGHT & SOCIAL NETWORKS -->
	<div id="footer">
		<ul>
			<li class="copyright">Copyright © 2012 - <a href="mailto:info@coolagora.com">info@coolagora.com</a></li>
			<li><a href="http://www.facebook.com/pezflash" title="Facebook"><img src="images/icon_facebook.png" alt="facebook"/></a></li>
			<li><a href="http://www.twitter.com/pezflash" title="Twitter"><img src="images//icon_twitter.png" alt="twitter"/></a></li>
			<li><a href="http://themeforest.net/user/pezflash" title="RSS"><img src="images//icon_rss.png" alt="rss"/></a></li>
		</ul>
	</div>


</body>
</html>
