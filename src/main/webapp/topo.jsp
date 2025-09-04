<%-- 
    Document   : topo
    Created on : 4 de set. de 2025, 09:39:55
    Author     : jaog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor='mediumSeaGreen'>
        <%
            
        %>
    <img src = '<%=session.getAttribute("avatar")%>' width=60 height=60>
    <font size="7" color='<%=session.getAttribute("cor")%>'>
    <b><%=session.getAttribute("nick")%></b></font>
    </body>
</html>
