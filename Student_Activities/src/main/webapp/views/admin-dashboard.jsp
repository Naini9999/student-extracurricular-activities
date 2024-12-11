<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Admin Dashboard</title>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-top: 20px;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 40px;
        }

        p {
            font-size: 16px;
            color: #555;
        }

        a {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 20px;
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            border-radius: 4px;
            text-align: center;
        }

        a:hover {
            background-color: #45a049;
        }

        .message {
            background-color: #fffae6;
            color: #555;
            border: 1px solid #ffd966;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 4px;
        }

        .error {
            color: red;
            font-weight: bold;
        }

        .actions {
            text-align: center;
        }

        .actions a {
            margin-right: 10px;
        }
    </style>
</head>
<body>

    <h2>Admin Dashboard</h2>

    <div class="container">
        <%
        // Retrieve user from session
        com.jfsd_lab.exp_6.model.User user = (com.jfsd_lab.exp_6.model.User) session.getAttribute("user");
        String message = (String) session.getAttribute("message");

        if (message != null) {
        %>
        <div class="message">
            <%=message%>
        </div>
        <%
        // Clear message after displaying
        session.removeAttribute("message");
        }

        if (user != null) {
        %>
        <p><strong>ID:</strong> <%=user.getId()%></p>
        <p><strong>Welcome Admin,</strong> <%=user.getName()%>! You have admin privileges.</p>
        <%
        } else {
        %>
        <p class="error">User not found in session. Please log in again.</p>
        <%
        }
        %>

        <div class="actions">
            <a href="<%=request.getContextPath()%>/logout">Logout</a>
            <a href="add-event">Add Event</a>
            <a href="manage-events">Manage Events</a>
        </div>
    </div>

</body>
</html>
