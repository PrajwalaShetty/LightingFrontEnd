
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@taglib prefix="cd" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/images" var="img" />
<spring:url value="/resources/fonts" var="fonts" />
<footer>
<style>
.footer-w3l {
	background: #1565C0;
	padding: 5em 0;
}

.footer-grid h4 {
	font-size: 2em;
	color: #fff;
	margin-bottom: .5em;
}

.footer-grid p {
	font-size: .96em;
	color: #eee;
	line-height: 1.8em;
}

.footer-grid ul li a {
	font-size: .96em;
	color: #eee;
	line-height: 2em;
	text-decoration: none;
}

.footer-grid i {
	font-size: 1em;
	color: #fff;
	margin-right: 11px;
	line-height: 2em;
	border-radius: 48px;
	border: 1px solid #F19E1F;
	width: 30px;
	height: 30px;
	text-align: center;
	vertical-align: middle;
}

.footer-grid ul li {
	list-style: none;
}

.footer-grid ul li a:hover {
	color: #F39911;
}

.footer-grid p a {
	color: #eee;
}

.foot ul li:nth-child(2) {
	margin: 1em 0;
}

.copy-section {
	padding: 2em 0;
	text-align: center;
	background: #0A0A0A;
}

.copy-section p {
	font-size: 0.9em;
	color: #fff;
	font-weight: 400;
}

.copy-left {
	float: left;
	margin-top: 0.6em;
}

.copy-right {
	float: right;
}

.copy-section  a {
	font-size: 1em;
	color: #fff;
	font-weight: 400;
	text-transform: capitalize;
}

.copy-section a:hover {
	color: #fff;
}

.copy-section a {
	margin: 0 0.3em
}

.social-icon {
	margin-top: 1.8em;
}

.social-icon a i {
	width: 32px;
	height: 32px;
	background: #F19E1F url(../images/img-sprite.png) no-repeat 0px 0px;
	display: inline-block;
	margin: 0 0.2em;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
	-ms-transition: 0.5s all;
	border-radius: 16px;
}

.social-icon i.icon:hover {
	background: #AF1D0D url(../images/img-sprite.png) no-repeat 0px 0px;
	border-radius: 0px;
	transform: rotate(25deg);
}

.social-icon i.icon {
	background-position: 0px 0px;
}

.social-icon i.icon1 {
	background-position: -32px 0px;
}

.social-icon i.icon1:hover {
	background: #AF1D0D url(../images/img-sprite.png) no-repeat -32px 0px;
	border-radius: 0px;
	transform: rotate(25deg);
}

.social-icon i.icon2 {
	background-position: -64px 0px;
}

.social-icon i.icon2:hover {
	background: #AF1D0D url(../images/img-sprite.png) no-repeat -64px 0px;
	border-radius: 0px;
	transform: rotate(25deg);
}

.social-icon i.icon3 {
	background-position: -96px 0px;
}

.social-icon i.icon3:hover {
	background: #AF1D0D url(../images/img-sprite.png) no-repeat -96px 0px;
	border-radius: 0px;
	transform: rotate(25deg);
}

.news-grid p {
	font-size: 1em;
	line-height: 1.8em;
	color: #777;
	padding-top: 1em;
	width: 90%;
	margin: 0 auto 1em;
}

.news-gr h4 {
	text-align: center;
	font-size: 1.5em;
	color: #222;
}

.new-grid h5 {
	font-size: 1.7em;
	color: #222;
}

.new-grid h6 {
	font-size: 1.2em;
	margin: 1em 0;
	font-weight: 600;
}

.new-grid span {
	font-size: 1em;
	color: #777;
	line-height: 2em;
}

.modal-header {
	min-height: 16.42857143px;
	padding: 6px;
	border-bottom: 1px solid #FFFFFF;
}

.modal-dialog {
	width: 950px;
}

.color-quality-left {
	float: left;
}

.color-quality-right {
	float: left;
	margin-left: 8em;
}

.color-quality ul li {
	display: inline-block;
	margin-right: .5em;
}

.color-quality ul li a {
	font-size: 14px;
	color: #999;
	text-decoration: none;
}

.color-quality ul li a span {
	width: 15px;
	height: 15px;
	display: block;
	background: #ff0000;
	margin: 0 auto .5em;
	border-radius: 25px;
	-webkit-border-radius: 25px;
	-moz-border-radius: 25px;
	-o-border-radius: 25px;
	-ms-border-radius: 25px;
}

.color-quality ul li a.brown span {
	background: #00008c;
}

.color-quality ul li a.purple span {
	background: #840084;
}

.color-quality ul li a.gray span {
	background: #ff00ff;
}

