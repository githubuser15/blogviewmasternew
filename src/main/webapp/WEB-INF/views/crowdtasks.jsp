
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ page import="com.acc.data.CrowdData"%>
<%@ page import="java.util.List"%>
<html>
<head>
<title>Example of Bootstrap 3 Simple Tables</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
th, td {
	padding: 5px;
}

th, td {
	text-align: center;
}

th {
	background-color: grey;
	color: white;
}
</style>
</head>
<body>
	<div class="navbar navbar-inverse navbar-static-top"
		style="background: teal">
		<div class="container" style="padding: 5px;">
			<img src="dashboard.png" style="float: left; height: 50px">
			<a href="#" class="navbar-brand"
				style="margin-left: 5px; color: white;">Workspace Dashboard for	CrowdSourcing</a>
		</div>
	</div>

	<br>
	<br>
	<br>

	<div class="container">
		<div class="table-responsive modal-body jumbotron ">
			<!--   style="position: absolute; top:150px" can be removed if scroll bar is needed -->
			<table 	class="table table-condensed table-striped table-bordered table-hover"
				style="width: 100%">
				<thead>
					<tr>
						<th text-align:center;>Tasks For CrowdSourcing</th>
						<th>Crowd Sourcing Status</th>
						<th>Suggusted Next Section</th>
						<th>Interactions</th>
						<th>Task Actions</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${tasks}" var="task">
						<tr>
							<td><c:out value="${task.taskTitle}"></c:out></td>
							<td><c:out value="${task.taskStatus}"></c:out></td>
							<td><c:out value="${task.sugustedAction}"></c:out></td>
							<td><c:out value="${task.interactions}"></c:out></td>
							<td><c:out value="${task.taskActions}"></c:out></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>


</body>
</html>