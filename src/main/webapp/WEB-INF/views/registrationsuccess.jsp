<%-- 
    Document   : registrationsuccess
    Created on : Nov 22, 2016, 12:14:52 PM
    Author     : Spunk
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Registration Confirmation Page</title>
	<link href="<c:url value='resources/vendor/bootstrap/css/bootstrap.css' />" rel="stylesheet"></link>
        <link href="<c:url value='resources/css/app.css' />" rel="stylesheet"></link>
</head>
<body>
	<div class="generic-container">
		
		
		<div class="alert alert-success lead">
	    	${success}
		</div>
		
		<span class="well floatRight">
			Go to <a href="<c:url value='/' />">Home</a>
		</span>
	</div>
</body>

</html>