<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">


<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/styles.css">
<style>
#five a#seven {
	color: white;
	position: absolute;
	top: 10px;
	left: 90px;
	font-size: 20px;
}

body {
	margin-left: 10px;
	margin-right: 10px;
	margin-top: 0;
	padding: 0;
}

#button {
	width: 170px;
	height: 50px;
	background-color: white;
	border: 1px solid #0070C0;
	color: #0070C0;
	border-radius: 3px;
	font-size: 30px;
	text-align: center;
	position: relative;
	top: 30px;
	left: 90px;
	border-radius: 20px;
}

#cc {
	background-color: white;
	position: relative;
	top: 100px;
	left:600px;
}

#dd th, tr, td {
	border: 1px solid white;
}
#result{
	position:relative;
	top:100px;

}

.pagination {
	display: inline-block;
	padding-left: 0;
	margin: 20px 0;
	border-radius: 4px;
}

.pagination li {
	display: inline;
}

.pagination>li>a, .pagination>li>span {
	position: relative;
	float: left;
	padding: 6px 12px;
	margin-left: -1px;
	line-height: 1.428571429;
	text-decoration: none;
	background-color: #ffffff;
	border: 1px solid #dddddd;
}

.pagination>li:first-child>a, .pagination>li:first-child>span {
	margin-left: 0;
	border-bottom-left-radius: 4px;
	border-top-left-radius: 4px;
}

.pagination>li:last-child>a, .pagination>li:last-child>span {
	border-top-right-radius: 4px;
	border-bottom-right-radius: 4px;
}

.pagination>li>a:hover, .pagination>li>span:hover, .pagination>li>a:focus,
	.pagination>li>span:focus {
	background-color: #eeeeee;
}

.pagination>.active>a, .pagination>.active>span, .pagination>.active>a:hover,
	.pagination>.active>span:hover, .pagination>.active>a:focus,
	.pagination>.active>span:focus {
	z-index: 2;
	color: #ffffff;
	cursor: default;
	background-color: #428bca;
	border-color: #428bca;
}

.pagination>.disabled>span, .pagination>.disabled>a, .pagination>.disabled>a:hover,
	.pagination>.disabled>a:focus {
	color: #999999;
	cursor: not-allowed;
	background-color: #ffffff;
	border-color: #dddddd;
}

</style>

</head>
<body>
	<div id="wrapper">
		<div id="five">

			<a id="seven" href="${pageContext.request.contextPath}/management">Search
				Employee</a>
			<form:form id="six" action="${pageContext.request.contextPath}/">
				<button id="eight" type="submit">Home</button>
			</form:form>
		</div>
	</div>
	<div>

		<div id="button">
			<a href="${pageContext.request.contextPath}/employee/create">Register</a>
		</div>

		<div id="cc">
			<form:form
				action="${pageContext.request.contextPath}/management/list"
				method="get" modelAttribute="SearchCriteriaForm">
				<form:input path="srcData" />
				<form:button>Search</form:button>
				<br>
			</form:form>
		</div>
		<div id="result">
			<c:if test="${page != null && page.totalPages != 0}">
				<span>Total Number of Employees: ${page.totalElements}</span>
				<table id="dd">
					<thead>
						<tr>
							<th>Employee ID</th>
							<th>Name</th>
							<th>Join Date</th>
							<th>Department</th>
							<th>Position</th>
							<th>Email</th>
							<th>Ph No</th>
							<th>Actions</th>
						</tr>
					</thead>
					<c:forEach items="${page.content}" var="employee"
						varStatus="status">
						<tr>
							<td><a href="${pageContext.request.contextPath}/employee/detail?empid=${f:h(employee.empid)}">${f:h(employee.empid)}</a></td>
							<td>${f:h(employee.name)}</td>
							<td>${f:h(employee.joinDate)}</td>
							<td>${f:h(employee.devname)}</td>
							<td>${f:h(employee.positionname)}</td>
							<td>${f:h(employee.email)}</td>
							<td>${f:h(employee.phNo)}</td>
							<td><a href="#">Upload</a> <a href="${pageContext.request.contextPath}/employee/edit?empid=${f:h(employee.empid)}">Edit</a> <a href="${pageContext.request.contextPath}/employee/delete?empid=${f:h(employee.empid)}">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</table>
				<div class="paginationPart">
					<t:pagination page="${page}" outerElementClass="pagination"
						maxDisplayCount="5" />
				</div>
			 </c:if>
		</div>
</body>
</html>