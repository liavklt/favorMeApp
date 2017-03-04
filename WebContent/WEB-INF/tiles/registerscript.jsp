<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


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
