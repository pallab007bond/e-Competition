﻿<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>E-Competition: A way to success</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Drive Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">  
<link href="css/font-awesome.css" rel="stylesheet"> 			<!-- font-awesome icons --> 
<!-- //Custom Theme files -->  
<!-- js -->
<script src="js/jquery-2.2.3.min.js"></script>  
<script src="js/smoothscroll.min.js"></script> 
<!-- //js -->
<!-- web-fonts -->  
<link href="//fonts.googleapis.com/css?family=Dancing+Script:400,700" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- //web-fonts --> 
</head>
<body>
	<!-- banner -->
	<div class="banner w3about">
		<!-- header -->
		<div class="header">
			<div class="container">
				<div class="header-w3lsrow"> 
					<div class="menu"> 
						<div class="toggle"></div> 
						<ul class="w3nav">
							<li><a href="index.jsp"> Home</a></li>
							<li><a href="about.jsp" class="active"> About</a></li> 				
                            <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Exams<span class="caret"></span></a>
								<ul class="dropdown-menu">
                                                                    <li><a href="tcs.jsp">TCS</a></li>
	<li><a href="hcl.jsp">HCL</a></li>
	<li><a href="capgemini.jsp">Capgemini</a></li>
        <li><a href="ibm.jsp">IBM</a></li>
	<li><a href="ibpspo.jsp">IBPS PO</a></li>
	<li><a href="ibpsclerk.jsp">IBPS Clerk</a></li>
	<li><a href="sbipo.jsp">SBI PO</a></li>
        <li><a href="sbiclerk.jsp">SBI Clerk</a></li>
								</ul>
							</li>			
							<li><a href="contact.jsp"> Contact Us</a></li>
						</ul>
						<div class="clearfix"> </div>
					</div> 
					<div class="logo">
						<h1><a href="index.jsp">E-Competition</a></h1>
					</div>  
					<div class="header-right">   
						<ul>
							<% String stname = (String)session.getAttribute("stname");
                                                        if(session.getAttribute("stname")!=null)
                                                    
                                                    {%>	<li><a>Welcome<%out.println("<h2> "+stname+"!</h2>");%></a></li>
							<li><a class="active" href="logout.jsp">Logout</a></li>
                                                        <% }
                                                            else
                                                            {%>
                                                        <li><a href="signin.jsp">SignIn</a></li>
							<li><a href="signup.jsp">SignUp</a></li>
                                                            <%}%>  
						</ul>
						<div class="clearfix"> </div> 
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //header --> 
		<!-- banner-text -->
		<div class="banner-text"> 
			<div class="container"> 
				<div class="banner-w3lstext">
					<h2>About</h2>
				</div> 	 
			</div>
		</div>
		<!-- //banner-text --> 
	</div>
	<!-- //banner -->
	<!-- about -->
	<div class="about">
		<div class="container"> 
			<div class="about-w3ls-row"> 
				<div class="col-md-5 about-left">
					<img src="images/img1.jpg" class="img-responsive" alt=""/>
				</div>
				<div class="col-md-7 about-right"> 
					<div class="about-agile-row">
						<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
							<ul id="myTab" class=" nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">About</a></li>
								<li role="presentation"><a href="#carl" role="tab" id="carl-tab" data-toggle="tab" aria-controls="carl"> History</a></li>
							</ul> 
							<div class="clearfix"> </div>
							<div id="myTabContent" class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
									<div class="tabcontent-grids">
										<p>Our vision is to bring credible and genuine assessment to various aspects of education and employment. Aspiring minds strives to help institutions and Corporate sectors from choosing the 'right' individual rather than the 'best' individual. </p>
										<ul>
											<li><i class="fa fa-check-square-o"></i> Variety Of Questions </li>
											<li><i class="fa fa-check-square-o"></i> Oppertunity </li>
											<li><i class="fa fa-check-square-o"></i> Measure yourself </li>
											<li><i class="fa fa-check-square-o"></i> success </li> 
										</ul>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="carl" aria-labelledby="carl-tab">
									<div class="tabcontent-grids">
										<p>Founded by Pallab, Vikash, Sumit, Nasir, Sudhanshu, the aspiring minds team is 5 people strong, boasting of students of premere institute HIT. Office at HIT, Haldia and full time presence across all over India, Aspiring minds team is committed to serving its clients at the highst possible standards.</p>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div> 
				<div class="clearfix"> </div> 
			</div>
		</div>
	</div>
	<!-- //about -->
	<!-- services -->
	<div class="services agileits-bar"> 
		<div class="container">	 
			<h3 class="w3agileits-title">Our Statistics</h3> 
			<div class="services-w3ls-row"> 
				<div class="bar_group"> 
					<div class='bar_group__bar thin' label='HCL &nbsp; 80%' value='200'></div>
					<div class='bar_group__bar thin' label='TCS &nbsp;&nbsp; 100%' value='250'></div>
					<div class='bar_group__bar thin' label='SBI &nbsp;&nbsp; 72%' value='180'></div>
					<div class='bar_group__bar thin' label='CAPGEMINI &nbsp;&nbsp; 88%' value='220'></div>  
				</div>
				<!-- bar-js -->
				<script src="js/bars.js"></script>
				<!-- //bar-js --> 	
			</div>	 			
		</div>	 			
	</div>			
	<!-- //services -->
	<!-- team -->
	<div class="team agileits">
		<div class="team-info">
			<div class="container">
				<h3 class="w3agileits-title">Our Team</h3> 
				<div class="team-row">
					<div class="col-md-3 col-sm-6 col-xs-6 team-grids">
						<div class="team-agile-img"> 
							<a href="#"><img src="images/t1.jpg" alt="img"></a>
							<div class="view-caption">
								<div class="w3ls-info">
									<h4>Pallab Banerjee</h4> 
									<p>Developer</p>
								</div>
								<ul>
									<li><a href="#"><span class="fa fa-facebook"></span></a></li>
									<li><a href="#"><span class="fa fa-twitter"></span></a></li>
									<li><a href="#"><span class="fa fa-google-plus"></span></a></li>
								</ul>
							</div>    
						</div>
					</div>					
					<div class="col-md-3 col-sm-6 col-xs-6 team-grids">
						<div class="team-agile-img"> 
							<a href="#"><img src="images/t2.jpg" alt="img"></a>
							<div class="view-caption">
								<div class="w3ls-info">
									<h4>Vikash Kumar labh </h4> 
									<p>Developer</p>
								</div>
								<ul>
									<li><a href="#"><span class="fa fa-facebook"></span></a></li>
									<li><a href="#"><span class="fa fa-twitter"></span></a></li>
									<li><a href="#"><span class="fa fa-google-plus"></span></a></li>
								</ul>
							</div>    
						</div>
					</div>
                    <div class="col-md-3 col-sm-6 col-xs-6 team-grids">
						<div class="team-agile-img"> 
							<a href="#"><img src="images/t2.jpg" alt="img"></a>
							<div class="view-caption">
								<div class="w3ls-info">
									<h4>Sumit Kumar </h4> 
									<p>Developer</p>
								</div>
								<ul>
									<li><a href="#"><span class="fa fa-facebook"></span></a></li>
									<li><a href="#"><span class="fa fa-twitter"></span></a></li>
									<li><a href="#"><span class="fa fa-google-plus"></span></a></li>
								</ul>
							</div>    
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 team-grids">
						<div class="team-agile-img"> 
							<a href="#"><img src="images/t3.jpg" alt="img"></a>
							<div class="view-caption">
								<div class="w3ls-info">
									<h4>Nasir Shamim</h4> 
									<p>Developer</p>
								</div>
								<ul>
									<li><a href="#"><span class="fa fa-facebook"></span></a></li>
									<li><a href="#"><span class="fa fa-twitter"></span></a></li>
									<li><a href="#"><span class="fa fa-google-plus"></span></a></li>
								</ul>
							</div>    
						</div>
					</div><br>
					<div class="col-md-3 col-sm-6 col-xs-6 team-grids">
						<div class="team-agile-img"> 
							<a href="#"><img src="images/t4.jpg" alt="img"></a>
							<div class="view-caption">
								<div class="w3ls-info">
									<h4>Sudhanshu Shekhar</h4> 
									<p>Developer</p>
								</div>
								<ul>
									<li><a href="#"><span class="fa fa-facebook"></span></a></li>
									<li><a href="#"><span class="fa fa-twitter"></span></a></li>
									<li><a href="#"><span class="fa fa-google-plus"></span></a></li>
								</ul>
							</div>    
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	<!-- //team -->   
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="col-md-4 footer-grids">
				<h3>Review</h3>
				<p>Registration is required for appearing in any of the exams provided on our website. Once you passed then you are eligible to get admitted in many reputed colleges or have successful career in many firms of India like NIT's, IIM's, AIPMT, Banks</p>
			</div>
			<div class="col-md-3 footer-grids">
				<h3>Contact Us</h3>
				<p>Haldia Institute Of Technology,<br>Purba Medinipur, WB<br>
					<span>Office: 987654321</span>
				</p>
				<div class="footer-bottom">
					<a href="#"><i class="fa fa-facebook"> </i><span>Facebook</span></a>
					<a href="#"><i class="fa fa-twitter"> </i><span>Twitter</span></a>
					<a href="#"><i class="fa fa-google-plus"> </i><span>Google +</span></a>
					<a href="#"><i class="fa fa-dribbble"> </i><span>Dribbble</span></a>
				</div>
			</div>
			<div class="col-md-5 footer-grids">
				<h3>Flickr</h3>
				<a  class="footer-img" href=""><img src="images/img4.jpg" alt=""></a>
				<a class="footer-img" href=""><img src="images/img2.jpg" alt=""></a>
				<a class="footer-img" href=""><img src="images/img3.jpg" alt=""></a>
			</div>
			<div class="clearfix"> </div>
			<div class="footer-copy">
				<p>© 2017 Drive. All rights reserved | Design by <a href="http://w3layouts.com">CodeIt</a></p>
			</div>
		</div>
	</div>
	<!-- //footer --> 
	<!-- menu js -->
	<script>
		$('.toggle').on('click', function() {
			$('.menu').toggleClass('open');  
			$('.w3nav').toggleClass('show-w3nav');  
			$('.w3nav a').toggleClass('show-w3nav-link');  
			$('.toggle').toggleClass('close');  
		});
	</script>
	<!-- //menu js -->
	<!-- start-smooth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>	
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<!-- //end-smooth-scrolling -->	
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<!-- //smooth-scrolling-of-move-up --> 
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>
</html>