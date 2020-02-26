<%-- 
    Document   : remarks
    Created on : May 29, 2018, 12:23:47 PM
    Author     : Sarita Karki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../shared/header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../js/main.js"></script>
        <link rel="icon" type="image/png" href="../images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../css/util.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
        <title>Remarks</title>
    </head>
    <body>
        <br>
        <div style="background-color: #cccccc">
            <div class="col-sm-6" style="width:100%">
            
            </div>
       <div class="col-sm-4" style="margin-left: 500px">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">Want to give feedbacks to your teacher?</h3>
        </div>
            <div class="panel-body">
             <h5 style="color:#18bc9c "> Choose Subject to give feedback</h5>
                <form action="insertRemarks.jsp" method="post" >
                    <select name="subjects" required="required">
                        <option value="" selected="selected">Subjects</option>
                        <option value="csc-501">Advanced Java</option>
                        <option value="csc-502">Advanced Database</option>
                        <option value="csc-503">Internet Technology</option>
                        <option value="csc-504">Software Project Management</option>
                    </select>
                    <br>
                    <br>
                    
                    <textarea name="remarks" rows="4" cols="50" >
                    </textarea>
                                                <br>
                                                <br>
                    <input type="submit" value="Submit">
                    <%if(request.getParameter("success")!=null)
                {%>
                <p style="color: #f39c12"> <% out.print("Review submitted successfully"); %> </p>
                 
                <%} 
                
                %>
                <%if(request.getParameter("notsuccess")!=null)
                {%>
                <p style="color: #f39c12"> <% out.print("Sorry review could not be submitted!"); %> </p>
                 
                <%} 
                
                %>
                </form>
            </div>
        
    </div>
</div>
        </div>
       
        <script src="../vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/bootstrap/js/popper.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/tilt/tilt.jquery.min.js"></script>
         
    </body>
    
</html>
