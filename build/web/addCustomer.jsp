<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Customer Page</title>
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
    <h1>Add A Customer!</h1>
    <form action="AddCustServ.do" method="POST">
        <div class="form-group">
            <label for="id">Customer ID</label>
            <input type="text" name="id" id="id" required />
        </div>
        <div class="form-group">
            <label for="firstName">First Name</label>
            <input type="text" name="firstName" id="firstName" required />
        </div>
        <div class="form-group">
            <label for="lastName">Last Name</label>
            <input type="text" name="lastName" id="lastName" required />
        </div>
        <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" name="email" id="email" required />
        </div>
        <div class="form-group">
            <label for="phoneNumber">Contact Details</label>
            <input type="text" name="phoneNumber" id="phoneNumber" required />
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" name="password" id="password" required minlength="8" />
        </div>
        <input type="submit" value="Add Customer" />
    </form>
</body>
</html>
