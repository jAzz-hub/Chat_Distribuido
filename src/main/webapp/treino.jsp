<%-- 
    Document   : sala.jsp
    Created on : 3 de set. de 2025, 10:12:59
    Author     : jaog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sala de Chat</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
                background-color: #f5f5f5;
            }
            .info-box {
                background-color: white;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
                margin-bottom: 20px;
            }
            .avatar-image {
                width: 100px;
                height: 100px;
                border-radius: 8px;
                border: 2px solid #ddd;
                margin-top: 10px;
                object-fit: cover;
            }
        </style>
    </head>
    <body>
        <div class="info-box">
            <%
                String nick = request.getParameter("txtnick");
                String cor = request.getParameter("radcor");
                String avatar = request.getParameter("radavatar");
                
                // Mapear os valores do avatar para os caminhos reais das imagens
                String avatarImagePath = "";
                if ("house".equals(avatar)) {
                    avatarImagePath = "imagens/yelloMan.jpg";
                } else if ("man".equals(avatar)) {
                    avatarImagePath = "imagens/googleMan.jpg";
                } else if ("woman".equals(avatar)) {
                    avatarImagePath = "imagens/hatGirl.jpg";
                }
                
                out.print("Variável txtnick: " + nick + "<br>");
                out.print("Variável radcor: " + cor + "<br>");
                out.print("Variável radavatar: " + avatar + "<br>");
            %>
        </div>
        
        <div class="info-box">
            <b>Avatar selecionado: </b> <%=avatar%>
            <br>
            <%
                if (avatarImagePath != null && !avatarImagePath.isEmpty()) {
            %>
                <img src='<%=avatarImagePath%>' alt="Avatar" class="avatar-image">
            <%
                } else {
            %>
                <p>Nenhum avatar selecionado ou avatar inválido.</p>
            <%
                }
            %>
        </div>
    </body>
</html>