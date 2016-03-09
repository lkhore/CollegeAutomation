
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
	<link rel="stylesheet" type="text/css" href="js/tipsy/tipsy.css" />
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
	<script type="text/javascript" src="js/jquery.touchwipe.js"></script>
	<script type="text/javascript" src="js/carouFredSel/jquery.carouFredSel-5.6.1.js"></script>
	<script type="text/javascript" src="js/mdetect.js"></script>
	<script type="text/javascript" src="js/global.js"></script>

	<!-- CUSTOM SCRIPTS FOR THIS PAGE -->
	<script type="text/javascript">
		$(document).ready(function() {

			//TABS FUNCTIONALITY
			$('#offices .mytabs .tabs').carouFredSel({
				circular: false,
				items: 1,
				auto: false,
				prev: {
					key: "left"
				},
				next: {
					key: "right"
				},
				pagination: {
					container: '#offices .mytabs .pager',
					anchorBuilder: function( nr, item ) {
						return '<a href="#">'+item.find('h3').text().toUpperCase()+'</a>';
					}
				},
				scroll: {
					wipe: true,
					onBefore: function( oldI, newI ) {
						newI.children().css( 'opacity', 0 ).delay( 300 ).fadeTo( 300, 1 );
						oldI.children().fadeTo( 300, 0 );
					}
				}
			});

			//IMG ZOOM ICON
			generateHover($("#offices .mytabs .tabs .rollover"));

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
		<img src="images/offices/background.jpg" class="bg">
	</div>


		
	<!-- HEADER --> 
	<div id="header">
		<a href="index.jsp"><img src="images/logo.png" alt="" title="Back to home" /></a>
	</div>


	
	<!-- OFFICES --> 
	<div id="offices">

		<!-- BASE BAND --> 
		<div class="base"></div>

		<!-- TITLE & SUBTITLE --> 
		<span class="title">Our offices</span>
		<span class="subtitle">Flexible tabs!</span>

		<!-- TABS --> 
		<div class="mytabs">

				<div class="pager"></div>
				<div class="tabs">
					<div>
						<a href="images/offices/office_big.jpg" data-rel="prettyPhoto" title="office sample 01" class="rollover"><img src="images/offices/office_img_1.jpg" alt="" width="238" height="155" class="image" /></a>
						<h3>London [Headquarters]</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Duis aute irure dolor in dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt reprehenderit in voluptate.<br/><br/><a href="location.jsp" class="location-link">LOCATION MAP</a></p>
						
					</div>
					<div>
						<a href="images/offices/office_big.jpg" data-rel="prettyPhoto" title="office sample 01" class="rollover"><img src="images/offices/office_img_2.jpg" alt="" width="238" height="155" class="image" /></a>
						<h3>New York</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Duis aute irure dolor in dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor eiusmod tempor incididunt ut labore et dolore magna aliqua incididunt reprehenderit in voluptate.<br/><br/><a href="location.jsp" class="location-link">LOCATION MAP</a></p>
					</div>
					<div>
						<a href="images/offices/office_big.jpg" data-rel="prettyPhoto" title="office sample 01" class="rollover"><img src="images/offices/office_img_3.jpg" alt="" width="238" height="155" class="image" /></a>
						<h3>Paris</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Duis aute irure dolor in dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt reprehenderit in voluptate.<br/><br/><a href="location.jsp" class="location-link">LOCATION MAP</a></p>
					</div>
					<div>
						<a href="images/offices/office_big.jpg" data-rel="prettyPhoto" title="office sample 01" class="rollover"><img src="images/offices/office_img_4.jpg" alt="" width="238" height="155" class="image" /></a>
						<h3>Amsterdam</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Duis aute irure dolor in dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt reprehenderit in voluptate.<br/><br/><a href="location.jsp" class="location-link">LOCATION MAP</a></p>
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

				<li><a href="news.jsp">News</a></li>
				<li><a href="offices.jsp" class="disabled">Offices</a></li>
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
