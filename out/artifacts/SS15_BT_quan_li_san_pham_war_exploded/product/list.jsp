<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 01/09/2019
  Time: 9:37 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
    <style>
        img {

            width: 100px;
            height: 80px;
        }
        legend{
            text-align: center;
        }
        table{
            width: 100%;
        }
        fieldset{
            width: 50%;
        }
        a{
            color: black;
        }
    </style>
</head>
<body>
<fieldset>
<legend><h1>Product</h1></legend>
<p>
    <a href="/products?action=create">Create new products</a>
</p>
    <form action="/products?action=search" method="post">
        <input type="submit" value="Search">
        <input type="text" placeholder="nhap cmmd" name="search">
    </form>

<table border="1">
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Price($)</td>
        <td>Kind</td>
        <td>Avatar</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td><a href="/products?action=view&id=${product.getId()}">${product.getId()}</a></td>
            <td>${product.getName()}</td>
            <td>${product.getPrice()}$ </td>
            <td>${product.getKind()}</td>
            <td>
             <img src="/anh/${product.getAvatar()}" id="image">
            </td>
            <td><a href="/products?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="/products?action=delete&id=${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</fieldset>
</body>
</html>
