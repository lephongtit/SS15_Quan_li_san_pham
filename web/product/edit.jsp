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
    <title>Edit product</title>
</head>
<body>
<h1>Edit product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to products list</a>
</p>
<form method="post" enctype="multipart/form-data">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>ID: </td>
                <td><input type="text" name="id" id="id" value="${requestScope["product"].getId()}"></td>
            </tr>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type="text" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
            </tr>
            <tr>
                <td>Kind: </td>
                <td><input type="text" name="kind" id="kind" value="${requestScope["product"].getKind()}"></td>
            </tr>
            <td>
                <img src="<%request.getServletContext().getRealPath("");%>/anh/${product.getAvatar()}" id="image">
            </td>
            <tr>
                <td>Avatar:</td>
                <td><input type="file" name="avatar" id="avatar" value="${requestScope["product"].getAvatar()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
