<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.util.*, com.jfsd_lab.exp_6.model.*"%>

<!DOCTYPE html>
<html>
<head>
    <title>Registered Events</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px 15px;
            text-align: center;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        td {
            background-color: #f9f9f9;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        a {
            display: inline-block;
            text-decoration: none;
            color: white;
            background-color: #4CAF50;
            padding: 10px 20px;
            margin-top: 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            text-align: center;
            margin-left: 40%;
        }

        a:hover {
            background-color: #45a049;
        }

        p {
            text-align: center;
            font-size: 18px;
            color: #555;
        }
    </style>
</head>
<body>
    <h1>Events You Have Registered For</h1>

    <%
    @SuppressWarnings("all")
    List<Event> registeredEvents = (List<Event>) request.getAttribute("registeredEvents");

    if (registeredEvents != null && !registeredEvents.isEmpty()) {
    %>
    <table>
        <thead>
            <tr>
                <th>Event ID</th>
                <th>Title</th>
                <th>Description</th>
                <th>Amount</th>
                <th>Resource Person</th>
            </tr>
        </thead>
        <tbody>
            <%
            for (Event event : registeredEvents) {
            %>
            <tr>
                <td><%= event.getId() %></td>
                <td><%= event.getTitle() %></td>
                <td><%= event.getDescription() %></td>
                <td><%= event.getAmnt() %></td>
                <td><%= event.getResourcePerson() != null ? event.getResourcePerson().getName() : "N/A" %></td>
            </tr>
            <%
            }
            %>
        </tbody>
    </table>
    <%
    } else {
    %>
    <p>You have not registered for any events yet.</p>
    <%
    }
    %>
    <a href="<%= request.getContextPath() %>/user-dashboard">Back to Dashboard</a>
</body>
</html>
