<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@taglib prefix="cd" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/images" var="img" />
<spring:url value="/resources/fonts" var="fonts" />
<%@ include file="shared/header.jsp" %>
	<!--content-->
	<div class="content">
		<!--login-->
		<div class="login">
			<div class="main-agileits">
				<div class="form-w3agile">
					<h3>Login </h3>
					<c:if test="${not empty error}">
						<div class=error style="color: #ff0000">${error}</div>
					</c:if>
					<c:if test="${not empty logout}">
					<div class=logout style="color:#ff0000"> ${logout} </div>
					</c:if>
					<br>
					<form action="<c:url value="j_spring_security-check"/>" method="post">
						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i> 
								<input type="text" value="User Name" name="j_Userid"
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'User name';}"
								required="">
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i> <input
								type="password" value="Password" name="j_password"
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Password';}"
								required="">
							<div class="clearfix"></div>
						</div>
						<input type="submit" value="Login"> <input type="hidden"
							name="${csrf.parametername}" value="${_csrf.token}" />
					</form>
					<br>
				
				</div>
				<div class="forg">
					<a href="<c:url value='/ContactUs'/>" class="forg-left">Forgot
						Password</a> <a href="<c:url value='/account'/>" class="forg-right">Register</a>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!--login-->
	</div>
	<!--content-->
<%@ include file="shared/footer.jsp" %>

</body>
</html>