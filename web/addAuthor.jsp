<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add Author Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
            margin: 0;
        }

        .container {
            width: 500px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #444;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add Author!</h1>
        <form action="AddAuthorServ.do" method="post">
            <div class="form-group">
                <label for="id">Author ID</label>
                <input type="text" name="id" id="id" required />
            </div>
            <div class="form-group">
                <label for="firstName">First Name</label>
                <input type="text" id="firstName" name="firstName" placeholder="Enter first name" required />
            </div>
            <div class="form-group">
                <label for="lastName">Last Name</label>
                <input type="text" id="lastName" name="lastName" placeholder="Enter last name" required />
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter email" required />
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter password" required />
            </div>
            <div class="form-group">
                <label for="age">Age</label>
                <input type="text" id="age" name="age" placeholder="Enter age" required />
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" name="address" placeholder="Enter address" required />
            </div>
            <div class="form-group">
                <label for="firstBook">First Book</label>
                <input type="text" id="firstBook" name="firstBook" placeholder="Enter first book" required />
            </div>
            <div class="form-group">
                <label for="firstBookQuan">Quantity of First Book</label>
                <input type="text" id="firstBookQuan" name="firstBookQuan" placeholder="Enter quantity" required />
            </div>
            <div class="form-group">
                <label for="secondBook">Second Book</label>
                <input type="text" id="secondBook" name="secondBook" placeholder="Enter second book" required />
            </div>
            <div class="form-group">
                <label for="secondBookQuan">Quantity of Second Book</label>
                <input type="text" id="secondBookQuan" name="secondBookQuan" placeholder="Enter quantity" required />
            </div>
            <div class="form-group">
                <label for="thirdBook">Third Book</label>
                <input type="text" id="thirdBook" name="thirdBook" placeholder="Enter third book" required />
            </div>
            <div class="form-group">
                <label for="thirdBookQuan">Quantity of Third Book</label>
                <input type="text" id="thirdBookQuan" name="thirdBookQuan" placeholder="Enter quantity" required />
            </div>
            <input type="submit" value="Add Author" />
        </form>
    </div>
</body>
</html>
