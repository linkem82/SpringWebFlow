<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>

<c:set var="foundPlayer" scope="request" value="${!empty player}" />
<html>
	<head>
		<title>Search results</title>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
		<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" media="screen" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css.map" media="screen"
			rel="stylesheet" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	</head>
	<body>
		<div class="container-fluid">
			<c:choose>
				<c:when test="${foundPlayer}">
					<div class="row">
						<h3 class="col-sm-offset-3 col-sm-9">Family member found</h1>
						<table class="table">
							<tr>
								<th>Player</th>
								<th>Location</th>
								<th>Phone</th>
								<th>Notes</th>
								<th>Click Link to continue</th>								
							</tr>
							<tr>
								<td>${player.firstname}$nbsp;${player.lastname}</td>
								<td>${player.guardian.address1}</td>
								<td>${palyer.guardian.homePhone}</td>
								<td>Login already exists</br>
									${player.guardian.username}
								</td>
								<td><a href="${flowExecutionUrl}&_eventId=existingAccountFound">Login with this account</a></td>
							</tr>
  					    </table>					
					</div>
				</c:when>
				<c:otherwise>
					<div class="row">
						<h3 class="col-sm-offset-3 col-sm-9">No member found</h1>
					</div>
				</c:otherwise>				
			</c:choose>	
		</div>
	</body>
</html>
