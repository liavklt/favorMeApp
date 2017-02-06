<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	Coming soon...
	<c:url var="logoutUrl" value="/logout"></c:url>
	<form action="${logoutUrl}" method="post">
		<input type="submit" value="Log out"
			class="form-control btn btn-logout" /> <input type="hidden"
			name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>
</body>
</html>