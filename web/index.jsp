<!--
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
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" property="" /> 
<link href="css/font-awesome.css" rel="stylesheet"> 			<!-- font-awesome icons -->
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
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
	<div class="banner">
		<!-- header -->
		<div class="header">
			<div class="container">
				<div class="header-w3lsrow"> 
					<div class="menu"> 
						<div class="toggle"> </div> 
						<ul class="w3nav">
							<li><a href="index.jsp" class="active"> Home</a></li>
							<li><a href="about.jsp"> About</a></li> 
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
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="banner-w3lstext">
								<h2>Welcome</h2>
								<p>By performing well here, a good candidate can stand out amongst their peers.</p>
							</div>
						</li>
						<li>
							<div class="banner-w3lstext">
								<h3>Get Admitted</h3>
								<p>By having a standardized exam, scores can be quickly compared across multiple candidates allowing colleges to quickly generate a shortlist of good candidates.</p>
							</div>
						</li>
						<li>
							<div class="banner-w3lstext">
								<h3>Fair Selection</h3>
								<p>E-Competition is inherently fair since every test taker is evaluated on the same parameter. Hence selection happens strictly on merit. </p>
							</div>
						</li>
					</ul> 
				</div> 	
				<!-- FlexSlider --> 
				<script defer src="js/jquery.flexslider.js"></script>
				<script type="text/javascript">
					$(window).load(function(){
					  $('.flexslider').flexslider({
						animation: "slide",
						start: function(slider){
						  $('body').removeClass('loading');
						}
					  });
					});
				</script>
				<!-- End-slider-script -->
			</div>
		</div>
		<!-- //banner-text --> 
	</div>
	<!-- //banner -->
	<!-- welcome -->
	<div class="welcome"> 
		<div class="container">
			<div class="col-md-7 welcome-w3lleft">
				<h3>Welcome !</h3>
				<h5>Flow of knowledge brings us to the stage where performance is upmost required </h5>
				<p>The process of seeking a correct job is as vital as landing on the job itself. Whether you are a recent graduate looking for Fresher Jobs or someone who has already played a few rounds in this game, keep reading. Job Search is a crucial milestone for your career path. Hence tread carefully! By using E-Competition one can use to give their best for a job where an individual is interested. 
				</p>  
				<a href="#" class="w3layouts-more" data-toggle="modal" data-target="#myModal">Read More</a>
			</div>  
			<div class="col-md-5 welcome-w3lright">
				<div class="welcome-grids">
					<div class="service-box">
						<div class="agileits-wicon">
							<i class="fa fa-motorcycle" aria-hidden="true"></i>
						</div>
						<h5>Knowledge</h5> 
					</div> 
					<div class="clearfix"> </div>
				</div>
				<div class="welcome-grids">
					<div class="col-md-6 col-sm-6 col-xs-6 service-box">
						<div class="agileits-wicon">
							<i class="fa fa-truck" aria-hidden="true"></i>
						</div>
						<h5>Job</h5> 
					</div>
					<div class="col-md-6 col-sm-6 col-xs-6 service-box">
						<div class="agileits-wicon">
							<i class="fa fa-car" aria-hidden="true"></i>
						</div>
						<h5>Future</h5> 
					</div>
					<div class="clearfix"> </div>
				</div>
			</div> 
			<div class="clearfix"> </div>
		</div> 
	</div>
	<!-- //welcome -->
	<!-- modal-about -->
	<div class="modal bnr-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div> 
				<div class="modal-body modal-spa">
					<h4>E-Competition</h4>
					<p>Hiring employable candidates efficiently is a challenge for every company. Companies want to reduce hiring time, cost and effort. More importantly, they want to reduce bad hires, standardize the quality of their workforce and also, identify those who will be highly successful for a given role. There is a strong need of automated assessment which is accurate, scalable and predictive of candidate success in a wide variety of roles.E-Competition is a multi-dimensional adaptive instrument that measures the knowledge, skills and personality required for multiple job roles.It not only provides an accurate measurement of a candidate’s ability, but also builds on multiple years of data to identify that E-Competition scores accurately predict performance in different jobs. </p>
				</div> 
			</div>
		</div>
	</div>
	<!-- //modal-about -->  
	<!-- trips -->
	<div class="trips"> 
		<div class="container">
			<div class="trips-agileinfo"> 
				<div class="col-md-6 trip-agileitsimg">  
					
				</div> 
				<div class="col-md-6 trip-agileitstext welcome-w3lleft"> 
					<h3>Our Exams</h3>
					<h5>Register yourself and get selected</h5>
					<p>E-Competition helps match candidate with suitable colleges based on their performance in the test.</p> 
					<div id="owl-demo" class="owl-carousel owl-theme">
						<div class="item agile-item">
							<img src="images/i1.jpg" class="trip-w3img" alt=""/>  
						</div> 
						<div class="item agile-item">
							<img src="images/i2.jpg" class="trip-w3img" alt=""/>  
						</div> 
						<div class="item agile-item">
							<img src="images/i3.jpg" class="trip-w3img" alt=""/>  
						</div>
						<div class="item agile-item">
							<img src="images/i4.jpg" class="trip-w3img" alt=""/>  
						</div>
						<div class="item agile-item">
							<img src="images/i1.jpg" class="trip-w3img" alt=""/>  
						</div>
						<div class="item agile-item">
							<img src="images/i2.jpg" class="trip-w3img" alt=""/>  
						</div> 
						<div class="item agile-item">
							<img src="images/i3.jpg" class="trip-w3img" alt=""/>  
						</div>
						<div class="item agile-item">
							<img src="images/i4.jpg" class="trip-w3img" alt=""/>  
						</div> 
						<div class="item agile-item">
							<img src="images/i1.jpg" class="trip-w3img" alt=""/>  
						</div> 
						<div class="item agile-item">
							<img src="images/i3.jpg" class="trip-w3img" alt=""/>  
						</div>
					</div> 
					<script>
						$(document).ready(function() { 
							$("#owl-demo").owlCarousel({ 
							  autoPlay: 3000, //Set AutoPlay to 3 seconds
						 
							  items : 3,
							  itemsDesktop : [768,3],
							  itemsDesktopSmall : [414,4]
						 
							});
						 
						}); 
					</script>  	
				</div> 
				<div class="clearfix"> </div>
			</div>  
		</div> 
	</div>
	<!-- //trips -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="col-md-4 footer-grids">
				<h3>Review</h3>
				<p>Registration is required for appearing in any of the exams provided on our website. Once you passed then you are eligible to get admitted in many reputed companies and banks. Placement papers for various companies are provided for exam.</p>
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
                                <a  class="footer-img" href=""><img src="images/img3.jpg" alt=""></a>
                                <a class="footer-img" href=""><img src="images/img4.jpg" alt=""></a>
                                <a class="footer-img" href=""><img src="images/img2.jpg" alt=""></a>
			</div>
			<div class="clearfix"> </div>
			<div class="footer-copy">
				<p>© 2017 E-Competition. All rights reserved | Design by <a href="http://w3layouts.com">CodeIt</a></p>
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
	<script src="js/owl.carousel.js"></script>
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