<%-- 
    Document   : searchManager
    Created on : 17 May 2025, 20:56:14
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Search Manager Page</title>
      <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        .container {
            width: 500px;
            margin: auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            margin-top: 20px;
        }

        td {
            padding: 10px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #007BFF;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>

    <body>
               
       
        <div class="container">
            <h1>Search for a Manager</h1>
            <form action="SearchManagerServ.do" method="post">
                <table>
                    <tr>
                        <td><label for="id">Enter Manager ID:</label></td>
                        <td><input type="text" name="id" placeholder="Enter managers's ID" required /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Search" /></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
