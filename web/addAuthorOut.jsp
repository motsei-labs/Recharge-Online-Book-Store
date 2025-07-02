<%@page import="za.ac.tut.entites.Author"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add Author Outcome Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        .container {
            width: 500px;
            margin: auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        p {
            font-size: 16px;
            color: #444;
        }

        a {
            color: #007BFF;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add Author Outcome</h1>
        <%
            Author a = (Author) request.getAttribute("author");
        %>
        <p>The author with the ID number <b><%= a.getId() %></b> has been successfully added.</p>
        <p>Click <a href="index.html">here</a> to go back to the home.</p>
    </div>
</body>
</html>
