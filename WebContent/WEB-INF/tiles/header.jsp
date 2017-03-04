<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<div class="container">
	<a href="<c:url value='/'></c:url>">Home</a>
	<div class="row">
		<div class="col-sm-6 ">
			<sec:authorize access="!isAuthenticated()">
				<a href="${contextPath}/welcome" id="login-form-link">Log in</a>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
				<c:url var="logoutUrl" value="/logout"></c:url>
				<form action="${logoutUrl}" method="post">
					<input type="submit" value="Log out"
						class="form-control btn btn-logout" /> <input type="hidden"
						name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>
			</sec:authorize>
		</div>
		<div class="col-sm-6 ">
			<a href="${contextPath}/register" id="register-form-link">Register</a>
		</div>
		<br/>
		
	</div>

</div>