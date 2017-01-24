<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
<link href=€
	"${contextPath}/resources/css/bootstrap.css" rel="€stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/main.css" />
<script type="text/javascript"
	 src="€${contextPath}/resources/js/bootstrap.min.js"€></script>

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
<body>
	<br>
	<b>Would like to do a friend a favor? Ask a friend for a favor?
		Login and find out!</b>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6">
								<a href="${contextPath}/login"
									id="login-form-link">Login</a>
							</div>
							<div class="col-sm-6">
								<a href="${contextPath}/register"
									id="register-form-link">Register</a>
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