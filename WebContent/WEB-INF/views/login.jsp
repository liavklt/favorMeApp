<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%-- <c:url value="/login" var="loginUrl"/>
 --%>
<html>
<head>
<link href="${contextPath}/resources/css/bootstrap.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/main.css" />
<script type="text/javascript"
	src="${contextPath}/resources/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<title>FavorMeApp</title>
<style type="text/css">
body {
	background-image:
		url('${contextPath}/resources/img/Background-Image-10.jpg');
}
</style>
</head>
<body onload='document.f.username.focus();'>
	<br>
	<c:if test="${param.error != null }">
		<span class="error">Login failed. Check that your username
			and password are correct.</span>
	</c:if>
	
	
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6">
								<a href="" class="active">Login</a>
							</div>
							<div class="col-sm-6">
								<a href="${contextPath}/register">Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form name='f'
									action="<c:url value="/j_spring_security_check"></c:url>"
									method="POST" style="display: block;" role="form">
									<div class="form-group" style="padding-bottom: 1px;">


										<img src="<c:url value="/resources/img/avatar.png"/>"
											style="width: 20px;"> <input type="text"
											name="username" id="username" tabindex="1"
											class="form-control" placeholder="Username" />
										<br> <img
											src="<c:url value="/resources/img/padlock.png"/>"
											style="width: 20px;">
										<!-- <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> -->
										<input type="password" name="password" id="password"
											tabindex="2" class="form-control" placeholder="Password"/>

										<br> 
										<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" /> 
										<!-- <input type="checkbox" tabindex="3" class=""
											name="remember" id="remember"/> <label for="remember">
											Remember Me</label> -->
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit"
													tabindex="4" class="form-control btn btn-login"
													value="Log In">
											</div>
										</div>
									</div>
									<!-- <div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="" tabindex="5" class="forgot-password">Forgot
														Password?</a>
												</div>
											</div>
										</div>
									</div> -->
									
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> 
	</body>
	</html>