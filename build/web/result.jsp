<%-- 
    Document   : examnext
    Created on : Dec 3, 2015, 2:43:25 PM
    Author     : Nazir
--%>

<%@page import="compack.ConnectionProvider,java.io.*,java.util.*,java.sql.*,org.apache.commons.fileupload.*,org.apache.commons.fileupload.disk.*,org.apache.commons.fileupload.servlet.*" %>
<jsp:useBean id="mybean" class="compack.EjavaBeans"/>
<jsp:setProperty name="mybean" property="*"/><!DOCTYPE html>

<!DOCTYPE HTML>
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
							
							<li><a class="active">Welcome</a></li>
							<li><a href="#"><%
       String stname = (String)session.getAttribute("stname");
        
        out.print("<h2> "+stname+"!</h2>");
     
    %> </a></li> 
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
					<h2>Result</h2>
				</div> 	 
			</div>
		</div>
		<!-- //banner-text --> 
	</div>
        <%!
        String n, elig;
        int wrong,correct, unattempted,attempted,total, st_id;
        %> 
<!-- Banner -->
    <div style="color: blue;padding-left: 2em; padding-right: 2em;">
    
    <%!
    String exam;
    String stid;
    String answer, stname, instname, email;
    double res, marks;
    %>
    <%
     try
    {
//n = session.getAttribute("stname").toString();
email = session.getAttribute("smail").toString();
//st_id = Integer.parseInt(sid);
wrong = Integer.parseInt(session.getAttribute("wrong").toString());
correct = Integer.parseInt(session.getAttribute("correct").toString());
unattempted = Integer.parseInt(session.getAttribute("unattempted").toString());
attempted = Integer.parseInt(session.getAttribute("attempted").toString());
total = Integer.parseInt(session.getAttribute("total").toString());
//String elig = session.getAttribute("elig").toString();

    }catch(Exception e)
    {
        e.printStackTrace();
    }
   %>
   <%
      mybean.result1(request);
     ResultSet rset=mybean.result3();
     if(rset.next())
     {
      stname = rset.getString(1);
      instname = rset.getString(9);
      email = rset.getString(7);
     }
     elig=(String)session.getAttribute("elig"); 
     String qid = session.getAttribute("sexam").toString();
     answer = request.getParameter("options");
    int r= mybean.result2(request);
     if(r!=0)
     {
         marks = (correct - (wrong*1/4));
         session.setAttribute("marks",String.valueOf(marks));
     %>
   <div style="padding-left: 100px;">        
     <h3>     
 <strong>Your Progress Report!</strong><%=elig%> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<img src="displayimg.jsp?email=<%=email%>"  width="150" height="120"></h3></div><br>
 <p>
<form name="reg" action="showQuiz.jsp">
    <%session.setAttribute("quid",qid);%>  
<center><table style="width:900px;font-size:20px;">

<tr><td style="vertical-align:middle;"><strong>Email ID</strong></td>
<td style="padding-bottom:1em;"><input type="email" name="email" value="<%=email%>" readonly>
<span id="semail"></span></td></tr>

<tr><td style="vertical-align:middle;"><strong>Institute/College Name</strong></td>
<td style="padding-bottom:1em;"><input type="text" name="ins_name" value="<%=instname%>" readonly><span id="inname"></span></td></tr>

<tr><td style="vertical-align:middle;"><strong>Total Questions</strong></td>
<td style="padding-bottom:1em;"><input type="text" name="totalques" value="<%=String.valueOf(total)%>" readonly><span id="spass"></span></td></tr>

<tr><td style="vertical-align:middle;"><strong>Attempted Questions</strong></td>
<td style="padding-bottom:1em;"><input type="text" name="attempques" value="<%=String.valueOf(attempted)%>" readonly><span id="scont"></span></td></tr>

<tr><td style="vertical-align:middle;"><strong>Unattempted Questions</strong></td>
<td style="padding-bottom:1em;"><input type="text" name="unattempques" value="<%=String.valueOf(unattempted)%>" readonly><span id="scont"></span></td></tr>

<tr><td style="vertical-align:middle;"><strong>Wrong Questions</strong></td>
<td style="padding-bottom:1em;"><input type="text" name="wrong" value="<%=String.valueOf(wrong)%>" readonly><span id="scont"></span></td></tr>

<tr><td style="vertical-align:middle;"><strong>Correct Questions</strong></td>
<td style="padding-bottom:1em;"><input type="text" name="correct" value="<%=String.valueOf(correct)%>" readonly><span id="scont"></span></td></tr>

<tr><td style="vertical-align:middle;"><strong>Marks Obtained</strong></td>
<td style="padding-bottom:1em;"><input type="text" name="marks" value="<%=String.valueOf(correct)%>" readonly><span id="scont"></span></td></tr>

<tr><td></td>
    <td align="right" style="padding-bottom:1em;"><input type="submit" value="Display Answers"> &nbsp; <a href="logout.jsp"><input type="button" value="Logout"></a> &nbsp; <a href="contact.jsp"><input type="button" value="Feedback"></a></td></tr>
</table></center>
    <%}%>
</form>
    </div>
<!-- Footer -->
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
				<p>� 2017 E-Competition. All rights reserved | Design by <a href="http://w3layouts.com">CodeIt</a></p>
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

