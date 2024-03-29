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
	<link rel="stylesheet" type="text/css" href="js/video/video-js.css" />
	<link rel="stylesheet" type="text/css" href="css/styles.css" />
	
	
	<!-- SCRIPTS -->
	<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/tipsy/jquery.tipsy.js"></script>
	<script type="text/javascript" src="js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="js/superfish/hoverIntent.js"></script>
	<script type="text/javascript" src="js/superfish/superfish.js"></script>
	<script type="text/javascript" src="js/video/video.js"></script>
	<script type="text/javascript" src="js/video/playlist.js"></script>
	<script type="text/javascript" src="js/mdetect.js"></script>
	<script type="text/javascript" src="js/global.js"></script>

</head>


<body>

	<!-- GLOBAL BORDER -->
	<div id="left"></div>
	<div id="right"></div>
	<div id="top"></div>
	<div id="bottom"></div>



	<!-- FULLSCREEN BACKGROUND -->
	<div id="backg">
		<img src="images/reel/background.jpg" class="bg">
	</div>


		
	<!-- HEADER --> 
	<div id="header">
		<a href="index.jsp"><img src="images/logo.png" alt="" title="Back to home" /></a>
	</div>


	
	<!-- VIDEO GALLERY --> 
	<div id="video-gallery">

		<!-- BASE BAND --> 
		<div class="base"></div>

		<!-- VIDEO PLAYER WITH PLAYLIST --> 
		<div class="player">
			<video id="vid1"
		         class="video-js vjs-default-skin"
		         controls
		         preload="auto"
		         width="600"
		         height="338"
		         poster="images/video_gallery/poster1.jpg"
		         data-setup='{
		           "playlist":[
		              {"thumb_url":"images/video_gallery/thumb1.jpg",
		               "poster_url":"",
		               "sources":[
		                 {"src":"images/video_gallery/sample_vid.mp4",
		                  "type":"video/mp4",
		                  "media":"",
		                  "title":""},
		                 {"src":"images/video_gallery/sample_vid.ogv",
		                  "type":"video/mp4",
		                  "media":"",
		                  "title":""
		              	 }
		               ]
		              },
		              {"thumb_url":"images/video_gallery/thumb2.jpg",
		               "poster_url":"",
		               "sources":[
		                 {"src":"images/video_gallery/sample_vid.mp4",
		                  "type":"video/mp4",
		                  "media":"",
		                  "title":""},
		                 {"src":"images/video_gallery/sample_vid.ogv",
		                  "type":"video/mp4",
		                  "media":"",
		                  "title":""
		              	 }
		                ]
		              },
		              {"thumb_url":"images/video_gallery/thumb3.jpg",
		               "poster_url":"",
		               "sources":[
		                 {"src":"images/video_gallery/sample_vid.mp4",
		                  "type":"video/mp4",
		                  "media":"",
		                  "title":""},
		                 {"src":"images/video_gallery/sample_vid.ogv",
		                  "type":"video/mp4",
		                  "media":"",
		                  "title":""
		              	 }
		                ]
		              },
		              {"thumb_url":"images/video_gallery/thumb4.jpg",
		               "poster_url":"",
		               "sources":[
		                 {"src":"images/video_gallery/sample_vid.mp4",
		                  "type":"video/mp4",
		                  "media":"",
		                  "title":""},
		                 {"src":"images/video_gallery/sample_vid.ogv",
		                  "type":"video/mp4",
		                  "media":"",
		                  "title":""
		              	 }
		                ]
		              }
		            ]
		          }'>
		    <source src="images/video_gallery/sample_vid.mp4" type='video/mp4'/>
		  </video>
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
						<li><a href="video_gallery.jsp" class="disabled">Html5 Video Gallery</a></li>
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
