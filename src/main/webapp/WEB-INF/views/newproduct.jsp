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
<head>
<title> Lighting </title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${css}/bootstrap.min.css">
<script src="${js}/jquery.min.js"></script>
<script src="${js}/bootstrap.min.js"></script>
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
</head>
<body>
	<%@include file="shared/header.jsp"%>

	<div class="content">
		<!--login-->
		<div class="login">
			<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Add Product</h3>
					<c:url var="addaction" value="/newproduct/add"></c:url>
					<form:form action="addproduct" commandName="Proddata"
						enctype="multipart/form-data">
						<form:label path="productname">Product Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
							<form:input type="text" path="productname" />
							<div class="clearfix"></div>
						</div>

						<form:label path="productprice">Product Price</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-asterisk" aria-hidden="true"></i>
							<form:input type="text" path="productprice" />
							<div class="clearfix"></div>
						</div>



						<form:label path="productdescription">Product Description</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>
							<form:input type="text" path="productdescription" />
							<div class="clearfix"></div>
						</div>

						<form:label path="categoryname">Category Name</form:label>
						
						<div class="key">
						
							<form:select class="form-control" items="${Catgname}"
								path="categoryname" />
							<div class="clearfix"></div>
						</div>

						<form:label path="suppliername">Supplier Name</form:label>
						<div class="key">
							<form:select class="form-control" items="${Supname}"
								path="suppliername" />
							<div class="clearfix"></div>
						</div>

						
						<form:label path="image">Product Image</form:label>
						<div class="key">
							<form:input class="form-control" type="file" path="image" />
							<div class="clearfix"></div>
						</div>
						<input type="submit" value="Submit">

					</form:form>
				</div>
			</div>
		</div>
	</div>

	<%@include file="shared/footer.jsp"%>
</body>
</html>
