<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/styles.css"> --%>
<title>Employee Detail</title>
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

#regit {
	width: 60%;
	height: 600px;
	background-color: white;
	position: relative;
	left: 20%;
	right: 20%;
	margin-top: 0px;
}

table {
	width: 100%;
}

td {
	width: 25%;
}

tr {
	height: 80px;
}
#picture{
width:200px;
height:100px;
border:1px solid #0070C0;
position:relative;
top:80px;
left:300px;
z-index: 1;
text-align: center;
font-size: 35px;

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
<div id="picture">Profile Picture</div>
	<div id="regit"> 
		<form:form modelAttribute="employeeForm" action="${pageContext.request.contextPath}/management" method="post">
		<table>
		
		   <tr>
				<td></td>
				<td></td>
				<td>Download Csv</td>
				<td><a href="#">CV 123</a></td>
			</tr>
			<tr>
				<td><form:label path="empid">Employee ID:</form:label></td>
				<td><form:label path="empid">${f:h(employeeForm.empid)}</form:label>
				</td>
				<td><form:label path="departmentId">Department</form:label></td>
				<td><form:label path="departmentId">${f:h(employeeForm.departmentId)}</form:label>
				</td>
			</tr>

			<tr>
				<td><form:label path="name">Employee Name</form:label></td>
				<td><form:label path="name">${f:h(employeeForm.name)}</form:label></td>
				<td><form:label path="joinDate">Join Date</form:label></td>
				<td><form:label path="joinDate">${f:h(employeeForm.joinDate)}</form:label></td>
			</tr>

			<tr>
				<td><form:label path="birthDate">DOB</form:label></td>
				<td><form:label path="birthDate">${f:h(employeeForm.birthDate)}</form:label></td>
				<td><form:label path="position">POSITION</form:label></td>
				<td><form:label path="position">${f:h(employeeForm.position)}</form:label></td>
			<tr>
				<td><form:label path="gender">Gender</form:label></td>
				<td><form:label path="gender">${f:h(employeeForm.gender)}</form:label></td>
				<td><form:label path="email">Email</form:label></td>
				<td><form:label path="email">${f:h(employeeForm.email)}</form:label></td>
			</tr>

			<tr>
				<td><form:label path="maritalStatus">Marital Status</form:label></td>
				<td><form:label path="maritalStatus">${f:h(employeeForm.maritalStatus)}</form:label></td>
				<td><form:label path="phNo">Phone No.</form:label></td>
				<td><form:label path="phNo">${f:h(employeeForm.phNo)}</form:label></td>
			</tr>
			<tr>
				<td><form:label path="japanId">Japanese Level</form:label></td>
				<td><form:label path="japanId">${f:h(employeeForm.japanId)}</form:label></td>
				<td></td>
				<td><form:button id="but">Back</form:button></td>
			</tr>
		</table>
</form:form>

	</div>

</body>

</html>