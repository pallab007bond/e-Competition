<%@page import="compack.ConnectionProvider,java.io.*,java.util.*,java.sql.*,org.apache.commons.fileupload.*,org.apache.commons.fileupload.disk.*,org.apache.commons.fileupload.servlet.*" %>
<jsp:useBean id="mybean" class="compack.EjavaBeans"/>
<jsp:setProperty name="mybean" property="*"/><!DOCTYPE html>

<head>
    <style>
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
}

.button1:hover {
    background-color: #4CAF50;
    color: white;
}

.button2 {
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
}

.button2:hover {
    background-color: #008CBA;
    color: white;
}

.button3 {
    background-color: white; 
    color: black; 
    border: 2px solid #f44336;
}

.button3:hover {
    background-color: #f44336;
    color: white;
}

.button4 {
    background-color: white;
    color: black;
    border: 2px solid #e7e7e7;
}

.button4:hover {background-color: #e7e7e7;}

.button5 {
    background-color: white;
    color: black;
    border: 2px solid #555555;
}

.button5:hover {
    background-color: #555555;
    color: white;
}
</style>
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
<!--<script src="js/jquery-2.2.3.min.js"></script> --> 
<script src="js/smoothscroll.min.js"></script> 
<!-- //js -->
<!-- web-fonts -->  
<link href="//fonts.googleapis.com/css?family=Dancing+Script:400,700" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- //web-fonts --> 
</head>

	<!-- banner -->
	<div class="banner w3about">
		<!-- header -->
		<div class="header">
			<div class="container">
				<div class="header-w3lsrow"> 
					<div class="menu"> 
						<div class="toggle"></div> 
						<ul class="w3nav">
							<li><a href="index.html"> Home</a></li>
							<li><a href="about.html"> About</a></li> 
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
							
							<li><a href="contact.html"> Contact Us</a></li>
						</ul>
						<div class="clearfix"> </div>
					</div> 
					<div class="logo">
						<h1><a href="index.html">E-Competition</a></h1>
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
        </div>
               <!-- //header --> 
		<!-- banner-text -->
		<div class="banner-text"> 
			<div class="container"> 
				<div class="banner-w3lstext">
					<h2>Exam</h2>
				</div> 	 
			</div>
		</div>
		<!-- //banner-text -->
   <form name="reg" action="examnext.jsp">
    <%!
    String exam,exam1, c;
    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rset = null;
    int counter=1, incorrect=0, correct=0, total=0;
    double res;
    %>
    <%
     exam1 = (String)session.getAttribute("exam1");   
      System.out.println("Exam1 : "+exam1);
     if(c!=null)
     {
         c = request.getParameter("counter");
         System.out.println(c);
     }
     else
     {
         c = "1";
         System.out.println(c);
     }
    exam = (String)session.getAttribute("sexam");
     System.out.println("exam:"+exam);
     String n = (String)session.getAttribute("stname");
     String email = session.getAttribute("smail").toString();
     System.out.println("Email"+email);
     System.out.println("name"+n);
     session.setAttribute("stname",n);
     session.setAttribute("smail",email);
     session.setAttribute("sexam",exam);
     System.out.println(exam);//f(exam.equals("IBPS BANK PO"))
    if(exam.equals(exam1))
     {
        System.out.println(exam);
         System.out.println(exam1);
         
    %>
<!-- Banner -->
    <div style="color: red;padding-left: 2em; padding-right: 2em;">
    <center><table style="width:900px;font-size:20px;">
<tr>
<%
  try
  {
  con = ConnectionProvider.getConnection();
  int t = 1;
  if(t==1)
  {
      System.out.println("t="+t);
  PreparedStatement pstmt1 = con.prepareStatement("select count(*) from question where quid=?");
  pstmt1.setString(1,exam1);
  ResultSet rset1 = pstmt1.executeQuery();
   while(rset1.next())
  {
      total = rset1.getInt(1);
      System.out.println(total);
      
  }
  }
  else
  {
   response.sendRedirect("index.jsp");   
  }
  counter = Integer.parseInt(c);
  pstmt = con.prepareStatement("select * from question where quid=? and qno=? limit 1");
  pstmt.setString(1,exam);
  pstmt.setInt(2,counter);
  ResultSet rset = pstmt.executeQuery();
  while(rset.next())
  {
 %>     
      
<td align="left" style="padding-bottom:1em;">
    <b><%=String.valueOf(counter)%>.</b> <%=rset.getString(3)%><br>
        <pre>
        <input type="radio" name="options" value="<%=rset.getString(4)%>"> <%=rset.getString(4)%><br>    
        <input type="radio" name="options" value="<%=rset.getString(5)%>"> <%=rset.getString(5)%><br>
        <input type="radio" name="options" value="<%=rset.getString(6)%>"> <%=rset.getString(6)%><br>
        <input type="radio" name="options" value="<%=rset.getString(7)%>"> <%=rset.getString(7)%><br>
        </pre>
</td></tr>
<%
 }
  session.setAttribute("total",String.valueOf(total));
  session.setAttribute("counter",String.valueOf(counter));
  }catch(Exception e)
  {
      e.printStackTrace();
  }
}
%>       
<tr>
<td align="center" style="padding-bottom:1em;">
<input type="submit" class="button3" value="Next"></td></tr>
</table></center>                     
</div>
</form>
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
				<a  class="footer-img" href=""><img src="images/img4.jpg" alt=""></a>
				<a class="footer-img" href=""><img src="images/img2.jpg" alt=""></a>
				<a class="footer-img" href=""><img src="images/img3.jpg" alt=""></a>
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

