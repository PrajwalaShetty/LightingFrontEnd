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
<spring:url value="/resources/video" var="video" />


<%@ include file="shared/header.jsp"%>
 <style>
    body {
	background: url("${img}/profilebg.jpg") no-repeat 0px 0px;
	background-size: cover;
	font-family: 'Open Sans', sans-serif;
	background-attachment: fixed;
}
    </style>
<h3>List of Supplier</h3>

<table class="tg" border=1 align="center">
	<tr>
		<th width="80">Supplier ID</th>
		<th width="120">Supplier Name</th>
		<th width="120">Supplier Address</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${supplierList}" var="sup">
		<tr>

			<td><c:out value="${sup.supplierid}" /></td>
			<td><c:out value="${sup.suppliername}" /></td>
			<td><c:out value="${sup.supplieraddress}" /></td>
			<td><a href="<c:url value='/editsupplier/${sup.supplierid}' />">Edit</a></td>
			<td><a
				href="<c:url value='/removesupplier/${sup.supplierid}' />">Delete</a></td>
		</tr>
	</c:forEach>
</table>


<%@ include file="shared/footer.jsp"%>
</body>
</html>