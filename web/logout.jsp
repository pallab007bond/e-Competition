<%-- 
    Document   : logout
    Created on : Dec 3, 2015, 6:16:48 PM
    Author     : Nazir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
        
<!--<meta http-equiv="cache-control" content="max-age=0" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="pragma" content="no-cache" />-->
    </head>
    <body>
        <%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
session.setAttribute("email",null);
session.setAttribute("stname",null);
if(session.getAttribute("email")==null)
{
    if(session.getAttribute("stname")==null)
{
        session.invalidate();
        
         response.sendRedirect("index.jsp");
}
}
else
    response.sendRedirect("index.jsp");
        %>
    </body>
</html>
