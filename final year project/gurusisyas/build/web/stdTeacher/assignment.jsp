<%-- 
    Document   : assignment
    Created on : May 29, 2018, 12:16:21 PM
    Author     : Sarita Karki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../shared/header.jsp" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assignments</title>
    </head>
    <body> 
        <div class="container-fluid" style="margin-top: 15px; margin-left: 20px">
          <%@include file="../shared/calendar.jsp" %>  
            <div class="row" style="margin-left: 20px">
    <div id="calendar" class="col-lg-6" style="margin-left:30px; overflow: hidden"> 
        </div>
                <div style="height:100px" ></div>
<div class="col-sm-4" style="margin-left: 80px; margin-bottom:10px">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">New Notes & Assignments Alert!!</h3>
        </div>
            <div class="panel-body">
             <h5 style="color:#18bc9c "> Choose Subject to Check for Assignment </h5>
                <form action="viewNotesAssign.jsp" method="post" >
                    <select name="subjects" required="required">
                        <option value="" selected="selected">Subjects</option>
                        <option value="csc-501">Advanced Java</option>
                        <option value="csc-502">Advanced Database</option>
                        <option value="csc-503">Internet Technology</option>
                        <option value="csc-504">Software Project Management</option>
                    </select>
                    <input type="submit" value="Enter">
                </form>
            </div>
    </div>
</div>
                <br>
        
<div class="col-sm-4" style="margin-left: 80px; margin-bottom:10px" >
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">Hey did you finish your assignment?</h3>
        </div>
            <div class="panel-body">
             <h5 style="color:#18bc9c "> Choose Subject to Upload Assignment Here</h5>
                <form action="uploadForm.jsp" method="post" >
                    <select name="subjects" required="required">
                        <option value="" selected="selected">Subjects</option>
                        <option value="csc-501">Advanced Java</option>
                        <option value="csc-502">Advanced Database</option>
                        <option value="csc-503">Internet Technology</option>
                        <option value="csc-504">Software Project Management</option>
                    </select>
                    <input type="submit" value="Enter">
                    <%if(request.getParameter("success")!=null)
                {%>
                <p style="color: #f39c12"> <% out.print("File uploaded successfully"); %> </p>
                 
                <%} 
                
                %>
                <%if(request.getParameter("notsuccess")!=null)
                {%>
                <p style="color: #f39c12"> <% out.print("File already exists"); %> </p>
                 
                <%} 
                
                %>
                </form>
                
            </div>
    </div>
</div>
                           
        <div class="col-sm-4" style="margin-left: 80px;">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">Submitted Assignments!</h3>
        </div>
            <div class="panel-body">
             <h5 style="color:#18bc9c "> Choose Subject </h5>
                <form action="checkAssignments.jsp" method="post" >
                    <select name="subjects" required="required">
                        <option value="" selected="selected">Subjects</option>
                        <option value="csc-501">Advanced Java</option>
                        <option value="csc-502">Advanced Database</option>
                        <option value="csc-503">Internet Technology</option>
                        <option value="csc-504">Software Project Management</option>
                    </select>
                    <input type="submit" value="Enter">
                </form>
            </div>
    </div>
</div>
    
  </div>
  </div> 
    </body>
</html>

    
