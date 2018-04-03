<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@page import="compack.ConnectionProvider,java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback Page</title>
    </head>
    <body>
        
     <%
    //Creating a result for getting status that messsage is delivered or not!
    String result;
    // Get recipient's email-ID, message & subject-line from index.html page
    final String ename = request.getParameter("email");
    final String from = "nasirshamim8@gmail.com";
    final String name = request.getParameter("name");
    final String subject = ("Feedback by Student - "+name+"  email:"+ ename);
    final String messg = request.getParameter("msg");
    final String pass = "love@baccha";
 
    // Sender's email ID and password needs to be mentioned
    //final String to = "shivamsrivastava442@gmail.com";
     //final String to = "nishant2raj@gmail.com";
    final String to ="rik.pallab@gmail.com";
    // Defining the gmail host
    String host = "smtp.gmail.com";
 
    // Creating Properties object
    Properties props = new Properties();
     
    // Defining properties
    props.put("mail.host", host);
    props.put("mail.transport.protocol", "smtp");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.user", from);
    props.put("mail.password", pass);
    props.put("mail.smtp.port", 587);//465,587,25
 
    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, pass);
        }
    });
 
    try {
        // Create a default MimeMessage object.
        MimeMessage message = new MimeMessage(mailSession);
        // Set From: header field of the header.
        message.setFrom(new InternetAddress(from));
        // Set To: header field of the header.
        message.addRecipient(Message.RecipientType.TO,
                new InternetAddress(to));
        // Set Subject: header field
        message.setSubject(subject);
        // Now set the actual message
        message.setText(messg);
        // Send message
        Transport.send(message);
        %>
        <script type="text/javascript">
            alert("Your Feedback is successfully Submitted! Thank you!");
            
            
            
            </script>
        <%
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.include(request, response);
        } catch (MessagingException mex) {
        mex.printStackTrace();
        %>
        <script type="text/javascript">
            alert("Your Feedback is successfully Submitted! Thank you!");
                    
            </script>
        <%
    }
        
%>
   
        
    </body>
</html>
