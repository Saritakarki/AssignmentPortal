<%-- 
    Document   : deadline
    Created on : Jun 4, 2018, 12:38:36 PM
    Author     : Sarita Karki
--%>

<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <h1>Hello World!</h1>
        <% String dates[];
        dates = new String[100];
        dates[3] = "10-01-2018";

        out.println("Date of submission" + dates[3]);
                
        %>
    </body>
</html>
