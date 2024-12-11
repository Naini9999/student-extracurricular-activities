<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add User</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #F1F8E9; /* Light pastel green */
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        position: relative;
    }

    h2 {
        color: #6A1B9A; /* Dark pastel purple */
        text-align: center;
        margin-bottom: 20px;
    }

    form {
        background-color: #FFCCBC; /* Pastel peach */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        width: 300px;
        text-align: center;
    }

    label {
        display: block;
        margin: 10px 0 5px;
        font-weight: bold;
        color: #BF360C; /* Dark pastel red */
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #FFAB91; /* Light pastel orange */
        border-radius: 5px;
        background-color: #FFFFFF; /* White background for input */
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #81D4FA; /* Pastel light blue */
        color: #FFFFFF; /* White text */
        border: none;
        border-radius: 5px;
        font-size: 1em;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #0288D1; /* Darker blue on hover */
    }

    a {
        display: block;
        text-align: center;
        margin-top: 20px;
        text-decoration: none;
        background-color: #FFAB40; /* Pastel amber */
        color: white; /* White text */
        padding: 10px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
        position: absolute; /* Absolute positioning */
        top: 20px; /* Position from the top */
        right: 20px; /* Position from the right */
    }

    a:hover {
        background-color: #FF8F00; /* Darker amber on hover */
    }

    p {
        color: #D50000; /* Dark pastel red for error messages */
        text-align: center;
        margin-bottom: 15px;
    }
</style>
</head>
<body>

    <!-- Display message if available -->
    <%
    String message = (String) request.getAttribute("message");
    if (message != null) {
    %>
    <p><%=message%></p>
    <%
    }
    %>

    <form action="add-user" method="post">
        <h2>Register</h2> <!-- Register heading placed above the name field -->
        
        <label for="name">Name:</label> 
        <input type="text" id="name" name="name" required><br> <br> 

        <label for="username">Username:</label> 
        <input type="text" id="username" name="username" required><br> <br> 

        <label for="password">Password:</label> 
        <input type="password" id="password" name="password" required><br> <br> <br> 

        <input type="submit" value="Register">
    </form>
    
    <a href="home">Back to Home</a>

</body>
</html>
