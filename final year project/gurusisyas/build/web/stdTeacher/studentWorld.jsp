<%-- 
    Document   : viewFile
    Created on : May 4, 2018, 5:01:43 PM
    Author     : Sarita Karki
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../shared/header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
         <link rel="stylesheet" href="https://bootswatch.com/3/flatly/bootstrap.min.css"> 
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Student World</title>
    </head>
    <body>
        <div>
        <div class="container-fluid" style="background-color:#cccccc; padding: 0">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
    
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" style="height:55vh; overflow: hidden" role="listbox">
    <div class="item active">
      <img src="../images/image.png" style="width:100%;" alt="...">
    </div>
    <div class="item">
      <img src="../images/image2.png" style="width:100%;"  alt="...">
    </div>
      <div class="item">
      <img src="../images/image3.png" style="width:100%;" alt="...">
    </div>
      <div class="item">
      <img src="../images/studydeadline.jpg" style="width:100%;" alt="...">
    </div>
      
    
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
     </div>
        </div>
        <div class="container-fluid" style="text-align: center; text-decoration-style: solid; background-color:whitesmoke ">
               
            <h4 style="color: coral;"><b> WELCOME TO THE HOME PAGE!</b></h4>
            <div>
               
              <% 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gurusisya","root", null);
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("SELECT quote FROM quotes ORDER BY RAND() LIMIT 1");
    while( rs.next()){
    String quote=rs.getString("quote"); %>
    <b><%out.print("Inspiring Quotes:");%></b>
    <b><%out.print(quote);%></b>
    <%}
    %> 
        </div>
        </div>  
        <br>
        
        <div class="container-fluid">
        <div class="row" >
            <div class="col-sm-4 col-sm-offset-2" style="background-color: whitesmoke">
                <h3 style="color: coral;"><b> About The Project</b></h3>
            This project is mainly focused for the student and teachers. Here students can see the currently uploaded assignments and notes. 
            Teacher uploads the files assignments with deadline and finally when the student uploads the assignments they are checked and only
            provided remarks if the deadline is reached. Furthermore, reviews can be provided to the teacher about the classes.
            </div>
            <div class="col-sm-4 col-sm-offset-1" style="height:100px" style="background-color: #cccccc">
                <img src="../images/phot.jpg">
            </div>
        </div>
        </div>
        
        
    </body>
</html>
