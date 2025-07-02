<%-- 
    Document   : custDashboard
    Created on : 17 May 2025, 22:11:44
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Dashboard Page</title>
    </head>
    <body>
        <h1>Customer Dashboard!</h1>
        <form action="ViewBookSession.do" method="Post">
        <table>
            <tr>
                <td></td>
                <td><input type="submit" value="View Book"></td>
            </tr>
        </table>
    </form>
        <form action="BuyBookSession.do" method="get">
        <table>
            <tr>
                <td></td>
                <td><input type="submit" value="Buy Book"></td>
            </tr>
        </table>
    </form>
        <form action="LogoutSession.do" method="post">
        <table>
            <tr>
                <td></td>
                <td><input type="submit" value="Log Out"></td>
            </tr>
        </table>
    </form>
    </body>
</html>
