<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Authenticator Client Result</title>
    <link rel="stylesheet" type="text/css" href="/css/main.css">
  </head>
  <body>
  <div class="top-menu">
   <ul>
  <li><a href="http://www.benetech.org.">Back to Benetech</a></li>
  </ul>
  </div>
  <h1>Authenticator Result</h1>
  <p>You entered: ${token.token}</p>
    <table>
    <tbody>
    <tr>
    <c:choose>
  <c:when test="${not empty message}">
  <p>We have an error:</p>
  <p>${message}</p>
  </c:when>
  <c:otherwise>
    <c:forEach items="${icons}" var="iconUrl">
    <td><img src="${iconUrl}"/></td>
    </c:forEach>
  </c:otherwise>
</c:choose>

    </tr>
    </tbody>
    </table>
   </body>
</html>