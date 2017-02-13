<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<html>
<head>
<link href="${contextPath}/resources/css/bootstrap.css"
	rel="stylesheet" type="text/css"  />
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/main.css" />
<script type="text/javascript"
	 src="${contextPath}/resources/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.2.min.js"></script>

<script type="text/javascript">
	function onLoad() {
		$("#password").keyup(checkPasswordsMatch);
		$("#confirmpassword").keyup(checkPasswordsMatch);
		$("#register-form").submit(canSubmit);
	}
	
	function canSubmit(){
		var password = $("#password").val();
		var confirmpassword = $("#confirmpassword").val();
		if(password!=confirmpassword){
			alert("<fmt:message key='UnmatchedPasswords.user.password'/>");
			return false;
		}
		else{
			return true;
		}
	}

	function checkPasswordsMatch() {
		var password = $("#password").val();
		var confirmpassword = $("#confirmpassword").val();

		if (password.length > 3 || confirmpassword.length > 3) {

			if (password == confirmpassword) {
				$("#matchpass").text("<fmt:message key='MatchedPasswords.user.password'/>");
				$("#matchpass").addClass("valid");
				$("#matchpass").removeClass("error");
			} else {
				$("#matchpass").text("<fmt:message key='UnmatchedPasswords.user.password'/>");
				$("#matchpass").addClass("error");
				$("#matchpass").removeClass("valid");
			}
		}
	}
	$(document).ready(onLoad);
</script>
<title>Register</title>
<style type="text/css">
body {
	background-image:
		url('${contextPath}/resources/img/Background-Image-10.jpg');
}
</style>
</head>
<body>
	<br>

	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6">
								<a href="${contextPath}/welcome" id="login-form-link">Login</a>
							</div>
							<div class="col-sm-6">
								<a href="" class="active " id="register-form-link">Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<sf:form id="register-form" action="${contextPath}/doregister "
									commandName="user" method="post" role="form"
									style="display: block;">
									<div class="form-group">
										<img src="<c:url value="/resources/img/avatar.png" />"
											style="width: 20px;">
										<sf:input type="text" path="username" name="username"
											id="username" tabindex="1" class="form-control"
											placeholder="Username" value="" />
										<br />
										<div class="error">
											<sf:errors path="username"></sf:errors>
										</div>

									</div>
									<div class="form-group">
										<img src="<c:url value="/resources/img/envelope.png" />"
											style="width: 20px;">
										<sf:input type="email" path="email" name="email" id="email"
											tabindex="2" class="form-control" placeholder="Email" />
										<br />
										<div class="error">
											<sf:errors path="email"></sf:errors>
										</div>
									</div>
									<div class="form-group">
										<img src="<c:url value="/resources/img/padlock.png" />"
											style="width: 20px;">
										<sf:input type="password" path="password" name="password"
											id="password" tabindex="2" class="form-control"
											placeholder="Password" />
										<br />
										<div class="error">
											<sf:errors path="password"></sf:errors>
										</div>
									</div>
									<div class="form-group">
										<img src="<c:url value="/resources/img/padlock.png" />"
											style="width: 20px;"> <input type="password"
											name="confirmpassword" id="confirmpassword" tabindex="2"
											class="form-control" placeholder="Confirm Password" />
										<div id="matchpass"></div>
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
								</sf:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
