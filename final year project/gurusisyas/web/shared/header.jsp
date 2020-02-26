<%-- 
    Document   : header
    Created on : Sep 4, 2017, 5:23:18 PM
    Author     : Ark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://bootswatch.com/3/flatly/bootstrap.min.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>

    
    <body> 
         <%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
 response.setHeader("Pragma", "no-cache");
 response.setHeader("Expires", "0");
 
    if(session.getAttribute("userid")==null)
    response.sendRedirect("http://localhost:8080/gurusisyas/index.jsp");
    %>
    
                   
  <nav class="navbar navbar-inverse" style="margin-bottom: 0">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand"  href="#"><img src="../images/teacher.gif" style="width:45Px; height: 40px"></a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="studentWorld.jsp">HOME </a></li>
        <li><a href="assignment.jsp">Assignments </a></li>
        <li><a href="remarks.jsp">Reviews </a></li>
       
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="" ><span class='glyphicon glyphicon-user' ></span> <%=session.getAttribute("userid")%></a></li>
         <li><a href="${pageContext.request.contextPath}/login/logout.jsp"  ><span class="glyphicon glyphicon-log-out" ></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>