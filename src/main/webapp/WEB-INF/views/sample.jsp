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
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	
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

<script type="text/javascript">
alert("hello");
$.getJSON("inputNew.json")
.done(function (data) {
alert("success");
alert("data"+data); 
$.each(data.tasks, function(i,data){
alert("data.title"+data.title); 
var newRow =
"<tr>"
+"<td>"+data.title+"</td>"
+"<td>"+data.status+"</td>"
+"<td>"+data.status+"</td>"
+"<td>"+data.interactioncount+"</td>"
+"<td>"+data.interactioncount+"</td>"
+"</tr>" ;
$(newRow).appendTo("#jsondata tbody");
}); 
})

.fail(function (jqxhr, textStatus, error) {

var err = textStatus + ", " + error;

alert("Request Failed: " + err);

});

</script>
</head>
<body>
	 <div class="navbar navbar-inverse navbar-static-top"
		style="background: teal">
		<div class="container" style="padding: 5px;">
			<img src="dashboard.png" style="float: left; height: 50px">
			<a href="#" class="navbar-brand" style="margin-left: 5px; color: white;">Workspace Dashboard for	CrowdSourcing</a>
		</div>
	</div> 

	<br>
	<br>
	<br>
	
<!-- 	<div id="9lessonsLinks"></div> -->

	 <div class="container">
		<div class="table-responsive modal-body jumbotron ">
			
			<table   id="jsondata" 	class="table table-condensed table-striped table-bordered table-hover"
				style="width: 100%">
				<thead>
					<tr>
						<th>Tasks For CrowdSourcing</th>
						<th>Crowd Sourcing Status</th>
						<th>Suggusted Next Section</th>
						<th>Interactions</th>
						<th>Task Actions</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>