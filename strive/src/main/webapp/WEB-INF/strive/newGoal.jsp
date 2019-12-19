<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<html>
<head>
<meta charset="UTF-8">
<title>Strive for a new goal!</title>
</head>
<body>
	<div>
		<jsp:include page="header.jsp"/>
	</div>
	<div class="body">
		<h3>Update your finances</h3>

		<form:form action="/strive/newGoal" method="post"
			modelAttribute="goal">
			<p>
				<form:label path="goalName" class="lead col-form-label">Goal: </form:label>
				<form:input path="goalName" type="text" class="form-control" />
			</p>

			<p>
				<form:label path="date" class="lead col-form-label">Deadline: </form:label>
				<form:input path="date" type="text" class="form-control" />
			</p>

			<p>
				<form:label path="goalAmt" class="lead col-form-label">Funds needed: </form:label>
				<form:input path="goalAmt" type="text" class="form-control" />
			</p>
			<input class="btn btn-info" type="submit" value="Submit" />
			<a class="btn btn-warning" href="/userHome">Cancel</a>
		</form:form>
	</div>
</body>
</html>