<%--
    Created by IntelliJ IDEA.
    User: admin
    Date: 15/12/2024
    Time: 3:30 PM
    To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Currency exchange</title>
</head>
<body>
<form method="post">
    <fieldset style="width: 30%">
        <legend>USD to VND</legend>
        <table>
            <tr>
                <td><label for="usd">USD</label></td>
                <td><input type="text" id="usd" name="usd" value="${usd}"></td>
            </tr>
            <tr>
                <td><label for="rate">Exchange rate</label></td>
                <td><input type="text" id="rate" name="rate" value="${rate}"></td>
            </tr>
            <tr>
                <td>VND</td>
                <td>
                    <c:if test="${vnd != null}">
                        <span>${vnd}</span>
                    </c:if>
                </td>
            </tr>
            <tr>
                <td>
                    <button type="submit">Exchange</button>
                </td>
                <td></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
