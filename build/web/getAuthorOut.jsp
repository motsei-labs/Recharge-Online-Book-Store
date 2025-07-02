<%-- 
    Document   : getAuthorOut
    Created on : 17 May 2025, 20:26:17
    Author     : USER
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entites.Author"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Get Author Outcome Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 900px;
            margin: 60px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        p {
            text-align: center;
            color: #666;
            margin-bottom: 30px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 25px;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #0078D4;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .back-link {
            display: inline-block;
            padding: 10px 20px;
            background-color: #0078D4;
            color: #fff;
            text-decoration: none;
            border-radius: 6px;
        }
        .back-link:hover {
            background-color: #005ea8;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>List of Authors</h1>
        <p>Below is the list of authors:</p>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Email</th>
                    <th>Password</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Author> list = (List<Author>) request.getAttribute("authors");
                    for (Author author : list) { 
                %>
                <tr>
                    <td><%= author.getId() %></td>
                    <td><%= author.getFirstName() %></td>
                    <td><%= author.getLastName() %></td>
                    <td><%= author.getEmail() %></td>
                    <td><%= author.getPassword() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <div style="text-align:center;">
            <a href="index.html" class="back-link">Back to Home</a>
        </div>
    </div>
</body>
</html>
