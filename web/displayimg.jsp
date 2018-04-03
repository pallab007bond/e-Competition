<%-- 
    Document   : uploadimages
    Created on : Apr 9, 2016, 5:00:25 AM
    Author     : Nazir Hussain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,compack.ConnectionProvider,java.io.*"%>
<%
    try
    {
    response.setContentType("image/jpeg");
    String email = request.getParameter("email");
    System.out.println("semail : "+email);
     Connection con = ConnectionProvider.getConnection();
     PreparedStatement ps = con.prepareStatement("select * from stud_reg where email = ?");
            ps.setString(1,email);
            ResultSet rs = ps.executeQuery();
            if(rs.next())
            {
             Blob b = rs.getBlob(8);
            response.setContentType("image/jpeg");
            //response.setContentType("application/octet-stream");
            response.setContentLength((int) b.length());
            InputStream is = b.getBinaryStream();
            OutputStream os = response.getOutputStream();
            byte buf[] = new byte[(int) b.length()];
            is.read(buf);
            os.write(buf);
            os.close();
            
                
      
      }
  }catch(Exception e)
  {
    out.println("Can't be uploaded!");
    e.printStackTrace();
  }
    %>         
      