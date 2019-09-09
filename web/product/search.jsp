<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 01/09/2019
  Time: 9:38 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search product</title>
</head>
<body>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
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
    <img src="<%request.getServletContext().getRealPath("");%>/anh/${product.getAvatar()}" id="image">

        </td>
    </tr>
</table>
</body>
</html>
