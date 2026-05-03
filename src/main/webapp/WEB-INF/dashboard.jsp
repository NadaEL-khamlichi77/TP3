<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String user = (String) session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            text-align: center;
            margin-top: 100px;
        }
        .box {
            display: inline-block;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px #ccc;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            background: crimson;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="box">
        <h1>Bienvenue <%= user %></h1>
        <p>Vous êtes connecté avec succès.</p>
        <a href="logout">Se déconnecter</a>
    </div>
</body>
</html>