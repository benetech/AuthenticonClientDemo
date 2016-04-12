<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <p>Authenticator is not up yet, so too bad. </p>
   </body>
</html>