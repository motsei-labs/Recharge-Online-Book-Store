<%@page import="za.ac.tut.entites.Author"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Search Author Outcome Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
            margin: 0;
        }

        .container {
            width: 600px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .error-message {
            color: red;
            text-align: center;
            font-weight: bold;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: left;
        }

        th {
            background-color: #007BFF;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Search Author Outcome</h1>

        <%
            Author a = (Author) request.getAttribute("author");
            if (a == null) {
        %>
        <p class="error-message">Author not found!</p>
        <%
            return;
            }
        %>

        <table>
            <tr><th>ID</th><td><%= a.getId() %></td></tr>
            <tr><th>Name</th><td><%= a.getFirstName() %></td></tr>
            <tr><th>Surname</th><td><%= a.getLastName() %></td></tr>
            <tr><th>Age</th><td><%= a.getAge() %></td></tr>
            <tr><th>Address</th><td><%= a.getAddress() %></td></tr>
            <tr><th>Creation Date</th><td><%= a.getCreationDate() %></td></tr>
            <tr><th>Password</th><td><%= a.getPassword() %></td></tr>
        </table>
    </div>
</body>
</html>
