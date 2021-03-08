<%-- 
    Document   : shoppingList
    Created on : Mar 6, 2021, 7:37:41 PM
    Author     : 829364
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>A Shopping List</h1>
        <p>Hello ${username}</p>
        <p><a href="ShoppingList?action=logout">LogOut</a></p>


        <h2>List</h2>

        <form action="" method="post">
            <h2>Add Item:</h2>
            <input type="text" name="item"> <input type="submit" value="Add">
            <input type="hidden" name="action" value="add">
        </form>

        <form action="" method="post">

            <ul 
                <c:forEach var="item" items="${items}">
                    <li <input type="radio" name="item" 
                           value="<c:out value='${item}'/>
                           "><c:out value="${item}"/></li>
                    </c:forEach>
            </ul>


            <input type="submit" value="delete">
            <input type="hidden" name="action" value="delete">
        </form>


    </body>
</html>
