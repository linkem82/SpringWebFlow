<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>
	<head>
		<title>Search form</title>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
		<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" media="screen" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css.map" media="screen"
			rel="stylesheet" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	</head>
	<body>
		<div class="container-fluid">
			<div class="row">
				<h1 class="col-sm-offset-3 col-sm-9">Is a family member of yours already registered?</h1>
			</div>
			<div class="row">
				<form:form modelAttribute="account" commandName="playerSearchCriteria" action="${flowExecutionUrl}" class="form-horizontal" role="form">
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-5">
							<form:errors path="*">
								<div class="alert-danger form-control">
									<spring:message code="error.global" ></spring:message>
								</div>
							</form:errors>
						</div>
					</div>					
					
					<div class="form-group">
						<label for="firstName" class="col-sm-2 col-sm-offset-1 control-label">
							First Name:</label>
						<div class="col-sm-5">
							<form:input path="firstName" class="form-control" id="firstName" />
							<div><form:errors cssClass="form-control alert-danger" path="firstName" htmlEscape="false"/></div>
						</div>
					</div>
					<div class="form-group">
						<label for="lastName" class="col-sm-2 col-sm-offset-1 control-label">
							Last Name:</label>
						<div class="col-sm-5">
							<form:input path="lastName" class="form-control" id="lastName" />
							<div><form:errors cssClass="form-control alert-danger" path="lastName" htmlEscape="false"/></div>
						</div>
					</div>
					<div class="form-group">
						<label for="birthdate" class="col-sm-2 col-sm-offset-1 control-label">
							Birth date:</label>
						<div class="col-sm-5">
							<form:input path="birthdate" class="form-control" id="birthdate" />
							<div><form:errors cssClass="alert-danger form-control" path="birthdate" htmlEscape="false"/></div>
						</div>
					</div>					
					<div class="form-group">
						<label for="phonenumber" class="col-sm-2 col-sm-offset-1 control-label">
							Phone number:</label>
						<div class="col-sm-5">
							<form:input path="phonenumber" class="form-control" id="phonenumber" />
							<div><form:errors cssClass="alert-danger form-control" path="phonenumber" htmlEscape="false"/></div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-9">
							<button type="submit" name="_eventId_find" class="btn btn-default">Find</button>
							<button type="submit" name="_eventId_skip" class="btn btn-default">Skip</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</body>
</html>
