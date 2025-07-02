<%-- 
    Document   : addManager
    Created on : 17 May 2025, 20:34:37
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add Store Manager Page</title>
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
            margin-bottom: 30px;
        }
        form {
            max-width: 500px;
            margin: 0 auto;
            background-color: rgba(255, 255, 0, 0.1);
            padding: 20px;
            border-radius: 10px;
            border: 2px solid red;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: red;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 2px solid red;
            border-radius: 5px;
            font-size: 14px;
            background-color: #e6f0ff;
            color: red;
        }
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: red;
            color: yellow;
            border: none;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: yellow;
            color: red;
        }
    </style>
</head>

    <body>
        
         <form action="AddManagerServ.do" method="Post">
            <table border="1">
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="firstName"/></td>
                    </tr>
                    <tr>
                        <td>Surname</td>
                        <td><input type="text" name="lastName"/></td>
                    </tr>
                    <tr>
                        <td>gender</td>
                        <td><input type="text" name="gender"/></td>
                    </tr>
                    <tr>
                        <td>age</td>
                        <td><input type="text" name="age"/></td>
                    </tr>
                    <tr>
                        <td>salary</td>
                        <td><input type="text" name="salary"/></td>
                    </tr>
                    <tr>
                        <td>address</td>
                        <td><input type="text" name="address"/></td>
                    </tr>
                    <tr>
                        <td>Phone Number</td>
                        <td><input type="text" name="PhoneNumber"/></td>
                    </tr>
                    <tr>
                        <td>password</td>
                        <td><input type="text" name="password"/></td>
                    </tr>
                    <tr>
                        <td>confirm password</td>
                        <td><input type="text" name="confirmPassword"/></td>
                    </tr>
               
                    <tr>
                        <td></td>
                        <td><input type="submit" Value="Add Manager"/></td>
                    </tr>
               
            </table>

        </form>
    </body>
</html>
