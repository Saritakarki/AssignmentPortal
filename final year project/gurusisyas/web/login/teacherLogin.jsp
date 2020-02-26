
    
<%@ page import ="java.sql.*" %>

<%
    String userid = request.getParameter("uname");
    String pwd = request.getParameter("pass");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gurusisya",
            "root", null);
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from teacher where uname='" + userid + "' and passwd='" + pwd + "'");
    if (rs.next()) {
        {
            if (userid.equals(rs.getString("uname")) && pwd.equals(rs.getString("passwd"))) {
                session.setAttribute("userid", userid);
                session.setAttribute("user_id",rs.getString("id") );
                     
                response.sendRedirect("../stdTeacher/teacherWorld.jsp");
            }
            
        }
    } else {
        session.invalidate();
        request.setAttribute("errorMessage", "Invalid username or password");
        RequestDispatcher rd = request.getRequestDispatcher("student.jsp");
        rd.include(request, response);
    }

%>
