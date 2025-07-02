<%-- 
    Document   : updateCustomer
    Created on : 17 May 2025, 19:05:50
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Customer Page</title>
         <style>
            body {
                background-color: #add8e6; 
                font-family: Arial, sans-serif;
                color: yellow;
                padding: 30px;
            }

            h2 {
                text-align: center;
                color: red;
                margin-bottom: 30px;
            }

            .container {
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
                background-color: #e6f0ff; /* very light blue input field */
                color: red;
            }

            input[readonly] {
                background-color: #d3eaff;
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
        <div class="container">
            <h1>Update/Edit Customer!</h1>
            <form action="UpdateCustomer.do" method="post">

                 <div class="form-group">
            <label for="id">Customer ID</label>
            <input type="text" name="id" id="id" required />
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password"  name="password" placeholder="Enter password" required />
                </div>

                <div class="form-group">
                    <label for="firstName">First Name</label>
                    <input type="text" name="firstName" required />
                </div>

                <div class="form-group">
                    <label for="lastName">Last Name</label>
                    <input type="text" name="lastName" required />
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email"  name="email" required />
                </div>

                <div class="form-group">
                    <label for="phoneNumber">Phone Number</label>
                    <input type="text" name="phoneNumber" required />
                </div>

                <div class="form-group">
                    <input type="submit" value="Update Customer" />
                </div>
            </form>
        </div>
    </body>
</html>

    </body>
</html>
