<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Car?</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="<c:url value="/resources/car-theme/css/bootstrap.min.css" />" rel="stylesheet">
  <script src="<c:url value="/resources/car-theme/js/bootstrap.min.js" />"></script>
  <link href="<c:url value="/resources/car-theme/css/style.css" />" rel="stylesheet">
  <script src="<c:url value="/resources/car-theme/js/jquery-3.3.1.min.js" />"></script>
</head>
<body>

<div class="jumbotron text-center jumback">
  <h1>Car?</h1>
</div>
  
<div class="container">
  <div class="row">
    <div class="col-sm-4">
    <h3>Current Car:</h3>
      <c:choose>
      	<c:when test="${!empty brand}">
      		<p> Merk : ${brand}</p>
      		<p> Tipe : ${type} </p>
      	</c:when>
      	<c:otherwise>
      		There is no car :(
      	</c:otherwise>
      </c:choose>
      <form action="/spring-mvc/"> 
      	<button class="btn btn-default">Take me back</button>
      </form>
    </div>
  </div>
</div>

</body>
</html>