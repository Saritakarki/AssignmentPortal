<%-- 
    Document   : logout
    Created on : Sep 4, 2017, 6:38:11 PM
    Author     : Ark
--%>
<%
    
    session.removeAttribute("userid");
    session.invalidate();
    response.sendRedirect("../index.jsp"); // No logged-in user found, so redirect to login page.
    
   
%>