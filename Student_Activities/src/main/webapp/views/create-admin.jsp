<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Admin</title>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f3f3;
        }

        h2 {
            text-align: center;
            color: #555;
            margin-top: 20px;
        }

        .form-container {
            width: 35%; /* Reduced the width from 50% to 35% */
            margin: 0 auto;
            background-color: #fff9e6;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 60px;
        }

        label {
            font-weight: bold;
            color: #666;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            background-color: #f5f5f5;
        }

        input[type="submit"] {
            background-color: #b8d3cc;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background-color: #98c2b5;
        }

        a {
            text-decoration: none;
            color: #7daeb7;
        }

        a:hover {
            color: #6395a0;
        }

        .form-footer {
            text-align: center;
            margin-top: 20px;
        }

        .back-to-home {
            position: absolute;
            top: 20px;
            right: 20px;
            font-size: 14px;
        }
    </style>
</head>
<body>

    <div class="back-to-home">
        <a href="home">Back to Home</a>
    </div>

    <h2>Create Admin</h2>

    <div class="form-container">
        <form action="create-admin" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br>

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>

            <input type="submit" value="Register">
        </form>
    </div>

</body>
</html>
