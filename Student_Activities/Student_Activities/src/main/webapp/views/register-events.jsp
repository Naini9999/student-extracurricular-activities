<%@ page import="java.util.*, com.jfsd_lab.exp_6.model.*, org.springframework.web.util.HtmlUtils"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Register for Events</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f9f9f9;
	margin: 20px;
	padding: 0;
}

h2 {
	color: #333;
	text-align: center;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
	background-color: #ffffff;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

th, td {
	border: 1px solid #ddd;
	padding: 12px;
	text-align: left;
}

th {
	background-color: #4CAF50;
	color: white;
	text-transform: uppercase;
	font-size: 14px;
	letter-spacing: 1px;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #e6f7ff;
}

td a {
	padding: 6px 12px;
	background-color: #28a745;
	color: white;
	border-radius: 4px;
	text-decoration: none;
	transition: background-color 0.3s ease;
}

td a:hover {
	background-color: #218838;
}

.pay-link {
	color: white;
}

.message {
	background-color: #ffdddd;
	color: #d8000c;
	padding: 10px;
	border: 1px solid #d8000c;
	margin-bottom: 20px;
	text-align: center;
}

.action-icons {
	cursor: pointer;
}

.action-icons img {
	width: 20px;
	height: 20px;
}

a {
	display: inline-block;
	margin-top: 20px;
	padding: 10px 20px;
	background-color: #007bff;
	color: white;
	text-decoration: none;
	border-radius: 5px;
	text-align: center;
}

a:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>

	<h2>Register for Events</h2>

	<%
	String message = (String) request.getAttribute("message");
	if (message != null && !message.isEmpty()) {
	%>
	<div class="message"><%=HtmlUtils.htmlEscape(message)%></div>
	<%
	}
	%>

	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Description</th>
				<th>Amount</th>
				<th>Resource Person</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<%
			@SuppressWarnings("unchecked")
			List<Event> allEvents = (List<Event>) request.getAttribute("allEvents");
			if (allEvents != null && !allEvents.isEmpty()) {
				for (Event event : allEvents) {
			%>
			<tr>
				<td><%= event.getId() %></td>
				<td><%= event.getTitle() %></td>
				<td><%= event.getDescription() %></td>
				<td><%= event.getAmnt() %></td>
				<td><%= event.getResourcePerson().getName() %></td>

				<td><a class="pay-link"
					href="<%= request.getContextPath() %>/registerEvent/<%= event.getId() %>"
					onclick="return confirm('Are you sure you want to register and pay for this event?');">
						Pay & Register </a></td>
			</tr>
			<%
				}
			} else {
			%>
			<tr>
				<td colspan="6">No events found.</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

	<a href="<%= request.getContextPath() %>/user-dashboard">Back to Dashboard</a>

</body>
</html>
