<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Omikuji App</title>
</head>
<body class="bg-secondary p-4">


	<div class="container col-6 p-4 bg-info my-4 mx-auto text-center text-light border border-dark">
	<h1>Success!</h1>
	<h2>Here's your Omikuji:</h2>
		<h3> 
			<c:out value="${result}"/>
	
		</h3>
	<a href="/omikuji" class = "btn btn-round text-light btn-dark">Back to home</a>
	</div>

</body>
</html>