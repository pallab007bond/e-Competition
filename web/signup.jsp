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
<link href="css/font-awesome.css" rel="stylesheet"> 			<!-- font-awesome icons --> 
<!-- //Custom Theme files -->  
<!-- js -->
<script src="js/jquery-2.2.3.min.js"></script>  
<script src="js/smoothscroll.min.js"></script> 
<script language="javascript">
	function validate()
	{
	var e1 =/^[0-9a-zA-Z]+$/;	
	var sp1 = document.getElementById("sadd");
	if(document.reg.address.value=="")
	{
		sp1.innerHTML="Required!";
		return false;
	}
	else if(e1.test(document.reg.address.value)==false)
	{
	 alert("Address must be alphanumeric");
	 return false;
	}
	else
	{
	 sp1.innerHTML = "&#10004;";	
	}
 //-----------------------------------------------------------------------------------
	var egen2 = document.getElementById("sgen");
	if(document.reg.gender.value=="")
	{
		alert("Required!");
		return false;
	}
	else
	{
	 egen2.innerHTML = "&#10004;";	
	}
 //-----------------------------------------------------------------------------------
	var edob = document.getElementById("sdob");
	if(document.reg.dob.value=="")
	{
		edob.innerHTML="Required!";
		return false;
	}
	else
	{
	 edob.innerHTML = "&#10004;";	
	}
 //-----------------------------------------------------------------------------------
 var e6 = /^[a-zA-Z ]*$/;
	var sp6 = document.getElementById("sname");
	if(document.reg.name.value=="")
	{
		sp6.innerHTML="Required!";
		return false;
	}
	else if(e6.test(document.reg.name.value)==false)
	{
	 alert("Only Character and Space!");
	 return false;
	}
	else
	{
	 sp6.innerHTML = "&#10004;";	
	}
 
 
 // ----------------------------------------------------------------------------------
 
 	var e2 = /^[a-zA-Z ]*$/;	
	var sp2 = document.getElementById("inname");
	if(document.reg.insname.value=="")
	{
		sp2.innerHTML="Required!";
		return false;
	}
	else if(e2.test(document.reg.ins_name.value)==false)
	{
	 alert("Invalid Name!");
	 return false;
	}
	else
	{
	 sp2.innerHTML = "&#10004;";	
	}
  
  //----------------------------------------------------------------------------------------
  
    var e3 = /^([_A-Za-z0-9-]*)+(\.[_A-Za-z0-9-]+)*@([A-Za-z0-9-]+\.)+([A-Za-z]{2,3})$/;	
	var sp3 = document.getElementById("semail");
	if(document.reg.email.value=="")
	{
		sp3.innerHTML="Required!";
		return false;
	}
	else if(e3.test(document.reg.email.value)==false)
	{
         alert("Invalid Email!");
	 return false;
	}
	else
	{
	 sp3.innerHTML = "&#10004;";	
	}

//  --------------------------------------------------------------------------------------

    var e4 = /^([a-zA-Z0-9@ ]*).{4,10}$/;
	var sp4 = document.getElementById("spass");
        var pass1=document.getElementById("cpass");
	if(document.reg.password.value=="")
	{
		sp4.innerHTML="Required!";
		return false;
	}
	else if(e4.test(document.reg.password.value)==false)
	{
	 alert("Only 4 to 10 Characters Long!");
	 return false;
	}
        else if(document.reg.password.value==document.reg.cpassword.value)
	{
	 alert("password doesn't match");
	 return false;
	}
	else
	{
	 sp4.innerHTML = "&#10004;";	
	}
	
//------------------------------------------------------------------------------

    var e5 = /^([0-9]*).{10,10}$/;
	var sp5 = document.getElementById("scont");
	if(document.reg.contact.value=="")
	{
		sp5.innerHTML="Required!";
		return false;
	}
	else if(e5.test(document.reg.contact.value)==false)
	{
	 alert("Invalid Contact - Only 10 digits!");
	 return false;
	}
	else
	{
	 sp5.innerHTML = "&#10004;";	
	 return true;
	}
	
	//----------------------------------------------------------------------------------
	var sp9 = document.getElementById("schk");
	if(document.reg.contact.value==false)
	{
		alert("please check");
		return false;
	}
    else
	{
     return true;		
	}//----------------------------------------------------------------------------------
	
        return false;			
	}
	</script>
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
							<li><a href="signin.jsp">SignIn</a></li>
							<li><a class="active" href="signup.jsp">SignUp</a></li> 
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
					<h2>SignUp Form</h2>
				</div> 	 
			</div>
		</div>
		<!-- //banner-text --> 
	</div>
	<!-- //banner -->
	<!-- signup -->
	<div class="about">
		<div class="container"> 
			<div class="login-form signup-form">
                            <form action="register.jsp" method="post" onsubmit="return validate()">
					<div class="styled-input">
						<input type="text" name="name" required=""/>
						<label>Your name</label>
						<span id="sname"></span>
					</div>
					<div class="styled-input">
						<input type="text" name="email" required=""/>
                                                
						<label>Email</label>
						<span id="semail"></span>
					</div>
                                    <div class="styled-input">
                                                <input type="text" name="insname" required=""/>
                                                <label>Institute/College Name</label>
                                                <span id="inname"></span>
                                    </div>
                                                <div class="styled-input">
						<input type="password" name="password" required=""> 
						<label>Password</label>
						<span id="spass"></span>
					</div> 
                                    <div class="styled-input">
						<input type="password" name="cpassword" required=""> 
						<label>Confirm Password</label>
						<span id="cpass"></span>
					</div>
                                    <div class="styled-input">
                                        &nbsp;&nbsp;&nbsp;Gender
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="male"> Male &nbsp;
                                        <input type="radio" name="gender" value="female"> Female &nbsp;
                                         <input type="radio" name="gender" value="other">other
                                         <span id="sgen"></span>
                                                </div>
                                    <div class="styled-input">
                                        &nbsp;&nbsp;&nbsp;Date Of Birth
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" name="dob" required=""> 
                                        <span id="sdob"></span>
                                    </div>
					<div class="styled-input">
                                            <input type="text" name="contact" required=""> 
						<label>Contact</label>
						<span id="scont"></span>
                                        </div>
                                    <div class="styled-input">
                                Address
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="address" required="" rows="8" cols="50"> </textarea>
                                        <span id="sadd"></span>
					</div>
                      <div class="wthree-text">
                          <ul>
                          <li>
			 <input type="checkbox" id="brand" value="">
			<label for="brand"><span></span>I accept the terms of use</label>  
			 </li>
                          </ul>
					   </div>
                                         <input type="submit" value="Sign Up">		
				</form> 
                             <p>Already Registered ?<a href="signin.jsp" class="sign-in popup-top-anim"> SignIn Here !</a></p>
                           </div> 
		      </div>
	         </div>
              
	<!-- //signup -->   
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
				<a  class="footer-img" href=""><img src="images/i4.jpg" alt=""></a>
				<a class="footer-img" href=""><img src="images/i2.jpg" alt=""></a>
				<a class="footer-img" href=""><img src="images/i3.jpg" alt=""></a>
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