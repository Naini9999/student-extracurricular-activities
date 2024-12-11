<%@ page import="java.util.List, com.jfsd_lab.exp_6.model.User"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
    <title>Add Event</title>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f9;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 50%;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px;
        }

        td {
            padding: 10px;
            text-align: left;
        }

        input[type="text"], textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .select2 {
            width: 100%;
        }

        .form-label {
            font-weight: bold;
            color: #555;
        }
    </style>

    <script>
        $(document).ready(function() {
            $('.select2').select2({
                placeholder : "Select a user",
                allowClear : true
            });
        });
    </script>
</head>
<body>
    <h2>Add Event</h2>

    <form:form action="add-event" method="post" modelAttribute="event">
        <table>
            <tr>
                <td class="form-label">Title:</td>
                <td><form:input path="title" /></td>
            </tr>
            <tr>
                <td class="form-label">Description:</td>
                <td><form:textarea path="description" rows="3" /></td>
            </tr>
            <tr>
                <td class="form-label">Amount:</td>
                <td><form:input path="amnt" /></td>
            </tr>
            <tr>
                <td class="form-label">Resource Person:</td>
                <td>
                    <form:select path="resourcePerson.id" cssClass="select2">
                        <form:option value="" label="Select a user" />
                        <%
                        @SuppressWarnings("unchecked")
                        List<User> allUsers = (List<User>) request.getAttribute("allUsers");
                        for (User user : allUsers) {
                        %>
                        <form:option value="<%= user.getId() %>"><%=user.getName()%></form:option>
                        <%
                        }
                        %>
                    </form:select>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" value="Add Event" />
                </td>
            </tr>
        </table>
    </form:form>

</body>
</html>
