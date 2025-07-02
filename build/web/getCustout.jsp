<%-- 
    Document   : getCustout
    Created on : 17 May 2025, 19:39:20
    Author     : USER
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entites.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Customer Outcome Page</title>
    <style>
        body {
            background-color: #add8e6;
            font-family: Arial, sans-serif;
            color: yellow;
            padding: 30px;
        }

        h1 {
            text-align: center;
            color: red;
        }

        .container {
            max-width: 90%;
            margin: 0 auto;
            background-color: rgba(255, 255, 0, 0.1);
            padding: 20px;
            border-radius: 10px;
            border: 2px solid red;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            color: red;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid red;
            padding: 10px;
            text-align: left;
            background-color: #e6f0ff;
        }

        th {
            background-color: red;
            color: yellow;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            color: red;
            font-weight: bold;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
            color: yellow;
        }
    </style>
</head>
<body>
    <h1>Get Customer Outcome!</h1>
    <div class="container">
        <h1>List of Students</h1>
        <p>Below is the list of students:</p>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Phone Number</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Customer> list = (List<Customer>) request.getAttribute("customers");
                    for (Customer c : list) {
                %>
                    <tr>
                        <td><%= c.getId() %></td>
                        <td><%= c.getFirstName() %></td>
                        <td><%= c.getLastName() %></td>
                        <td><%= c.getEmail() %></td>
                        <td><%= c.getPassword() %></td>
                        <td><%= c.getPhoneNumber() %></td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        <a href="index.html">Back to Home</a>
    </div>
</body>
</html>
