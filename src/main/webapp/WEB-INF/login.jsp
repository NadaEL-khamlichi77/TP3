<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
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
        .success {
            color: green;
        }
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="box">
        <h2>Connexion</h2>

        <% String error = (String) request.getAttribute("errorMessage"); %>
        <% String success = (String) request.getAttribute("successMessage"); %>

        <% if (error != null) { %>
            <p class="error"><%= error %></p>
        <% } %>

        <% if (success != null) { %>
            <p class="success"><%= success %></p>
        <% } %>

        <form action="login" method="post">
            <input type="text" name="username" placeholder="Nom d'utilisateur" required>
            <input type="password" name="password" placeholder="Mot de passe" required>
            <button type="submit">Se connecter</button>
        </form>

        <p>Vous n'avez pas de compte ? <a href="signup">S'inscrire</a></p>
    </div>
</body>
</html>