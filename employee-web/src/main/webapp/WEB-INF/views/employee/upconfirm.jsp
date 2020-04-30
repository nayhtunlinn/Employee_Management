<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/styles.css">
<title>New Employee Register</title>
<style>
#five a#seven {
	color: white;
	position: absolute;
	top: 10px;
	left: 90px;
	font-size: 20px;
}

#ten {
	color: white;
	float: right;
	font-size: 20px;
	position: relative;
	top: 13px;
	right: 20px;
}

body {
	margin-left: 10px;
	margin-right: 10px;
	margin-top: 0;
	padding: 0;
}
</style>
</head>
<body>
<div id="wrapper">
		<div id="five">
			<a id="seven" href="${pageContext.request.contextPath}/employee/create">New
				Employee</a>
			<form:form id="six"
				action="${pageContext.request.contextPath}/management">
				<button id="eight" type="submit">Search</button>
			</form:form>
			<a id="ten" href="${pageContext.request.contextPath}/">Home</a>
		</div>
	</div>
	 
	  
	<form:form modelAttribute="employeeForm" action="${pageContext.request.contextPath}/employee/up" method="post">
		<form:hidden path="empid" /> 
     	<form:hidden path="departmentId" /> 
     	<form:hidden path="name" /> 
     	<form:hidden path="joinDate" /> 
     	<form:hidden path="birthDate" /> 
     	<form:hidden path="position" /> 
     	<form:hidden path="gender" /> 
     	<form:hidden path="email" /> 
     	<form:hidden path="maritalStatus" /> 
     	<form:hidden path="phNo" /> 
     	<form:hidden path="japanId" /> 
		<table>
			<tr>
				<td><form:label path="empid">Employee ID</form:label></td>
				<td>${f:h(employeeForm.empid)}</td>
				<td><form:label path="departmentId">Department</form:label></td>
				<td>${f:h(employeeForm.departmentId)}
				</td>
			</tr>

			<tr>
				<td><form:label path="name">Employee Name</form:label></td>
				<td>${f:h(employeeForm.name)}</td>
				<td><form:label path="joinDate">Join Date</form:label></td>
				<td>${f:h(employeeForm.joinDate)}</td>
			</tr>

			<tr>
				<td><form:label path="birthDate">DOB</form:label></td>
				<td>${f:h(employeeForm.birthDate)}</td>
				<td><form:label path="position">Position</form:label></td>
				<td>${f:h(employeeForm.position)}
				</td>
			<tr>
				<td><form:label path="gender">Gender</form:label></td>
				<td>${f:h(employeeForm.gender)}</td>
				<td><form:label path="email">Email</form:label></td>
				<td>${f:h(employeeForm.email)}</td>
			</tr>

			<tr>
				<td><form:label path="maritalStatus">Marital Status</form:label></td>
				<td>${f:h(employeeForm.maritalStatus)}</td>
				<td><form:label path="phNo">Phone No.</form:label></td>
				<td>${f:h(employeeForm.phNo)}</td>
			</tr>
			<tr>
				<td><form:label path="japanId">Japanese Level</form:label></td>
				<td>${f:h(employeeForm.japanId)}</td>
				<td></td>
				<td><%-- <a class="button" href="${pageContext.request.contextPath}/employee/create?redo">Back</a> --%>
     				&nbsp;&nbsp;
  					<input type="submit" value="Confirm" /> </td>
			</tr>
		</table>
</form:form>
	<form:form action="${pageContext.request.contextPath}/employee/update?redo" method="post" modelAttribute="employeeForm">
	    <form:hidden path="empid" /> 
     	<form:hidden path="departmentId" /> 
     	<form:hidden path="name" /> 
     	<form:hidden path="joinDate" /> 
     	<form:hidden path="birthDate" /> 
     	<form:hidden path="position" /> 
     	<form:hidden path="gender" /> 
     	<form:hidden path="email" /> 
     	<form:hidden path="maritalStatus" /> 
     	<form:hidden path="phNo" /> 
     	<form:hidden path="japanId" /> 
		<input type="submit" value="Back"/>
	</form:form>

</body>

</html>