
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

.account{
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
    width: 50%;
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
    color: blue;
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
<!--container-->
	<div class="container">
		<!--login-->
		<div class="login">
			<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Register</h3>
					<div class="forg">
					<br>
						<a href="<c:url value='/login'/>" class="forg-right">Already
							an User? Login</a>
					</div>
					
					<c:url var="addAction" value="/Register/add"></c:url>
					<form:form action="saveuser" commandName="Userdata">
					<br>
						<form:label path="username">Name</form:label><br>
						<span style="color: #ff0000">${nameMsg} <form:errors
								path="username" cssClass="error"></form:errors></span>
						<div class="key">
							<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
							<form:input path="username" />
							<div class="clearfix"></div>
						</div>

						<form:label path="mailid">Email-ID</form:label><br>
						<span style="color: #ff0000">${emailMsg} <form:errors
								path="mailid" cssClass="error"></form:errors></span>
						<div class="key">
							<i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
							<form:input path="mailid" />
							<div class="clearfix"></div>
						</div>

						<form:label path="password">Password</form:label><br>
						<span style="color: #ff0000">${passwordMsg} <form:errors
								path="password" cssClass="error"></form:errors></span>
						<div class="key">
							<i class="glyphicon glyphicon-asterisk" aria-hidden="true"></i>
							<form:input type="password" path="password" />
							<div class="clearfix"></div>
						</div>

						<form:label path="mobile">Phone No</form:label><br>
						<span style="color: #ff0000">${phoneMsg} <form:errors
								path="mobile" cssClass="error"></form:errors></span>
						<div class="key">
							<i class="glyphicon glyphicon-phone" aria-hidden="true"></i>
							<form:input path="mobile" />
							<div class="clearfix"></div>
						</div>
						<br>
						<!--billing address -->
						<h3>Billing Address</h3>
						<br>
						<form:label path="billingAddress.flatno">Flat No</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-home" aria-hidden="true"></i>
							<form:input type="text" path="billingAddress.flatno" />
							<div class="clearfix"></div>
						</div>
						<form:label path="billingAddress.buildingname">Building Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-bookmark" aria-hidden="true"></i>
							<form:input path="billingAddress.buildingname" />
							<div class="clearfix"></div>
						</div>

						<form:label path="billingAddress.localityname">Locality Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-road" aria-hidden="true"></i>
							<form:input path="billingAddress.localityname" />
							<div class="clearfix"></div>
						</div>

						<form:label path="billingAddress.landmark">Landmark</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-picture" aria-hidden="true"></i>
							<form:input type="text" path="billingAddress.landmark" />
							<div class="clearfix"></div>
						</div>

						<form:label path="billingAddress.cityname">City Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-screenshot" aria-hidden="true"></i>
							<form:input path="billingAddress.cityname" />
							<div class="clearfix"></div>
						</div>

						<form:label path="billingAddress.statename">State Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-screenshot" aria-hidden="true"></i>
							<form:input path="billingAddress.statename" />
							<div class="clearfix"></div>
						</div>


						<form:label path="billingAddress.countryname">Country Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-globe" aria-hidden="true"></i>
							<form:input path="billingAddress.countryname" />
							<div class="clearfix"></div>
						</div>


						<form:label path="billingAddress.zipcode">Zip Code</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-asterisk" aria-hidden="true"></i>
							<form:input path="billingAddress.zipcode" />
							<div class="clearfix"></div>
						</div>
						<br>
						<!--shipping address -->

						<h3>Shipping Address</h3>
						<br>
						<form:label path="shippingAddress.flatno">Flat No</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-home" aria-hidden="true"></i>
							<form:input type="text" path="shippingAddress.flatno" />
							<div class="clearfix"></div>
						</div>
						<form:label path="shippingAddress.buildingname">Building Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-bookmark" aria-hidden="true"></i>
							<form:input path="shippingAddress.buildingname" />
							<div class="clearfix"></div>
						</div>

						<form:label path="shippingAddress.localityname">Locality Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-road" aria-hidden="true"></i>
							<form:input path="shippingAddress.localityname" />
							<div class="clearfix"></div>
						</div>

						<form:label path="shippingAddress.landmark">Landmark</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-picture" aria-hidden="true"></i>
							<form:input type="text" path="shippingAddress.landmark" />
							<div class="clearfix"></div>
						</div>

						<form:label path="shippingAddress.cityname">City Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-screenshot" aria-hidden="true"></i>
							<form:input path="shippingAddress.cityname" />
							<div class="clearfix"></div>
						</div>

						<form:label path="shippingAddress.statename">State Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-screenshot" aria-hidden="true"></i>
							<form:input path="shippingAddress.statename" />
							<div class="clearfix"></div>
						</div>


						<form:label path="shippingAddress.countryname">Country Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-globe" aria-hidden="true"></i>
							<form:input path="shippingAddress.countryname" />
							<div class="clearfix"></div>
						</div>


						<form:label path="shippingAddress.zipcode">Zip Code</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-asterisk" aria-hidden="true"></i>
							<form:input path="shippingAddress.zipcode" />
							<div class="clearfix"></div>
						</div>

						<%-- 						<form:input type="hidden" path="cart.totalprice" value="0" /> --%>
                        <br>
						<input type="submit" value="Submit">
						<br>
					</form:form>
				</div>
			</div>
		</div>
		<!--login-->
	</div>

	<!--container-->

<br>

<%@ include file="shared/footer.jsp" %>
<!---->

</body>
</html>