<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Strive | Personal Finances</title>
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<link href="/css/ie.css" rel="stylesheet" type="text/css" />
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,400,700&display=swap" rel="stylesheet">
</head>
<body>
	<div>
		<jsp:include page="header.jsp"/>
	</div>
	<div class="body">
		<p>Update your finances regularly to ensure you are on top of your financial goals</p>
		<p>Monthly Expenses:</p>
		<c:forEach items="${user.user_expenses}" var="userExpense">
			<p><c:out value="${userExpense.name}"/>  <c:out value="${userExpense.amount}"/> 
				<form action="/deleteUserExpense/${userExpense.id}" method="post">
					<input type="hidden" name="_method" value="delete">
					<input type="submit" value="Delete">
				</form>
			</p>
		</c:forEach>
		<p>Total: <c:out value="${user.totalUserExpense}"/></p>
		<form:form action="/addUserExpense" method="post" modelAttribute="userExpense">
			<form:hidden path="user" value="${user.id}"/>
			<form:label path="name">Expense:</form:label>
			<form:input path="name" type="text" class="form-control"/>
			<form:label path="amount">Amount:</form:label>
			<form:input path="amount" type="text" class="form-control"/>
			<input type="submit" value="Add"/>
		</form:form>
		<form action="/strive/updateFinances" method="post">
			<p>
				<label class="lead col-form-label">Current Savings: </label>
				<input name="currentBalance" type="number" class="form-control" />
			</p>
			<p>
				<label class="lead col-form-label">Monthly Income: </label>
				<input name="currentIncome" type="number" class="form-control" />
			</p>
			<input class="btn btn-info" type="submit" value="Submit" />
			<a class="btn btn-warning" href="/home">Cancel</a>
		</form>
	</div>
</body>
</html>