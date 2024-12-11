<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #FDE2E4; /* Light pastel pink background */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            position: relative; /* Required for absolute positioning */
        }

        h2 {
            color: #6A0572; /* Pastel purple */
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            background-color: #FFEBE6; /* Very light pastel pink */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
            color: #6A0572; /* Pastel purple */
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #C1C8E4; /* Light pastel blue border */
            border-radius: 5px;
            background-color: #F4F9F9; /* Very light pastel blue background */
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #B5EAD7; /* Pastel green */
            color: #6A0572; /* Pastel purple text */
            border: none;
            border-radius: 5px;
            font-size: 1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #C7CEEA; /* Slightly different pastel green */
        }

        a {
            display: block;
            text-align: center;
            text-decoration: none;
            color: #6A0572; /* Pastel purple */
            position: absolute;
            top: 20px;
            right: 20px; /* Position in the top-right corner */
        }

        a:hover {
            color: #C7CEEA; /* Hover color with a different pastel shade */
        }

        p {
            color: #FF6B6B; /* Pastel red for error messages */
            text-align: center;
            margin-bottom: 15px;
        }

        /* Additional styling for the login name heading */
        .login-name {
            text-align: center;
            font-weight: bold;
            color: #6A0572; /* Pastel purple */
            margin-bottom: 20px;
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

    <form action="login" method="post">
        <!-- Login name displayed at the top -->
        <h2>Login</h2> <!-- Moved Login label inside the form and above the username -->
        
        <label for="username">Username:</label> 
        <input type="text" id="username" name="username" required>

        <label for="password">Password:</label> 
        <input type="password" id="password" name="password" required>

        <input type="submit" value="Login">
    </form>

    <a href="home">Back to Home</a> <!-- Now in the top-right corner -->
</body>
</html>
