<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
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

	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						Add a new favor!
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<sf:form id="register-form"
									action="${contextPath}/docreatefavor" commandName="favor" method="post" role="form" style="display: block;">
									<div class="form-group">
										<img src="<c:url value="/resources/img/avatar.png" />"
											style="width: 20px;">
										<sf:input type="text" path="name" name="name" id="name"
											tabindex="1" class="form-control" placeholder="Name" value="" />
										<br />
										<sf:errors path="name" cssClass="error"></sf:errors>

									</div>

									<div class="form-group">

										<sf:input type="text" path="text" name="text" id="text"
											tabindex="2" class="form-control" placeholder="Favor" />
										<br />
										<sf:errors path="text" cssClass="error"></sf:errors>
									</div>

									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit"
													id="register-submit" tabindex="4"
													class="form-control btn btn-register" value="Add Favor">
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
