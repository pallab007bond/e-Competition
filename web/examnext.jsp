<%@page import="compack.ConnectionProvider,java.sql.*,java.util.*" %>

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
<!--<script src="js/jquery-2.2.3.min.js"></script> --> 
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
                                                    <% String stname = (String)session.getAttribute("stname");
                                                        if(session.getAttribute(stname)!=null)
                                                    
                                                    {%>	<li><a>Welcome<%out.print("<h2> "+stname+"!</h2>");%></a></li>
							<li><a class="active" href="logout.jsp">Logout</a></li>
                                                        <% }
                                                            else
                                                            {%>
                                                        <li><a class="active" href="signin.jsp">SignIn</a></li>
							<li><a href="signup.jsp">SignUp</a></li>
                                                            <%}%>
                                                            
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
        <%!
        String n;
        %>
<%
 n = session.getAttribute("stname").toString();
 String smail = session.getAttribute("smail").toString();
 session.setAttribute("stname",n);
 session.setAttribute("smail",smail);
%>    
<%!
    String exam,ans;
    Connection con = null;
    PreparedStatement pstmt= null,pstmt1= null;
    ResultSet rset = null;
    int counter,temp,wrong, correct,unattempted,attempted, total, qno,marks;
    String answer,elig;
    double res;
   %>
    <%
    try
    {
    String c = session.getAttribute("counter").toString(); 
    counter = Integer.parseInt(c);
    System.out.println("Counter : "+counter);
    total = Integer.parseInt(session.getAttribute("total").toString());
    System.out.println("Now Total : "+total);
    if(counter<=total)
    {
    temp = counter;
    counter++;
    response.sendRedirect("exam.jsp?counter="+counter);
    //}
   
    //System.out.println("Last Total : "+total);
 //  else
   //{
     String qid = session.getAttribute("sexam").toString();
     answer = request.getParameter("options");
     System.out.println("Answer : "+answer);
     if(answer==null)
      {
        unattempted++;
      }
     else
     {
         unattempted = 0;
     }
     con = ConnectionProvider.getConnection();
     pstmt = con.prepareStatement("select * from question where quid=? and qno=?");
     pstmt.setString(1,qid);
     pstmt.setInt(2,temp);
     ResultSet rset = pstmt.executeQuery();
     while(rset.next())
     {
      ans = rset.getString(8);
      System.out.println(ans);
      if(ans.equals(answer))
      {
          correct++;
          attempted++;
      }
      else if(ans.equals(answer)==false)
      {
       wrong++;
       attempted++;
      }
     }
    }
    else
    {
         marks = (correct - (wrong*1/4));
         session.setAttribute("marks",String.valueOf(marks));
    session.setAttribute("correct",String.valueOf(correct));
    session.setAttribute("wrong",String.valueOf(wrong));
    session.setAttribute("unattempted",String.valueOf(unattempted));
    session.setAttribute("attempted",String.valueOf(attempted));
    session.setAttribute("total",String.valueOf(total));
    session.setAttribute("elig",elig);
    response.sendRedirect("result.jsp");
   }
    }catch(Exception e)
    {
        e.printStackTrace();
    }
 %>
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