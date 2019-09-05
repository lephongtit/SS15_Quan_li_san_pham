<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 01/09/2019
  Time: 9:37 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View product</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<table>
    <tr>
        <td>ID: </td>
        <td>${requestScope["product"].getId()}</td>
    </tr>
    <tr>
        <td>Name: </td>
        <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
        <td>Price: </td>
        <td>${requestScope["product"].getPrice()}</td>
    </tr>
    <tr>
        <td>Kind: </td>
        <td>${requestScope["product"].getKind()}</td>
    </tr>
    <tr>
        <td>Avatar: </td>
        <td>
            <img src="/anh/${product.getAvatar()}" id="image">
        </td>
    </tr>
</table>
</body>
</html>
