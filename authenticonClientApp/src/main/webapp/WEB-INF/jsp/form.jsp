<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Authenticon Client</title>
    <link rel="stylesheet" type="text/css" href="/css/main.css">
  </head>
  <body>
  <div class="top-menu">
  <ul>
  <li><a href="http://www.benetech.org.">Back to Benetech</a></li>
  </ul>
  </div>
  <h1>Authenticon Client</h1>
  <p>This web app will call the <a href="http://knightfoundation.org/grants/201551982/">Authenticon</a> service and retrieve images for a string.</p>
  <form:form method="POST" action="/" modelAttribute="token">
  <table>
  <tbody>
    <tr>
        <td><form:label path="token">Iconify this:</form:label></td>
        <td><form:input path="token" /></td>

    </tr>
    <tr>
        <td></td><td><input type="submit" value="Submit"/></td>
    </tr>
    </tbody>
   </table>
  </form:form>
</body>
</html>