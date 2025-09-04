<%-- 
    Document   : sala
    Created on : 4 de set. de 2025, 09:47:26
    Author     : jaog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            out.print(request.getParameter("txtnick"));
            session.setAttribute("nick", request.getParameter("txtnick"));
            session.setAttribute("cor", request.getParameter("radcor"));
            session.setAttribute("avatar", request.getParameter("radavatar"));
        %>
        <iframe src="topo.jsp" width="800" height="200"></iframe>
        <iframe src="mensagens.jsp" width="800" height="600"></iframe>
        <iframe src="conversa.jsp" width="800" height="200"></iframe>
    </body>
</html>
