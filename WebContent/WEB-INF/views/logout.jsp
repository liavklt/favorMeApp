<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${contextPath}/resources/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/main.css" />
<script type="text/javascript"
	 src="${contextPath}/resources/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log out successful</title>
<style type="text/css">
body {
	background-image:
		url('${contextPath}/resources/img/Background-Image-10.jpg');
}
</style>
</head>
<body>You have successfully logged out.
</body>
</html>