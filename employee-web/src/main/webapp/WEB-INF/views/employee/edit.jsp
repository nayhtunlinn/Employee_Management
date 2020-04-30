<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<title>New Employee</title>
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
	margin-top: 20px;
}

table {
	width: 100%;
}

td {
	width: 25%;
	border: 1px solid black;
}

tr {
	border: 1px solid black;
	height: 80px;
}

/* label {
	font-size: 20px;
}
input#tbox	{
	width:200px;
	height:27px;
}
select{
width:200px;
height:25px;


}
#but{
border:0px;
border-radius:4px;
width:100px;
background-color:#0070C0;
height:30px;
margin-left: 100px;
color:white;
}
#date{
font-size: 20px;
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
	<div id="regit"> 
	  <%-- <c:if test="${employee != null }"> --%>
	<form:form modelAttribute="employeeForm" action="${pageContext.request.contextPath}/employee/updateconfirm" method="post">
		<table>
			<tr>
				<td><form:label path="empid">Employee ID</form:label></td>
				<td><form:label path="empid">${f:h(employeeForm.empid)}</form:label>
				<form:hidden path="empid" value="${f:h(employeeForm.empid)}"/>
				</td>
				<td><form:label path="departmentId">Department</form:label></td>
				<td><form:select path="departmentId">
  						<form:option value=""  label="--Select--" />
  						<form:options items="${CL_DEPARTMENT}"/>
					</form:select>
				</td>
			</tr>

			<tr>
				<td><form:label path="name">Employee Name</form:label></td>
				<td><form:input path="name" value="${f:h(employeeForm.name)}"></form:input></td>
				<td><form:label path="joinDate">Join Date</form:label></td>
				<td><form:input path="joinDate" value="${f:h(employeeForm.joinDate)}"></form:input></td>
			</tr>

			<tr>
				<td><form:label path="birthDate">DOB</form:label></td>
				<td><form:input path="birthDate" value="${f:h(employeeForm.joinDate)}"></form:input></td>
				<td><form:label path="position">POSITION</form:label></td>
				<td><form:select path="position">
				    <form:option value="" label="--Select--"/>
					<form:options items="${CL_POSITION}" />
					</form:select>
				</td>
			<tr>
				<td><form:label path="gender">Gender</form:label></td>
				<td><form:radiobutton path="gender" value="Male"/> Male
        			<form:radiobutton path="gender" value="Female"/> Female</td>
				<td><form:label path="email">Email</form:label></td>
				<td><form:input path="email" value="${f:h(employeeForm.email)}"></form:input></td>
			</tr>

			<tr>
				<td><form:label path="maritalStatus">Marital Status</form:label></td>
				<td><form:radiobutton path="maritalStatus" value="Single"/> Single
        			<form:radiobutton path="maritalStatus" value="Married"/> Married</td>
				<td><form:label path="phNo">Phone No.</form:label></td>
				<td><form:input path="phNo" value="${f:h(employeeForm.phNo)}"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="japanId">Japanese Level</form:label></td>
				<td><form:select path="japanId">
  						<form:option value="" label="--Select--" />
  						<form:options items="${CL_JAPANESELEVEL}" />
					</form:select></td>
				<td></td>
				<td><form:button name="register">Update</form:button></td>
			</tr>
		</table>
</form:form>
<%-- </c:if> --%>
	</div>
</body>

</html>