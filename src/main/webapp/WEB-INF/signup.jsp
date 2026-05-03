<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Signup</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #eef2f7;
        }
        .box {
            width: 350px;
            margin: 100px auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 0 10px #ccc;
        }
        input, button {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
        }
        .error {
            color: red;
        }
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="box">
        <h2>Inscription</h2>

        <% String error = (String) request.getAttribute("errorMessage"); %>
        <% if (error != null) { %>
            <p class="error"><%= error %></p>
        <% } %>

        <form action="signup" method="post">
            <input type="text" name="username" placeholder="Nom d'utilisateur" required>
            <input type="password" name="password" placeholder="Mot de passe" required>
            <button type="submit">S'inscrire</button>
        </form>

        <p>Vous avez déjà un compte ? <a href="login">Se connecter</a></p>
    </div>
</body>
</html>