.color-quality {
	margin: 1em 0;
}
/*-- quantity-starts --*/
.value-minus, .value-plus, .value-minus1, .value-plus1 {
	height: 40px;
	line-height: 24px;
	width: 40px;
	margin-right: 3px;
	display: inline-block;
	cursor: pointer;
	position: relative;
	font-size: 18px;
	color: #fff;
	text-align: center;
	-webkit-user-select: none;
	-moz-user-select: none;
	border: 1px solid #b2b2b2;
	vertical-align: bottom;
}

.quantity-select .entry.value-minus:before, .quantity-select .entry.value-plus:before,
	.quantity-select .entry.value-minus1:before, .quantity-select .entry.value-plus1:before
	{
	content: "";
	width: 13px;
	height: 2px;
	background: #000;
	left: 50%;
	margin-left: -7px;
	top: 50%;
	margin-top: -0.5px;
	position: absolute;
}

.quantity-select .entry.value-plus:after, .quantity-select .entry.value-plus1:after
	{
	content: "";
	height: 13px;
	width: 2px;
	background: #000;
	left: 50%;
	margin-left: -1.4px;
	top: 50%;
	margin-top: -6.2px;
	position: absolute;
}

.value, .value1 {
	cursor: default;
	width: 40px;
	height: 40px;
	padding: 8px 0px;
	color: #A9A9A9;
	line-height: 24px;
	border: 1px solid #E5E5E5;
	background-color: #E5E5E5;
	text-align: center;
	display: inline-block;
	margin-right: 3px;
}

.quantity-select .entry.value-minus:hover, .quantity-select .entry.value-plus:hover,
	.quantity-select .entry.value-minus1:hover, .quantity-select .entry.value-plus1:hover
	{
	background: #E5E5E5;
}

.quantity-select .entry.value-minus, .quantity-select .entry.value-minus1
	{
	margin-left: 0;
}


</style>
	<!--copy-->
	<div class="copy-section">
		<div class="container">
			<div class="copy-left">
				<p>
					&copy; 2016-2017 Yaruis. All rights reserved | Design by <a
						href="https://www.facebook.com/yashjariwala96">YashJariwala@NIIT</a>
				</p>
			</div>
			<div class="copy-right">
				<img src="${img}/card.png" alt="" />
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--copy-->
<div class="footer-w3l">
						<div class="container">
							<div class="footer-grids">
								<div class="col-md-3 footer-grid">
									<h4>About </h4>
									<p>Yaruis is a one stop destination for all mobile and tablet related needs.We provide only the best of the products and also provide guaranteed returns if you dont like stuff! </p>
									<div class="social-icon">
										<a href="https://www.facebook.com/yashjariwala96"><i class="icon"></i></a>
										<a href="https://twitter.com/yashjariwala123"><i class="icon1"></i></a>
										<a href="https://plus.google.com/u/0/104461591091560011135"><i class="icon2"></i></a>
										<a href="https://in.linkedin.com/in/yash-jariwala-97051837"><i class="icon3"></i></a>
									</div>
								</div>
								<div class="col-md-3 footer-grid">
									<h4>My Account</h4>
									<ul>
										<li><a href="<c:url value='/cart/getCartId'/>">Cart</a></li>
													<!-- when user logged in -->
						<c:if test="${pageContext.request.userPrincipal.name != null }">

							<li><a>Account Logged In :
									${pageContext.request.userPrincipal.name}</a></li>
							<li><a href="<c:url value='/Logout'/>">Logout</a></li>

						</c:if>




						<!-- when user not logged in -->
						<c:if test="${pageContext.request.userPrincipal.name == null }">
							<li><a href="<c:url value='/Login'/>">Login</a></li>
							<li><a href="<c:url value='/Register'/>"> Create Account
							</a></li>
						</c:if>
									</ul>
								</div>
								<div class="col-md-3 footer-grid">
									<h4>Information</h4>
									<ul>
										<li><a href="<c:url value='/Home'/>">Home</a></li>
										<li><a href="<c:url value='/listproduct'/>">Products</a></li>
										<li><a href="<c:url value='/AboutUs'/>">About Us</a></li>
									  	<li><a href="<c:url value='/ContactUs'/>">Contact Us</a></li>
									</ul>
								</div>
								<div class="col-md-3 footer-grid foot">
									<h4>Contacts</h4>
									<ul>
										<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i><a href="<c:url value='/ContactUs'/>"> Gokhale Road,Thane India</a></li>
										<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i><a href="<c:url value='/ContactUs'/>">1800 100 200</a></li>
										<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:yaruisshopanywhere@gmail.com"> yaruisshopanywhere@gmail.com</a></li>
										
									</ul>
								</div>
							<div class="clearfix"> </div>
							</div>
							
						</div>
					</div>
					</footer>