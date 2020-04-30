<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/resources/app/css/styles.css">
    <style>
    
   #five a#seven{
 	color:white;
 	position:absolute;
	top:10px;
	left:90px;
 	font-size: 20px;
    } 
    body{
    margin-left:10px;
    margin-right:10px;
    margin-top:0;
    padding:0;
    
    }
    </style>
    
</head>

<sec:authentication property="principal.account" var="account" />

<body>
    <div id="wrapper">
    	<div id="five" >
    		 
           <a id="seven" href="${pageContext.request.contextPath}/">Welcome</a>
           <form:form id="six" action="${pageContext.request.contextPath}/logout">
                <button id="eight" type="submit">Logout</button>
            </form:form>
    	</div>
    </div>
    <div id="nine">
    <div>
    <a href="${pageContext.request.contextPath}/management">Employee Management</a>
   
    
    </div>
    </div>
    
    <%-- <div>
    	<a href="${pageContext.request.contextPath}/account">view account</a>
    </div> --%>
</body>
</html>