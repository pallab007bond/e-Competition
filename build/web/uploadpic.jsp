<%-- 
    Document   : upload
    Created on : May 2, 2016, 10:34:26 AM
    Author     : Nazir Hussain
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="compack.ConnectionProvider,java.io.*,java.util.*,java.sql.*,org.apache.commons.fileupload.*,org.apache.commons.fileupload.disk.*,org.apache.commons.fileupload.servlet.*" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>E-Competition</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="no-sidebar">
    <div id="page-wrapper">
<!-- Header -->
	<div id="header">
	<!-- Inner -->
	<div class="inner">
	
	<footer style="height:80px">
            
        </footer>
	</div>
<!-- Nav -->
 <nav id="nav">
 <ul><li>Welcome to the Competitive Examination Portal</li></ul> 
 </nav>
</div>
  
<%
    try
    {
        String stname=(String)session.getAttribute("stname");
        session.setAttribute("stname",stname);
        
        if (! ServletFileUpload.isMultipartContent(request)) {
                System.out.println("Nothing is uploaded");
                //return;
            }
       
      String email = (String)session.getAttribute("smail");
         DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload sfu  = new ServletFileUpload(factory);
           session.setAttribute("smail",email);

            

            List items = sfu.parseRequest(request);
            FileItem file = (FileItem) items.get(0);
           
            
 // System.out.println("Student id : "+email);
 //  System.out.println("File : "+file);
            
            
 Connection con = ConnectionProvider.getConnection();
 PreparedStatement pstmt = con.prepareStatement("update stud_reg set pic=? where email=?");
            con.setAutoCommit(false);
            pstmt.setBinaryStream(1, file.getInputStream(), (int) file.getSize());
            pstmt.setString(2,email);
            int r = pstmt.executeUpdate();
            if(r>0)
            {
            con.commit();
            System.out.println("Successful!");
            }
            
    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
    rd.forward(request,response);   
                        
        }
        catch(Exception ex) {
            ex.printStackTrace();
            out.println( "Error --> " + ex.getMessage());
        }
        

%>
