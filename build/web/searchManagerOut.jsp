<%-- 
    Document   : searchManagerOut
    Created on : 17 May 2025, 21:00:25
    Author     : USER
--%>

<%@page import="za.ac.tut.entites.Manager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Search Manager Outcome Page</title>
    <style>
        body {
            background-color: #f3e5f5;
            font-family: Georgia, serif;
            padding: 20px;
        }
        h1 {
            text-align: center;
        }
        table {
            width: 60%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ba68c8;
            padding: 10px;
        }
        th {
            background-color: #ce93d8;
        }
        .error-message {
            color: red;
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>

    <body>
       
        <h1>Search Manager Outcome!</h1>
         <%
            Manager man = (Manager) request.getAttribute("man");
           if (man == null) {
        %>
        <p class="error-message">Manager not found!</p>
        <% 
            return;
        }
        %>

        <table>
            <tr>
                <th>ID</th>
                <td><%= man.getId() %></td>
            </tr>
            <tr>
                <th>Name</th>
                <td><%= man.getFirstName() %></td>
            </tr>
            <tr>
                <th>Surname</th>
                <td><%= man.getSurname() %></td>
            </tr>
            <tr>
                <th>Age</th>
                <td><%= man.getAge() %></td>
            </tr>
            <tr>
                <th>Gender</th>
                <td><%= man.getGender() %></td>
            </tr>
            <tr>
                <th>Address</th>
                <td><%= man.getAddress() %></td>
            </tr>
            <tr>
                <th>Salary</th>
                <td><%= man.getSalary() %></td>
            </tr>
            <tr>
                <th>Phone Number</th>
                <td><%= man.getPhoneNumber() %></td>
            </tr>
            <tr>
                <th>Creation Date</th>
                <td><%= man.getCreationDate() %></td>
            </tr>
            <tr>
                <th>Password</th>
                <td><%= man.getPassword() %></td>
            </tr>
            </tr>
        </table>
    </div>

    </body>
</html>
