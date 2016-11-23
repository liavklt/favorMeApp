<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
<link href=”bootstrap/css/bootstrap.css” rel=”stylesheet”
	type=”text/css” />
<link rel="stylesheet" type="text/css" href="bootstrap/css/main.css" />
<script type=”text/javascript” src=”bootstrap/js/bootstrap.min.js”></script>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<title>FavorApp</title>
<style type="text/css">
body {
	background-image: url('bootstrap/img/Background-Image-10.jpg');
}
</style>
</head>
<body>
	<br>
	<div>${message}</div>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6">
								<a href="${contextPath}/login.jsp" id="login-form-link">Login</a>
							</div>
							<div class="col-sm-6">
								<a href="${contextPath}/register.jsp" id="register-form-link">Register</a>
							</div>
						</div>
						<hr>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>