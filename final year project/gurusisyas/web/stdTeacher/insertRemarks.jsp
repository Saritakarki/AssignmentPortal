<%@ page import ="java.sql.*" %>
<%
    String remarks = request.getParameter("remarks");
     String subid=request.getParameter("subjects");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gurusisya",
            "root", null);
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into review(subject_id,message) values ('" + subid + "','" + remarks + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
         response.sendRedirect("remarks.jsp?success=success"); 
    } else {
        response.sendRedirect("remarks.jsp?notsuccess=fail");
    }
%>