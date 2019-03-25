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
  
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"> -->
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  -->
  <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>  -->
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
      <h3>Add Car (and show it on the same page)</h3>
        <form:form method="POST"
          action="/spring-mvc/" modelAttribute="car">
          <div class="form-group">
          	<form:label for="brand" path="brand">Merk</form:label>
          	<form:input path="brand" class="form-control" id="brand"/>
          </div>
          <div class="form-group">
          	<form:label for="type" path="type">Type</form:label>
          	<form:input path="type" class="form-control" id="type"/>
          </div>
          	<button type="submit" value="Submit" class="btn btn-default">Add</button>
        </form:form>
       <h3>Add Car (and show it on a different page)</h3>
        <form:form method="POST"
          action="/spring-mvc/addCar" modelAttribute="car">
          <div class="form-group">
          	<form:label for="brand" path="brand">Merk</form:label>
          	<form:input path="brand" class="form-control" id="brand"/>
          </div>
          <div class="form-group">
          	<form:label for="type" path="type">Type</form:label>
          	<form:input path="type" class="form-control" id="type"/>
          </div>
          	<button type="submit" value="Submit" class="btn btn-default">Add</button>
        </form:form>
    </div>
    <div class="col-sm-4">
    <h3>How does this work?</h3>
    <p>It works like this.</p>
    <p>Before you actually do something on this page, an object will be created.</p>
    <p>You, as a user, give input to the form on the left.</p>
    <p>It will be sent to this page controller, and object properties will be made to the object based on your input.</p>
    <p>After successfully adding properties to the object, (without errors), the properties will be fetched from the object and returned to this page, and printed on the right.</p>
    <p>Try it yourself!</p>
    </div>
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
    </div>
  </div>
</div>

</body>
</html>