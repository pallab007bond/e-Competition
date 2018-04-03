<%-- 
    Document   : add
    Created on : Apr 4, 2016, 9:35:41 AM
    Author     : Nazir Hussain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="compack.ConnectionProvider,java.sql.*,java.util.*" %>

<%
try
{
 String email =(String)request.getParameter("email");
 System.out.println(email);
 Connection con = ConnectionProvider.getConnection();
 PreparedStatement stmt = con.prepareStatement("delete from stud_reg where email=?");
 PreparedStatement stmt2 = con.prepareStatement("delete from stud_res where email=?");
 stmt.setString(1,email);
 stmt2.setString(1,email);
 
 int r = stmt.executeUpdate();
 int s = stmt2.executeUpdate();
 if(r>0 || s>0)
 {
 
      response.sendRedirect("delete.jsp?msg=Successfully Removed!");
     
 }
}catch(Exception e)
{
  e.printStackTrace();
}

%>