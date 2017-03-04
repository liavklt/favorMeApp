<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<br>
<b>Would like to do a friend a favor? Ask a friend for a favor?
	Login and find out!</b>
<br>
<div>

	<sec:authorize access="hasAuthority('ROLE_ADMIN')">
		<a href="${contextPath}/admin" id="register-form-link">Admin</a>
	</sec:authorize>

	<hr>

</div>

