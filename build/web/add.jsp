<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="compack.ConnectionProvider,java.io.*,java.util.*,java.sql.*,org.apache.commons.fileupload.*,org.apache.commons.fileupload.disk.*,org.apache.commons.fileupload.servlet.*" %>
<jsp:useBean id="mybean" class="compack.EjavaBeans"/>
<jsp:setProperty name="mybean" property="*"/>

<%
  if(mybean.myadd(request))
  {
      RequestDispatcher rd = request.getRequestDispatcher("newquiz.jsp");
       rd.forward(request,response);
  }
%>