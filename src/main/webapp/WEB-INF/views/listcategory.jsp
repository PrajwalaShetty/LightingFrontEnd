<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>

<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/img" var="img" />
<spring:url value="/resources/fonts" var="fonts" />
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Obaju e-commerce template">
    <meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
    <meta name="keywords" content="">

    <title>
          Lighting
    </title>

    <meta name="keywords" container="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'>

    <!-- styles -->
    <link href="${css}/font-awesome.css" rel="stylesheet">
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    <link href="${css}/animate.min.css" rel="stylesheet">
    <link href="${css}/owl.carousel.css" rel="stylesheet">
    <link href="${css}/owl.theme.css" rel="stylesheet">

    <!-- theme stylesheet -->
    <link href="${css}/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- your stylesheet with modifications -->
    <link href="${css}/custom.css" rel="stylesheet">

    <script src="${js}/respond.min.js"></script>

    <link rel="shortcut icon" href="favicon.png">

</head>
<body>
<%@ include file = "shared/header.jsp" %>
 <style>
    body {
	background: url("${img}/profilebg.jpg") no-repeat 0px 0px;
	background-size: cover;
	font-family: 'Open Sans', sans-serif;
	background-attachment: fixed;
}
    </style>
<h3>List Of Categories</h3>

<table class="tg" border=1 align="center">
	<tr>
		<th width="80">Category ID</th>
		<th width="120">Category Name</th>
		<th width="120">Category Description</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${categoryList}" var="cat">
		<tr>

			<td><c:out value="${cat.categoryid}" /></td>
			<td><c:out value="${cat.categoryname}" /></td>
			<td><c:out value="${cat.categorydescription}" /></td>
			<td><a href="<c:url value='/editcategory/${cat.categoryid}' />">Edit</a></td>
			<td><a
				href="<c:url value='/removecategory/${cat.categoryid}' />">Delete</a></td>
		</tr>
	</c:forEach>
</table>

	<%@ include file = "shared/footer.jsp" %>
</body>
</html>
