<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
        <link rel="stylesheet" href="/src/main/webapp/css/custom/style.css" />
        <link rel="stylesheet" href="../css/plugin/bootstrap.min.css" />
        <link rel="stylesheet" href="/src/main/webapp/css/custom/index.css" />
        <link rel="stylesheet" href="../assets/font-we/bootstrap-icons.css" />
        <link rel="stylesheet" href="/src/main/webapp/css/custom/stylecopy.css" />
</head>
<style>
    body {
        background-color: #f8f9fa;
        font-family: Arial, sans-serif;
    }

    .login-container {
        max-width: 400px;
        margin: 0 auto;
        padding: 40px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    .login-title {
        text-align: center;
        font-size: 24px;
        margin-bottom: 30px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-label {
        font-weight: bold;
    }

    .form-control {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    .btn-login {
        width: 100%;
        padding: 12px;
        font-size: 16px;
        color: #fff;
        background-color: #007bff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .btn-login:hover {
        background-color: #0069d9;
    }

    .login-links {
        margin-top: 20px;
        text-align: center;
    }

    .login-links a {
        text-decoration: none;
        color: #007bff;
        margin-right: 10px;
    }

</style>
<body>

<form action="/login" method="post">
<%--    <label for="username">Username:</label>--%>
<%--    <input type="text" id="username" name="username"><br>--%>

<%--    <label for="password">Password:</label>--%>
<%--    <input type="password" id="password" name="pass"><br>--%>

<%--    <input type="submit" value="Login">--%>
    <div class="login-container">
        <div class="login-title">Login</div>
        <form action="/login" method="post">
            <div class="form-group">
                <label for="username" class="form-label">Username</label>
                <input type="text" id="username" name="username" class="form-control" placeholder="Username" required>
            </div>
            <div class="form-group">
                <label for="password" class="form-label">Password</label>
                <input type="password" id="password" name="pass" class="form-control" placeholder="Password" required>
            </div>
            <button type="submit" class="btn-login">Login</button>

        </form>
        <div class="login-links">
            <a href="/register">Register</a>
            <a href="#">Forgot Password</a>
        </div>
    </div>

</form>
</body>
</html>