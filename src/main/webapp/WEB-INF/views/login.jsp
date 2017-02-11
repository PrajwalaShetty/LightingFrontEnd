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
<html>
<style>
form {
    border: 3px solid #f1f1f1;
}

.login{
	padding:6em 0;
}
body {
	background: url("${img}/profilebg.jpg") no-repeat 0px 0px;
	background-size: cover;
	font-family: 'Open Sans', sans-serif;
	background-attachment: fixed;
}
.main-agileits {
    width: 30%;
    margin: 0em auto ;
	box-shadow: 0px 0px 15px 0px #D6D6D6;
	-o-box-shadow: 0px 0px 15px 0px #D6D6D6;
	-moz-box-shadow: 0px 0px 15px 0px #D6D6D6;
	-webkit-box-shadow: 0px 0px 15px 0px #D6D6D6;
	padding: 3em ;
}

.key  input[type="text"] ,.key  input[type="password"]{
    width: 89%;
    padding: 10px 10px;
    font-size: 1em;
    border: none;
    border-bottom: none;
    outline: none;
    color: blue;
    float: left;
    background: none;
}
.key i{
	    float: left;
    color: #999;
    font-size: 1.1em;
    padding: 13px;
}
.key {
    background: #fff;
    border: 1px solid #999;
    margin-bottom: 2em;
}
.form-w3agile h3{
    color: black;
    font-size: 2.5em;
    text-align: center;
    margin-bottom: 1.5em;
}
.form-w3agile input[type="submit"] {
    background: #fdb515;
    color: black;
    text-align: center;
    padding: 10px 0;
    border: none;
    font-size: 1em;
    outline: none;
    width: 32%;
    cursor: pointer;
    margin-bottom:30px;
}
.form-w3agile  input[type="submit"]:hover{
	background: black;
	transition:0.5s all;
	-webkit-transition:0.5s all;
	-moz-transition:0.5s all;
	-o-transition:0.5s all;
	-ms-transition:0.5s all;
}
.forg a {
    text-decoration: none;
    color: black;
    font-size:1em;
}
.forg a:hover{
	color:#fdb515;
}
.forg-left{
	float:left;
}
.forg-right{
	float:right;
}
.form1 input[type="submit"] {
	margin-bottom:0;
}
</style>
	<!--content-->
	<div class="container">
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
						<br>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i> <input
								type="password" value="Password" name="j_password"
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Password';}"
								required="">
							<div class="clearfix"></div>
						</div>
					
					<br>
				
				</div>
				<br>
				<div class="forg">
						<input type="submit" value="Login"> <input type="hidden"
							name="${csrf.parametername}" value="${_csrf.token}" /> 
						</a> <a href="<c:url value='/account'/>" class="forg-right">Register</a>
							</form>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!--login-->
	</div>
	<br>
	
	<!--content-->
<%@ include file="shared/footer.jsp" %>

</body>
</html>