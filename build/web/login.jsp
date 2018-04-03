<jsp:useBean id="mybean" class="compack.EjavaBeans"/>
<jsp:setProperty name="mybean" property="*"/>
<%! String smail;
    String password,user;
    %>
<%
    user = request.getParameter("usertype");
    System.out.println(user);
      smail= request.getParameter("email");
      password = request.getParameter("password");
   if(user.equals("Admin"))
      {
          if(mybean.finda(request))
      {
          String email = (String)session.getAttribute("smail");
        response.sendRedirect("admin.jsp");
      }
         else
          {
              %>
   
   <jsp:forward page="signin.jsp?msg=Either user id or password is invalid!"/>
     <%
         }
      }
else
{
    if(mybean.finds(request))
      {
        response.sendRedirect("upload.jsp");
      }
         else
          {
              %>
              <jsp:forward page="signin.jsp?msg=Either email or password is invalid!"/>
              <%
         }
      }
%>
   
    