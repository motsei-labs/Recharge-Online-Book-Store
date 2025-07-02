<%@page import="za.ac.tut.entites.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Added</title>
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
        .message-box {
            max-width: 500px;
            margin: 30px auto;
            background-color: rgba(255, 255, 0, 0.1);
            padding: 20px;
            border: 2px solid red;
            border-radius: 10px;
            text-align: center;
            font-size: 18px;
            color: red;
        }
    </style>
</head>
<body>
    <h1>Customer Successfully Added</h1>
     <%
              Customer c = (Customer) request.getAttribute("customer");
              String name = request.getParameter("firstName");
              String surname = request.getParameter("lastName");
      %>
    <div class="message-box">
        <p> <%=name%>, <%=surname%> has been successfully added!<br/>.</p>
        <p><a href="addCustomer.jsp" style="color:red; font-weight:bold;">Add Another Customer</a></p>
        <p>Click <a href="index.html"style="color:red; font-weight:bold;">here</a> to go back to the home page.</p>

           
    </div>
</body>
</html>
