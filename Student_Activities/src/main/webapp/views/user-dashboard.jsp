<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>User Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8; /* Light background color */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }

        h2 {
            color: #2C3E50; /* Dark blue for the heading */
            text-align: center;
            margin-top: 20px;
            font-size: 28px;
        }

        p {
            color: #34495E; /* Darker gray for the welcome text */
            font-size: 18px;
            text-align: center;
        }

        .message {
            color: #E74C3C; /* Red for error or notification messages */
            font-size: 16px;
            margin-bottom: 20px;
            text-align: center;
        }

        .dashboard-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Soft shadow for the container */
            width: 400px;
            text-align: center;
        }

        .dashboard-container a {
            display: block;
            margin: 10px 0;
            padding: 10px 20px;
            background-color: #3498DB; /* Blue for buttons */
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .dashboard-container a:hover {
            background-color: #2980B9; /* Darker blue on hover */
        }

        .dashboard-container a.logout {
            background-color: #E74C3C; /* Red for the logout button */
        }

        .dashboard-container a.logout:hover {
            background-color: #C0392B; /* Darker red on hover */
        }
    </style>
</head>
<body>

    <h2>User Dashboard</h2>

    <div class="dashboard-container">
        <!-- Display message if available -->
        <%
        com.jfsd_lab.exp_6.model.User user = (com.jfsd_lab.exp_6.model.User) request.getAttribute("user");
        String message = (String) request.getAttribute("message");

        if (message != null) {
        %>
        <p class="message"><%=message%></p>
        <%
        }
        %>

        <p>Welcome to your dashboard, <strong><%=user.getUsername()%></strong>! You are a regular user.</p>

        <!-- Navigation links -->
        <a href="<%=request.getContextPath()%>/logout" class="logout">Logout</a>
        <a href="register-events">Register for Events</a>
        <a href="registered-events">My Registered Events</a>
    </div>

</body>
</html>
