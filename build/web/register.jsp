<%-- 
    Document   : register
    Created on : 14 Jul, 2017, 9:18:09 PM
    Author     : Pallab Banerjee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="bean" class="compack.EjavaBeans"/>
<jsp:setProperty name="bean" property="*"/>
<%
  int i = 0;
  i = bean.save();
  if(i!=0)
  { 
      
  //RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
  out.println("Hurray! You are successfully registered!");
  //rd.forward(request, response);
 %>
    <jsp:forward page="index.jsp"/>
 <br>Click here to <a href="index.jsp"><i>Login!</i></a>
<%
  }
  else
  {
    out.println("Sorry! Request can't be processed!");
    %>
    <jsp:include page="signup.jsp"/>
<%
  }
%>
    

