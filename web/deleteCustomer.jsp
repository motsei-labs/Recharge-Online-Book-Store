<%-- 
    Document   : deleteCustomer
    Created on : 17 May 2025, 19:41:56
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Customer Page</title>
   <style>
            body {
                background-color: #add8e6;
                font-family: Arial, sans-serif;
                color: yellow;
                padding: 40px;
                text-align: center;
            }

            h2 {
                color: red;
                font-size: 32px;
                margin-bottom: 20px;
            }

            .container {
                display: inline-block;
                background-color: rgba(255, 255, 0, 0.1);
                border: 2px solid red;
                border-radius: 10px;
                padding: 30px;
            }

            .form-group {
                margin-bottom: 20px;
                text-align: left;
            }

            label {
                display: block;
                margin-bottom: 6px;
                color: red;
                font-weight: bold;
            }

            input[type="text"] {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            input[type="submit"] {
                padding: 12px 24px;
                background-color: red;
                color: yellow;
                font-size: 16px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-weight: bold;
            }

            input[type="submit"]:hover {
                background-color: yellow;
                color: red;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2>Delete Customer</h2>
            <form action="DeleteCustomerServ.do" method="post">
                <div class="form-group">
                    <label for="CustomerId">Customer ID</label>
                    <input type="text" id="CustomerId" name="id" placeholder="Enter Customer ID to delete" required />
                </div>
                <input type="submit" value="Delete Customer" />
            </form>
        </div>
    </body>
</html>
