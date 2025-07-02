<%-- 
    Document   : getManager
    Created on : 17 May 2025, 21:07:46
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Get Manager List Page</title>
     <style>
            body {
                background-color: #add8e6;
                font-family: Arial, sans-serif;
                color: yellow;
                padding: 40px;
                text-align: center;
            }

            h1 {
                color: red;
                font-size: 32px;
            }

            p {
                font-size: 18px;
                margin-bottom: 25px;
            }

            .form-container {
                background-color: rgba(255, 255, 0, 0.1);
                border: 2px solid red;
                border-radius: 10px;
                padding: 30px;
                display: inline-block;
                margin-top: 20px;
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
        
        <h1>get Manager List!</h1>
         <p>please click the button to get all managers</p>
        <form action="GetManagerServ.do" method="Post">
            <table>
                
                <tr>
                    <td></td>
                    <td><input  type ="submit" value= "Get List"/></td>
                </tr>

            </table>  
        </form>
    </body>
</html>
