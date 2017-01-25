<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/images" var="img" />
<spring:url value="/resources/fonts" var="fonts" />


<!DOCTYPE html>
<html>
<head>
<title>Lighting A Ecommerce Category Flat Bootstrap Resposive Website Template | Home :: w3layouts</title>
<link href="${css}/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<!--theme style-->
<link href="${css}/style.css" rel="stylesheet" type="text/css" media="all" />	
<script src="${js}/jquery.min.js"></script>

<!--//theme style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Wedding Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<script src="${js}/simpleCart.min.js"> </script>
<!-- start menu -->
<link href="${css}/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${js}/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!-- /start menu -->
</head>
<body> 
<!--header-->	
<script src="${js}/responsiveslides.min.js"></script>
<script>  
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: false,
      });
    });
  </script>
  
<div class="header-top">
	 <div class="header-bottom">			
				<div class="logo">
					<h1><a href="index">Lighting</a></h1>					
				</div>
			 <!---->		 
			 <div class="top-nav">
				<ul class="memenu skyblue"><li class="active"><a href="index">Home</a></li>
					<li class="grid"><a href="#">Products</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="product">New Arrivals</a></li>
										<li><a href="product>">Home</a></li>
										<li><a href="product">Decorates</a></li>
										<li><a href="product">Accessories</a></li>
										<li><a href="product">Kids</a></li>
										<li><a href="product">Login</a></li>
										<li><a href="product">Brands</a></li>
										<li><a href="product">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Type</h4>
									<ul>
										<li><a href="product">Diwali Lights</a></li>
										<li><a href="product">Tube Lights</a></li>
										<li><a href="product">Bulbs</a></li>
										<li><a href="product">Ceiling Lights</a></li>
										<li><a href="product">Accessories</a></li>
										<li><a href="product">Lanterns</a></li>
									</ul>	
								</div>
								<div class="col1 me-one">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="product">Everyday</a></li>
										<li><a href="product">Philips</a></li>
										<li><a href="product">Havells</a></li>
										<li><a href="product">Wipro</a></li>
										<li><a href="product">Jaguar</a></li>
										<li><a href="product">Ave</a></li>
										<li><a href="product">Gold Medal</a></li>
										<li><a href="product">Anchor</a></li>
									</ul>	
								</div>
							</div>
						</div>
					</li>
					<li class="grid"><a href="#">Accessories</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="product">New Arrivals</a></li>
										<li><a href="product">Home</a></li>
										<li><a href="product">Decorates</a></li>
										<li><a href="product">Accessories</a></li>
										<li><a href="product">Kids</a></li>
										<li><a href="product">Login</a></li>
										<li><a href="product">Brands</a></li>
										<li><a href="product">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Type</h4>
									<ul>
										<li><a href="product">Diwali Lights</a></li>
										<li><a href="product">Tube Lights</a></li>
										<li><a href="product">Bulbs</a></li>
										<li><a href="product">Ceiling Lights</a></li>
										<li><a href="product">Accessories</a></li>
										<li><a href="product">Lanterns</a></li>
									</ul>	
								</div>
								<div class="col1 me-one">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="product">Everyday</a></li>
										<li><a href="product">Philips</a></li>
										<li><a href="product">Havells</a></li>
										<li><a href="product">Wipro</a></li>
										<li><a href="product">Jaguar</a></li>
										<li><a href="product">Ave</a></li>
										<li><a href="product">Gold Medal</a></li>
										<li><a href="product">Anchor</a></li>										
									</ul>	
								</div>
							</div>
						</div>
					</li>
					<li class="grid"><a href="login">Login</a></li>
					<li class="grid"><a href="contact">Contact</a></li>					
				</ul>				
			 </div>
			 <!---->
			 <div class="cart box_1">
				 <a href="checkout">
					<div class="total">
					<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div>
					<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
				</a>
				<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
			 	<div class="clearfix"> </div>
			 </div>
			 <div class="clearfix"> </div>
			 <!---->			 
			 </div>
			<div class="clearfix"> </div>