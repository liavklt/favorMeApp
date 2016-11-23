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
	<div>${login_message}</div>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6">
								<a href="" class="active" id="login-form-link">Login</a>
							</div>
							<div class="col-sm-6">
								<a href="${contextPath}/register.jsp" id="register-form-link">Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="" method="post" role="form"
									style="display: block;">
									<div class="form-group" style="padding-bottom: 1px;">
										<!-- <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>-->
										<!-- Bootstrap glyphicons don't work, TODO check -->
										<img src="bootstrap/img/avatar.png" style="width: 20px;">

										<input type="text" name="username" id="username" tabindex="1"
											class="form-control" placeholder="Username" value="">
									</div>
									<div class="form-group" style="padding-bottom: 1px;">
										<img src="bootstrap/img/padlock.png" style="width: 20px;">
										<!-- <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> -->
										<input type="password" name="password" id="password"
											tabindex="2" class="form-control" placeholder="Password">
									</div>
									<div class="form-group text-center"
										style="padding-bottom: 1px;">
										<input type="checkbox" tabindex="3" class="" name="remember"
											id="remember"> <label for="remember">
											Remember Me</label>
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
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="" tabindex="5" class="forgot-password">Forgot
														Password?</a>
												</div>
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