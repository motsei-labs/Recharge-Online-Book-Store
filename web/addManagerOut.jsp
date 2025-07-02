<%-- 
    Document   : addManagerOut
    Created on : 17 May 2025, 20:49:53
    Author     : USER
--%>

<%@page import="za.ac.tut.entites.Manager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add Manager Outcome Page</title>
    <style>
        body {
            background-color: #e8f5e9;
            font-family: Verdana, sans-serif;
            padding: 20px;
            text-align: center;
        }
        p {
            font-size: 18px;
        }
        a {
            display: inline-block;
            margin-top: 15px;
            text-decoration: none;
            color: #1e88e5;
            font-weight: bold;
        }
    </style>
</head>

    <body>
        <h1>Add Manager Outcome!</h1>
        <%
           
            Manager man = (Manager) request.getAttribute("manager");
    

        %>
        <p>The Manager with the id number <b><%= man.getId()%></b> whose name is <b><%=man.getFirstName()%></b> and surname is <b><%=man.getSurname()%></b> has been successfully Added.
               Click <a href="home.jsp">here</a> to go back to the home .
           </p>
    </body>
</html>
