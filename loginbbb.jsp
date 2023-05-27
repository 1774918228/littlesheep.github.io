<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f5f5f5;
            font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
        }

        .login-form {
            max-width: 500px;
            margin: 120px auto;
            padding: 20px;
            border: 1px solid #ddd;
            background-color: #fff;
        }

        .login-form h2 {
            margin-top: 0;
            margin-bottom: 20px;
            text-align: center;
        }

        .login-form .form-group {
            margin-bottom: 20px;
        }

        .login-form label {
            font-weight: normal;
        }

        .btn-login {
            background-color: #428bca;
            color: #fff;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <form class="login-form" action="loginAction.jsp" method="post">
                <h2>Login</h2>
                <div class="form-group">
                    <label>Username:</label>
                    <input type="text" class="form-control" name="username" required>
                </div>
                <div class="form-group">
                    <label>Password:</label>
                    <input type="password" class="form-control" name="password" required>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-login btn-block">Sign in</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
