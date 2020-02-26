<%-- 
    Document   : new
    Created on : Apr 25, 2018, 10:50:06 PM
    Author     : my computer
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../shared/teacherHeader.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student World</title>
    </head>
    <body>
         <div class="container-fluid" style="margin-top: 15px; margin-left: 20px">
          <%@include file="../shared/calendar.jsp" %>  
            <div class="row" style="margin-left: 20px">
    <div id="calendar" class="col-lg-6" style="margin-left:30px; overflow: hidden"> </div>
    
    
   <div style="height:100px" ></div> 
   <div class="col-sm-4" style="margin-left: 80px; margin-bottom:10px">
  <div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title">Need to upload notes and assignments?</h3>
  </div>
  <div class="panel-body">
      <h5 style="color:#18bc9c "> Choose Subject </h5>
      <form action="uploadNotes.jsp" method="post" >
         <%
  try{
String user = (String)session.getAttribute("user_id");
Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/gurusisya",
            "root", null);
Statement st1=con1.createStatement();
    ResultSet rs1;
    rs1 = st1.executeQuery("select subject_id from teacher where id='" + user + "'");
    %>
    
<select name="subjects" id="subjects" required="required">
    
    <%
while( rs1.next()){
    String subjects=rs1.getString("subject_id");
  %>
  
 
<option value="<%=subjects%>"><%=subjects%></option>
      <% 
        }
       %>
          </select>

<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
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

        
  <div class="col-sm-4" style="margin-left: 80px; margin-bottom:10px" >
  <div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title"> Check for the submitted assignments</h3>
  </div>
                 
  <div class="panel-body">
      <h5 style="color:#18bc9c "> Choose Subject </h5>
      <form action="viewFile.jsp" method="post" >
          <%
  try{
String user = (String)session.getAttribute("user_id");
Class.forName("com.mysql.jdbc.Driver");
Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/gurusisya",
            "root", null);
Statement st2=con2.createStatement();
    ResultSet rs2;
    rs2 = st2.executeQuery("select subject_id from teacher where id='" + user + "'");
    %>
    
<select name="subjects" id="subjects" required="required">
    
    <%
while( rs2.next()){
    String subjects=rs2.getString("subject_id");
  %>
  
 
<option value="<%=subjects%>"><%=subjects%></option>
      <% 
        }
       %>
          </select>

<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
</select>
          <input type="submit" value="Enter">
      </form>
  </div>
                 
</div></div>
        
  <div class="col-sm-4" style="margin-left: 80px; margin-bottom:10px" >
  <div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title"> Check for Reviews</h3>
  </div>
                
   <div class="panel-body">
      <h5 style="color:#18bc9c "> Choose Your Subject </h5>             
  <form action="viewRemarks.jsp" method="post" >
 
  <%
  try{
String user = (String)session.getAttribute("user_id");
Class.forName("com.mysql.jdbc.Driver");
Connection con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/gurusisya",
            "root", null);
Statement st3=con3.createStatement();
    ResultSet rs3;
    rs3 = st3.executeQuery("select subject_id from teacher where id='" + user + "'");
    %>
    
<select name="subjects" id="subjects" required="required">
    
    <%
while( rs3.next()){
    String subjects=rs3.getString("subject_id");
  %>
  
 
<option value="<%=subjects%>"><%=subjects%></option>
      <% 
        }
       %>
          </select>

<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
</select>
          <input type="submit" value="Enter">
      </form>
  </div>
    
  </div>
        </div>  
    </div>
    </body>
</html>
