<%-- 
    Document   : getManagerOut
    Created on : 17 May 2025, 21:11:19
    Author     : USER
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entites.Manager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Get Manager Outcome Page</title>
    <style>
        body {
            background-color: #e3f2fd;
            font-family: 'Calibri', sans-serif;
            padding: 20px;
        }
        h1, p {
            text-align: center;
        }
        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 95%;
        }
        th, td {
            border: 1px solid #90caf9;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #64b5f6;
            color: white;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #0d47a1;
        }
    </style>
</head>

    <body>
       
        <h1>Get Manager Outcome!</h1>
        <div class="container">
        <h1>List of Librarians</h1>
        <p>Below is the list of librarians:</p>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Gender</th>
                    <th>Age</th>
                    <th>Salary</th>
                    <th>Password</th>
                    <th>Address</th>
                    <th>Phone Number</th>
                    <th>Creation Date</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Manager> list = (List<Manager>) request.getAttribute("man");
                    for (Manager m : list) { 
                %>
                    <tr>
                        <td><%= m.getId() %></td>
                        <td><%= m.getFirstName() %></td>
                        <td><%=m.getSurname()%></td>
                        <td><%=m.getGender()%></td>
                        <td><%=m.getAge()%></td>
                        <td><%=m.getSalary()%></td>
                        <td><%=m.getPassword() %></td>
                        <td><%=m.getAddress()%></td>
                        <td><%=m.getPhoneNumber()%></td>
                        <td><%=m.getCreationDate()%></td>
                    </tr>
                <% 
                    } 
                %>
            </tbody>
        </table>
        <a href="index.html" class="back-link">Back to Home</a>
    </div>
    </body>
</html>
