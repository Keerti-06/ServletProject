<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login - Shopping Cart</title>
    <style>
        body {
            background-color: #ffffff;
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
        }

        .login-container {
            width: 400px;
            margin: 100px auto;
            padding: 30px;
            background-color: #fce54b;
            border-radius: 20px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .login-container h2 {
            text-align: center;
            color: #fa4860;
        }

        label {
            display: block;
            margin-top: 15px;
            color: #020202;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }

        input[type="submit"] {
            background-color: #fa4860;
            color: white;
            padding: 10px 15px;
            margin-top: 20px;
            border: none;
            width: 100%;
            font-size: 16px;
            border-radius: 12px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #f3030e;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
            <label>Username:</label>
            <input type="text" name="username" required>

            <label>Password:</label>
            <input type="password" name="password" required>

            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
