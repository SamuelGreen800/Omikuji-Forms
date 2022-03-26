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

<body class="bg-secondary">

<div class="container col-5 mx-auto p-4 bg-dark">

	<h1 class="text-center fw-bold text-primary">Reveal Your Fortune</h1>
	<form action = "/submitForm" method = "post">
	
	<div class = "form-group d-flex flex-column">
		<label for="number">Pick your lucky number!</label>
			<input type="number" id="number" name="number">
	</div>
	
	<div class = "form-group d-flex flex-column">
		<label for="city">Pick any city!</label>
			<input type="text" id="city" name="city">
	</div>
	<div class = "form-group d-flex flex-column">
		<label for="person">Enter the name of a person!</label>
			<input type="text" id="person" name="person">
	</div>
	<div class = "form-group d-flex flex-column">
		<label for="job">Pick a career or hobby!</label>
			<input type="text" id="job" name="job">
	</div>
	<div class = "form-group d-flex flex-column">
		<label for="critter">Choose any living organism!</label>
			<input type="text" id="critter" name="critter">
	</div>
	<div class = "form-group d-flex flex-column">
		<label for="niceties">Say something nice!</label>
			<textarea cols="20" rows="10" id="niceties" name="niceties"></textarea>
	</div>
	
	<h3>Send to a friend!</h3>
	
	<input type ="submit" value ="Create omikuji">
	</form>

</div>
</body>
</html>