<%-- 
    Document   : viewFile
    Created on : May 4, 2018, 5:01:43 PM
    Author     : Sarita Karki
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../shared/teacherHeader.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://bootswatch.com/3/flatly/bootstrap.min.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title></title>
    </head>
    <br>
    <div class="container">
    <body>
   <% 
  String subid=request.getParameter("subjects");
   String filePath = "http://localhost:8080/gurusisyas/uploads/";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gurusisya",
            "root", null);
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select subject_id, message from review where subject_id='" + subid + "'");
   %>
    <table class="table table-striped table-hover ">
    <tr class="active">
       <th >Subject_id</th>
      <th >Message</th>
    </tr>
  <%  
    while( rs.next()){
    String subject_id=rs.getString("subject_id");
    String message=rs.getString("message");
  %>
    <tr >
      <td><% out.print(subject_id); %></td>
      <td><%     out.print(message); %></td>
    </tr>
   <% } %>
</table> 
       
     
    </body>
    </div>
</html>
