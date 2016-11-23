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
	<div>${register_message}</div>
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
								<a href="" class="active "id="register-form-link">Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="register-form" action="" method="post" role="form"
									style="display: block;">
									<div class="form-group">
										<img src="bootstrap/img/avatar.png" style="width: 20px;">
										<input type="text" name="username" id="username" tabindex="1"
											class="form-control" placeholder="Username" value="">
									</div>
									<div class="form-group">
										<img src="bootstrap/img/envelope.png" style="width: 20px;">
										<input type="email" name="email" id="email" tabindex="1"
											class="form-control" placeholder="Email Address" value="">
									</div>
									<div class="form-group">
										<img src="bootstrap/img/padlock.png" style="width: 20px;">
										<input type="password" name="password" id="password"
											tabindex="2" class="form-control" placeholder="Password">
									</div>
									<div class="form-group">
										<img src="bootstrap/img/padlock.png" style="width: 20px;">
										<input type="password" name="confirm-password"
											id="confirm-password" tabindex="2" class="form-control"
											placeholder="Confirm Password">
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit"
													id="register-submit" tabindex="4"
													class="form-control btn btn-register" value="Register Now">
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>