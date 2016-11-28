<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>User Registration Form</title>
	<link href="<c:url value='resources/vendor/bootstrap/css/bootstrap.css' />" rel="stylesheet"></link>
        <link href="<c:url value='resources/css/app.css' />" rel="stylesheet"></link>
	
        <link href="<c:url value='resources/vendor/jquery-ui/jquery-ui.min.css' />" rel="stylesheet" type="text/css"/>
        <link href="<c:url value='resources/vendor/jquery-ui/jquery-ui.theme.min.css' />" rel="stylesheet" type="text/css"/>
</head>

<body>
 	<div class="generic-container">
		

		<div class="well lead">User Registration Form</div>
	 	<form:form method="POST" action="updateuser"  class="form-horizontal">
			<form:input type="hidden" path="id" id="id"/>
			
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="firstName">First Name</label>
					<div class="col-md-7">
						<form:input type="text" path="firstName" id="firstName" class="form-control input-sm"/>
						<div class="has-error">
							<form:errors path="firstName" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="lastName">Last Name</label>
					<div class="col-md-7">
						<form:input type="text" path="lastName" id="lastName" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="lastName" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="gender">Gender</label>
					<div class="col-md-7">
						<form:input type="text" path="gender" id="gender" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="gender" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="dateOfBirth">Date Of Birth</label>
					<div class="col-md-7">
						<form:input type="text" path="dateOfBirth" id="dateOfBirth" class="form-control input-sm dateOfBirth" />
						<div class="has-error">
							<form:errors path="dateOfBirth" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>


	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="password">Password</label>
					<div class="col-md-7">
						<form:input type="password" path="password" id="password" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="password" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
                        
                        <div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="confPassword">Confirm Password</label>
					<div class="col-md-7">
						<form:input type="password" path="confPassword" id="confPassword" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="confPassword" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="email">Email</label>
					<div class="col-md-7">
						<form:input type="text" path="email" id="email" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="email" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="mobilePhone">Mobile Phone</label>
					<div class="col-md-7">
						<form:input type="text" path="mobilePhone" id="mobilePhone" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="mobilePhone" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="city">City</label>
					<div class="col-md-7">
						<form:input type="text" path="city" id="city" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="city" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="state">State</label>
					<div class="col-md-7">
						<form:input type="text" path="state" id="state" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="state" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="country">Country</label>
					<div class="col-md-7">
						<form:input type="text" path="country" id="country" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="country" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
<!--			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="userProfiles">Roles</label>
					<div class="col-md-7">
						
						<div class="has-error">
							
						</div>
					</div>
				</div>
			</div>-->
	
			<div class="row">
				<div class="form-actions floatRight">
					
						
						
							<input type="submit" value="Register" class="btn btn-primary btn-sm"/> 
						
					
				</div>
			</div>
		</form:form>
                
	</div>
                <script src="<c:url value='resources/vendor/jquery/jquery.js' />" type="text/javascript"></script>
                <script src="<c:url value='resources/vendor/jquery-ui/jquery-ui.min.js' />" type="text/javascript"></script>
                <script type="text/javascript">
                    $(document).ready(function() {
                    $(".dateOfBirth").datepicker();
                    });
                </script>
</body>
</html>
