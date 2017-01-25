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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Products list</title>
</head>
<style type="text/css">
body {
	background: url("${img}/profilebg.jpg") no-repeat 0px 0px;
	background-size: cover;
	font-family: 'Open Sans', sans-serif;
	background-attachment: fixed;
}
.main-agi {
	background: #fff;
	width: 50%;
	margin: 0em auto;
	box-shadow: 0px 0px 15px 0px #D6D6D6;
	-o-box-shadow: 0px 0px 15px 0px #D6D6D6;
	-moz-box-shadow: 0px 0px 15px 0px #D6D6D6;
	-webkit-box-shadow: 0px 0px 15px 0px #D6D6D6;
	padding: 3em;
}
input[type=text]:focus {
	width: 80%;
}
input[type=text] {
	flex: 1;
	padding: 0.6em;
	border: 0.2em solid rgb(72, 133, 237);
	width: 150px;
	box-sizing: border-box;
	background-repeat: no-repeat;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
}
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}
.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}
.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}
.tg .tg-4eph {
	background-color: #f9f9f9
}
</style>
<%@include file="shared/header.jsp"%>
<body ng-app="prodapp" ng-controller="productController"
	ng-init="listProduct()">

	<div>
		<br>
		<div align="center">
			<input type="text" ng-model="searchConditionprod"
				placeholder="Search Products....">
		</div>


		<div class="content">
			<div class="login">
				<div class="main-agi">
					<div class="form-w3agile">
						<h3>Product List</h3>
						<div class="table-responsive">
							<table class="tg">
								<tr>
									<security:authorize access="hasRole('ROLE_ADMIN')">
										<th width="80">Product ID</th>
									</security:authorize>
									<th width="160">Product Name</th>
									<th width="120">Product Description</th>
									<th width="120">Category Name</th>
									<security:authorize access="hasRole('ROLE_ADMIN')">
										<th width="120">Supplier Name</th>
									</security:authorize>
									<th width="120">Product Price</th>
									<th width="120">Product Image</th>
									<th width="40">Info</th>
									<security:authorize access="hasRole('ROLE_ADMIN')">
										<th width="60">Edit</th>
										<th width="60">Delete</th>
									</security:authorize>
								</tr>
									<tr ng-repeat="p in products | filter:searchConditionprod">
									<security:authorize access="hasRole('ROLE_ADMIN')">
										<td>{{p.productid}}</td>
									</security:authorize>
									<td><a href="<c:url value='/infoprod/{{p.productid}}'/>">
											{{p.productname}}</td>
									<td>{{p.productdescription}}</td>
									<td>{{p.categoryname}}</td>
									<security:authorize access="hasRole('ROLE_ADMIN')">
										<td>{{p.suppliername}}</td>
									</security:authorize>
									<td>{{p.productprice}}</td>
									<c:url value="/resources/images/{{p.productname}}.jpg"
										var="image" />

									<td><a href="<c:url value='/infoprod/{{p.productid}}'/>">
											<img src="${image}" alt="prodimage" height="80" width="80" /></td>

									<td><a href="<c:url value='/infoprod/{{p.productid}}'/>"><span
											class="glyphicon glyphicon-info-sign"></span></a></td>



									<security:authorize access="hasRole('ROLE_ADMIN')">
										<td><a href="<c:url value='/editprod/{{p.productid}}' />">Edit</a></td>
										<td><a
											href="<c:url value='/removeprod/{{p.productid}}' />">Delete</a></td>
									</security:authorize>
								</tr>
								
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="shared/footer.jsp"%>
	<script src="${js}/app.js"></script>
</body>
</html>