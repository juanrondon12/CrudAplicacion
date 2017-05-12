<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Management</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
<div class="container">
	<h1>Students Data</h1>

	<form:form action="student.do" method="POST" commandName="student" class="form-inline">
		<table class="table table-bordered">
			<tr>
				<td>Student ID</td>
				<td><form:input path="studentId" class="form-control" /></td>
			</tr>
			<tr>
				<td>First name</td>
				<td><form:input path="firstname" class="form-control" /></td>
			</tr>
			<tr>
				<td>Last name</td>
				<td><form:input path="lastname" class="form-control" /></td>
			</tr>
			<tr>
				<td>Year Level</td>
				<td><form:input path="yearLevel" class="form-control" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" name="action" value="Add" class="btn btn-primary" />
					<input type="submit" name="action" value="Edit" class="btn btn-warning" />
					<input type="submit" name="action" value="Delete" class="btn btn-danger" />
					<input type="submit" name="action" value="Search" class="btn btn-default" />
				</td>
			</tr>
		</table>
	</form:form>
	<br>
	<div class="table-responsive">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>First name</th>
					<th>Last name</th>
					<th>Year level</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${studentList}" var="student">
					<tr>
						<td>${student.studentId}</td>
						<td>${student.firstname}</td>
						<td>${student.lastname}</td>
						<td>${student.yearLevel}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
</body>
</html>