<%-- 
    Document   : register
    Created on : Mar 6, 2021, 7:36:56 PM
    Author     : 829364
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <form action="ShoppingList" method="post">
            Username:<input type="text" name="username"><br>
            <input type="hidden" name="action" value="register">
            <input type="submit" value="Register">
        </form>

        <p>${message}</p>     
    </body>
</html>
