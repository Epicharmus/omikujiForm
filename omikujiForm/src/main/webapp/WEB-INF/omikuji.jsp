<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Your Omikuji</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<div class="d-flex justify-content-around">
		<div class="card d-flex justify-content-around" style="width: 18rem;">
		  <div class="card-body">
		    <h5 class="card-title">Here's your Omikuji!</h5>
		    <p class="card-text">In <c:out value = "${number}"></c:out> years, you will live in <c:out value = "${cityName}"></c:out> with <c:out value = "${personName}"></c:out> for a roommate, <c:out value = "${activity}"></c:out> for a living.</p>
		    <p class="card-text">The next time you see a(n) <c:out value = "${livingThing}"></c:out>, you will have good luck.</p>
		    <p class="card-text">Also: <c:out value = "${kindness}"></c:out></p>
		    <div class="d-flex justify-content-around">
			    <h6 class="card-subtitle mb-2 text-muted">Create a new Omikuji?</h6>
			</div>
			<div class="d-flex justify-content-around">
			   	<a href="/omikuji/restart" class="btn btn-primary">Restart</a>
			</div>
		  </div>
		</div>
	</div>
</body>
</html>