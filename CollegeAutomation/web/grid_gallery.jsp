﻿
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
	<link rel="stylesheet" type="text/css" href="js/scrollpane/jquery.jscrollpane.css" media="all" />
	<link rel="stylesheet" type="text/css" href="css/styles.css" />
	
	<!-- SCRIPTS -->
	<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/tipsy/jquery.tipsy.js"></script>
	<script type="text/javascript" src="js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="js/superfish/hoverIntent.js"></script>
	<script type="text/javascript" src="js/superfish/superfish.js"></script>
	<script type="text/javascript" src="js/montage/jquery.montage.min.js"></script>
	<script type="text/javascript" src="js/mdetect.js"></script>
	<script type="text/javascript" src="js/global.js"></script>

	<!-- CUSTOM SCRIPTS FOR THIS PAGE -->
	<script type="text/javascript">
		$(document).ready(function() {
				
			//GRID THUMBS 
			var $container 	= $('#grid-gallery .gallery .container');
				$imgs		= $container.find('img').hide(),
				totalImgs	= $imgs.length,
				cnt			= 0;
				
			$imgs.each(function(i) {
				var $img	= $(this);
				$('<img/>').load(function() {
					++cnt;
					if( cnt === totalImgs ) {
						$imgs.show();
						$container.montage({
							liquid: false,
							fillLastRow: true
						});	
					}
				}).attr('src',$img.attr('src'));
			});

			//NAVIGATION
			var amount = 152;
			var i = 0;
			var numClicks = 4;

			$('#grid-gallery .navi .up').click(function() {
				if (i < 0) {
					i++;
					$('#grid-gallery .gallery .wrapper').animate({ top: amount*i }, 600, 'easeOutQuart');
				}
			});

			$('#grid-gallery .navi .down').click(function() {
				if (i >= -numClicks) {
					i--;
					$('#grid-gallery .gallery .wrapper').animate({ top: amount*i }, 600, 'easeOutQuart');
				}
			});

			//FADE IN DELAY ANIMATION
			$('#grid-gallery .preload').delay(2500).animate({ opacity:0 }, 500, 'easeOutQuad');
			$('#grid-gallery .gallery').delay(3000).animate({ opacity:1 }, 1000, 'easeOutQuad');
			$('#grid-gallery .navi').delay(3000).animate({ left:45 }, 500, 'easeOutQuad');

			//IMG ZOOM ICON
			generateHover($("#grid-gallery .gallery .container .rollover"));

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
		<img src="images/grid_gallery/background.jpg" class="bg">
	</div>


		
	<!-- HEADER --> 
	<div id="header">
		<a href="index.jsp"><img src="images/logo.png" alt="" title="Back to home" /></a>
	</div>

	
	<!-- GRID GALLERY --> 
	<div id="grid-gallery">

		<!-- BASE BAND --> 
		<!--<div class="base"></div>-->

		<!-- TITLE & SUBTITLE  -->
		<span class="title">PORTFOLIO&nbsp;&nbsp;|&nbsp;&nbsp;<span class="subtitle">GRID GALLERY</span></span>

		<!-- PRELOAD -->
		<div class="preload">
			<img src="images/preload2.gif" alt="" />
		</div>

		<!-- NAVIGATION -->
		<div class="navi">
			<img src="images/grid_gallery/up_bt.png" alt="" class="up" />
			<img src="images/grid_gallery/down_bt.png" alt="" class="down" />
		</div>

		<!-- GALLERY STUFF --> 
		<div class="gallery">

				<div class="container">
					<a href="images/grid_gallery/1.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/1.jpg" alt="" /></a>
					<a href="images/grid_gallery/2.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/2.jpg" alt="" /></a>
					<a href="images/grid_gallery/3.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/3.jpg" alt="" /></a>
					<a href="images/grid_gallery/4.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/4.jpg" alt="" /></a>
					<a href="images/grid_gallery/5.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/5.jpg" alt="" /></a>
					<a href="images/grid_gallery/6.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/6.jpg" alt="" /></a>
					<a href="images/grid_gallery/7.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/7.jpg" alt="" /></a>
					<a href="images/grid_gallery/8.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/8.jpg" alt="" /></a>
					<a href="images/grid_gallery/9.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/9.jpg" alt="" /></a>
					<a href="images/grid_gallery/10.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/10.jpg" alt="" /></a>
					<a href="images/grid_gallery/11.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/11.jpg" alt="" /></a>
					<a href="images/grid_gallery/12.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/12.jpg" alt="" /></a>
					<a href="images/grid_gallery/13.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/13.jpg" alt="" /></a>
					<a href="images/grid_gallery/14.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/14.jpg" alt="" /></a>
					<a href="images/grid_gallery/15.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/15.jpg" alt="" /></a>
					<a href="images/grid_gallery/16.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/16.jpg" alt="" /></a>
					<a href="images/grid_gallery/17.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/17.jpg" alt="" /></a>
					<a href="images/grid_gallery/18.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/18.jpg" alt="" /></a>
					<a href="images/grid_gallery/19.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/19.jpg" alt="" /></a>
					<a href="images/grid_gallery/20.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/20.jpg" alt="" /></a>
					<a href="images/grid_gallery/21.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/21.jpg" alt="" /></a>
					<a href="images/grid_gallery/22.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/22.jpg" alt="" /></a>
					<a href="images/grid_gallery/23.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/23.jpg" alt="" /></a>
					<a href="images/grid_gallery/24.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/24.jpg" alt="" /></a>
					<a href="images/grid_gallery/25.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/25.jpg" alt="" /></a>
					<a href="images/grid_gallery/26.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/26.jpg" alt="" /></a>
					<a href="images/grid_gallery/27.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/27.jpg" alt="" /></a>
					<a href="images/grid_gallery/28.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/28.jpg" alt="" /></a>
					<a href="images/grid_gallery/29.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/29.jpg" alt="" /></a>
					<a href="images/grid_gallery/30.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/30.jpg" alt="" /></a>
					<a href="images/grid_gallery/31.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/31.jpg" alt="" /></a>
					<a href="images/grid_gallery/32.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/32.jpg" alt="" /></a>
					<a href="images/grid_gallery/33.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/33.jpg" alt="" /></a>
					<a href="images/grid_gallery/34.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/34.jpg" alt="" /></a>
					<a href="images/grid_gallery/35.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/35.jpg" alt="" /></a>
					<a href="images/grid_gallery/36.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/36.jpg" alt="" /></a>
					<a href="images/grid_gallery/37.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/37.jpg" alt="" /></a>
					<a href="images/grid_gallery/38.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/38.jpg" alt="" /></a>
					<a href="images/grid_gallery/39.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/39.jpg" alt="" /></a>
					<a href="images/grid_gallery/40.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/40.jpg" alt="" /></a>
					<a href="images/grid_gallery/1.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/1.jpg" alt="" /></a>
					<a href="images/grid_gallery/2.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/2.jpg" alt="" /></a>
					<a href="images/grid_gallery/3.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/3.jpg" alt="" /></a>
					<a href="images/grid_gallery/4.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/4.jpg" alt="" /></a>
					<a href="images/grid_gallery/5.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/5.jpg" alt="" /></a>
					<a href="images/grid_gallery/6.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/6.jpg" alt="" /></a>
					<a href="images/grid_gallery/7.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/7.jpg" alt="" /></a>
					<a href="images/grid_gallery/8.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/8.jpg" alt="" /></a>
					<a href="images/grid_gallery/9.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/9.jpg" alt="" /></a>
					<a href="images/grid_gallery/10.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/10.jpg" alt="" /></a>
					<a href="images/grid_gallery/11.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/11.jpg" alt="" /></a>
					<a href="images/grid_gallery/12.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/12.jpg" alt="" /></a>
					<a href="images/grid_gallery/13.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/13.jpg" alt="" /></a>
					<a href="images/grid_gallery/14.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/14.jpg" alt="" /></a>
					<a href="images/grid_gallery/15.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/15.jpg" alt="" /></a>
					<a href="images/grid_gallery/16.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/16.jpg" alt="" /></a>
					<a href="images/grid_gallery/17.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/17.jpg" alt="" /></a>
					<a href="images/grid_gallery/18.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/18.jpg" alt="" /></a>
					<a href="images/grid_gallery/19.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/19.jpg" alt="" /></a>
					<a href="images/grid_gallery/20.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/20.jpg" alt="" /></a>
					<a href="images/grid_gallery/21.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/21.jpg" alt="" /></a>
					<a href="images/grid_gallery/22.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/22.jpg" alt="" /></a>
					<a href="images/grid_gallery/23.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/23.jpg" alt="" /></a>
					<a href="images/grid_gallery/24.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/24.jpg" alt="" /></a>
					<a href="images/grid_gallery/25.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/25.jpg" alt="" /></a>
					<a href="images/grid_gallery/26.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/26.jpg" alt="" /></a>
					<a href="images/grid_gallery/27.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/27.jpg" alt="" /></a>
					<a href="images/grid_gallery/28.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/28.jpg" alt="" /></a>
					<a href="images/grid_gallery/29.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/29.jpg" alt="" /></a>
					<a href="images/grid_gallery/30.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/30.jpg" alt="" /></a>
					<a href="images/grid_gallery/31.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/31.jpg" alt="" /></a>
					<a href="images/grid_gallery/32.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/32.jpg" alt="" /></a>
					<a href="images/grid_gallery/5.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/6.jpg" alt="" /></a>
					<a href="images/grid_gallery/6.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/7.jpg" alt="" /></a>
					<a href="images/grid_gallery/7.jpg" data-rel="prettyPhoto[gallery]" title="Image sample title" class="rollover"><img src="images/grid_gallery/8.jpg" alt="" /></a>
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
						<li><a href="grid_gallery.jsp" class="disabled">Grid Gallery</a></li>
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
			<li><a href="http://www.twitter.com/pezflash" target="_blank" title="Twitter"><img src="images/icon_twitter.png" alt="twitter"/></a></li>
			<li><a href="http://themeforest.net/user/pezflash" target="_blank" title="RSS"><img src="images/icon_rss.png" alt="rss"/></a></li>
		</ul>
	</div>


</body>
</html>
