<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>

<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/images" var="img" />
<spring:url value="/resources/fonts" var="fonts" />
<!DOCTYPE html>
<html lang="en">
<style>
body {
	background: url("${img}/profilebg.jpg") no-repeat 0px 0px;
	background-size: cover;
	font-family: 'Open Sans', sans-serif;
	background-attachment: fixed;
}
.main-agileits {
	background: #fff;
}
</style>
<head>
<title>Lighting Supplier</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${css}/bootstrap.min.css">
<script src="${js}/jquery.min.js"></script>
<script src="${js}/bootstrap.min.js"></script>

</head>
<body>
	<%@include file="shared/header.jsp"%>
	<!--content-->
	<div class="content">
		<!--login-->
		<div class="login">
			<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Supplier</h3>
					
					<c:url var="addAction" value="/supplier/add"></c:url>
					 <form:form action="addsupg" commandName="Supgdata">
					 
					 <div>
						<label>
							<form:input placeholder="suppliername" name="NAME" 
							type="text" tabindex="3" path="suppliername"/>
						</label>
					</div>
					<div>
						<label>
							<form:input placeholder="supplieraddress" name="ADDRESS" 
							type="text" tabindex="3" path="supplieraddress"/>
						</label>
					</div>
						

						
						<input type="submit" value="Submit">
						</form:form>
						</div>
				</div>

			</div>

		</div>
	</div>
	<!--login-->
	</div>
	<!--content-->





	<%@include file="shared/footer.jsp"%>

</body>
</html>