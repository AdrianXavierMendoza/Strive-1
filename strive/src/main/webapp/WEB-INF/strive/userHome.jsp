<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Strive | Home</title>
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<link href="/css/userHome.css" rel="stylesheet" type="text/css" />
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,400,700&display=swap" rel="stylesheet">
</head>
<body>
	<div>
		<jsp:include page="header.jsp"/>
	</div>
	<div class="body container col-7">
		<div class="info">
			<p class="welcome"> Welcome <c:out value="${user.firstName}"/></p>
			<p class="labels">Current Savings</p> 
			<p class="fig">$ <c:out value="${user.currentBalance}"/> </p>
			<p class="labels">Current Income (Monthly)</p> 
			<p class="fig inc">$ <c:out value="${user.currentIncome}"/> </p>
			<p class="labels">Current Expenses (Monthly)</p> 
			<p class="fig exp">$ <c:out value="${user.currentIncome}"/></p>
		</div>
		<p class="one"><a href="/updateFinances" class="button1">Update personal finances</a></p>
		<p class="two"><a href="/goals" class="button1">Goals</a></p>
	</div>
</body>
</html>