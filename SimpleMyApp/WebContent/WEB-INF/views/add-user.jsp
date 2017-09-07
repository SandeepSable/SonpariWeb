<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration Form</title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
	<%@include file="header.jsp"%>
	<div class="generic-container">
		<form:form method="POST" modelAttribute="user" class="form-horizontal">
			<form:input type="hidden" path="id" id="id" />
			<div class="column">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="firstName">pihlao naava</label>
					<div class="col-md-7">
						<form:input type="text" path="firstName" id="firstName" class="form-control input-sm" />

					</div>
					<div class="has-error">
						<form:errors path="firstName" class="help-inline" />
					</div>
				</div>
			</div>

			<div class="column">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="lastName">AaDnaava</label>
					<div class="col-md-7">
						<form:input type="text" path="lastName" id="lastName"
							class="form-control input-sm" cssStyle=" width : 384px;"/>

					</div>
					<div class="has-error">
						<form:errors path="lastName" class="help-inline" />
					</div>
				</div>
			</div>

			<div class="column">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="ssoId">yaujar AayaDI</label>
					<div class="col-md-7">
						<c:choose>
							<c:when test="${edit}">
								<form:input type="text" path="ssoId" id="ssoId"
									class="form-control input-sm" disabled="true" />
							</c:when>
							<c:otherwise>
								<form:input type="text" path="ssoId" id="ssoId"
									class="form-control input-sm" />

							</c:otherwise>
						</c:choose>
					</div>
					<div class="has-error">
						<form:errors path="ssoId" class="help-inline" />
					</div>
				</div>
			</div>

			<div class="column">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="password">pasavaD-</label>
					<div class="col-md-7">
						<form:input type="password" path="password" id="password" class="form-control input-sm" />

					</div>
					<div class="has-error">
						<form:errors path="password" class="help-inline" />
					</div>
				</div>
			</div>

			<div class="column">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="email">[-  maola</label>
					<div style="font-family: monospace;" class="col-md-7">
						<form:input type="text" path="email" id="email"	class="form-control input-sm" />

					</div>
					<div class="has-error">
						<form:errors path="email" class="help-inline" />
					</div>
				</div>
			</div>

			<div class="column">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="userProfiles">yaujar p`kar</label>
					<div class="col-md-7">
						<form:select path="userProfiles" items="${roles}" multiple="true" itemValue="id" itemLabel="type" class="form-control input-sm" />
					</div>
					<div class="has-error">
						<form:errors path="userProfiles" class="help-inline" />
					</div>
				</div>
			</div>

			<div class="column">
				<div class="form-actions floatRight">
					<c:choose>
						<c:when test="${edit}">
							<input type="submit" value="badla kra"	class="btn btn-primary btn-sm" /> ikMvaa <a	href="<c:url value='/' />">rdd kra</a>
						</c:when>
						<c:otherwise>
							<input type="submit" value="saova kra" class="btn btn-primary btn-sm" /> ikMvaa <a href="<c:url value='/' />">rdd kra</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>