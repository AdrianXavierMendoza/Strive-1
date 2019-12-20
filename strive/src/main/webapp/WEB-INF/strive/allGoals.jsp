<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Strive | Your Goals</title>
</head>
<body>
	<div>
		<jsp:include page="header.jsp" />
	</div>
	<div class="body">
<h3>Goal Expenses:</h3>
		<table>
			<thead>
				<tr>
					<th>Expense</th>
					<th>Cost</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach items="${user.goals}" var="goals">
					<tr>
						<td><c:out value="${goals.goalName}" /></td>
						<td><c:out value="${goals.deadline}" /></td>
						<td>
	<%-- 					<form action="/deleteGoalExpense/${goalExpense.id}" method="post">
							<input type="hidden" name="_method" value="delete"> 
							<input type="submit" value="Delete">
						</form> --%>
						</td>
					</tr>
				</c:forEach>
			</tbody>
			</table>
	</div>
</body>
</html>