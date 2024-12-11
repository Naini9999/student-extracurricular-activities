<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
    /* Basic reset for margins and paddings */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        display: flex;
        justify-content: flex-start; /* Align items at the top */
        align-items: center;
        height: 100vh;
        flex-direction: column;
        text-align: center;
        padding-top: 50px; /* Adjust this to move content further up */
    }

    h1 {
        color: #2c3e50;
        font-size: 2.5em;
        margin-bottom: 40px;
    }

    .button-container {
        display: flex;
        flex-direction: column;
        gap: 15px;
    }

    a {
        display: inline-block;
        padding: 12px 20px;
        text-decoration: none;
        color: #fff;
        background-color: #3498db;
        border-radius: 5px;
        font-size: 1.2em;
        transition: background-color 0.3s ease;
        width: 200px;
        text-align: center;
    }

    a:hover {
        background-color: #2980b9;
    }

    a:active {
        background-color: #1d6fa5;
    }
</style>
</head>
<body>
    <h1>Student Extracurricular Activities</h1>
    <div class="button-container">
        <a href="add-user">Register</a>
        <a href="login">Login</a>
        <a href="create-admin">Create new admin</a>
    </div>
</body>
</html>