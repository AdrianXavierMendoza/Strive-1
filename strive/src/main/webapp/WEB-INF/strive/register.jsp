<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Strive | Sign Up</title>
</head>
<body>
	<div>
		<jsp:include page="headerNoLogout.jsp"/>
	</div>
	<div class="body">
		<p class="slogan">Start Setting Your Goals</p>
		<p>Strive makes it easy to set and track your financial goals.</p>
    
    	<p style="color:red;"><form:errors path="user.*"/></p>
    
    	<form:form method="POST" action="/registration" modelAttribute="user">
	        <p>
	            <p style="color:red;"><form:errors path="email"/></p>
	            <form:input path="email" class="form-control" placeholder="Email"/>
	        </p>
	        <p>
	            <p style="color:red;"><form:errors path="password"/></p>
	            <form:password path="password" class="form-control" placeholder="Password"/>
	        </p>
	        <p>
	            <p style="color:red;"><form:errors path="passwordConfirmation"/></p>
	            <form:password path="passwordConfirmation" class="form-control" placeholder="Confirm password"/>
	        </p>
	        <input type="submit" value="Sign Up"/>
    	</form:form>
	</div>
</body>
</html>