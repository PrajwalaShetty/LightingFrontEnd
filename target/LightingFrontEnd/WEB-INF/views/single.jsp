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

</div>
<!--header//-->
<div class="product">
	 <div class="container">				
		 <div class="product-price1">
			 <div class="top-sing">
				  <div class="col-md-7 single-top">	
					 <div class="flexslider">
							  <ul class="slides">
								<li data-thumb="${img}/si.jpg">
									<div class="thumb-image"> <img src="${img}/si.jpg" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>
								<li data-thumb="${img}/si2.jpg">
									 <div class="thumb-image"> <img src="${img}/si2.jpg" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>
								<li data-thumb="${img}/si3.jpg">
								   <div class="thumb-image"> <img src="${img}/si3.jpg" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li> 
							  </ul>
						</div>					 					 
					 <script src="${js}/imagezoom.js"></script>
						<script defer src="${js}/jquery.flexslider.js"></script>
						<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
						  $('.flexslider').flexslider({
							animation: "slide",
							controlNav: "thumbnails"
						  });
						});
						</script>

				 </div>	
			     <div class="col-md-5 single-top-in simpleCart_shelfItem">
					  <div class="single-para ">
						 <h4>Lighting Wood Carved Mop Glass Double Wall Lamp </h4>							
							<h5 class="item_price">$ 500.00</h5>							
							<p class="para">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, Vivamus porttitor tincidunt elementum nisi a, euismod rhoncus urna. Curabitur scelerisque vulputate diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat </p>
							<div class="prdt-info-grid">
								 <ul>
									 <li>- Brand : Fos Lighting</li>
									 <li>- Dimensions : (LXBXH) in cms of...</li>
									 <li>- Color : Brown</li>
									 <li>- Material : Wood</li>
								 </ul>
							</div>
							<div class="check">
							 <p><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>Enter pin code for delivery &amp; availability</p>
							 <form class="navbar-form">
								  <div class="form-group">
									<input type="text" class="form-control" placeholder="Enter Pin code">
								  </div>
								  <button type="submit" class="btn btn-default">Verify</button>
							 </form>
						    </div>
							<a href="#" class="add-cart item_add">ADD TO CART</a>							
					 </div>
				 </div>
				 <div class="clearfix"> </div>
			 </div>
	     </div>
		 <div class="bottom-prdt">
			 <div class="btm-grid-sec">
				 <div class="col-md-2 btm-grid">
					 <a href="product">
						<img src="${img}/p3.jpg" alt=""/>
						<h4>Product#1</h4>
						<span>$1200</span></a>
				 </div>
				 <div class="col-md-2 btm-grid">
					 <a href="product">
						<img src="${img}/p10.jpg" alt=""/>
						<h4>Product#1</h4>
						<span>$700</span></a>
				 </div>
				 <div class="col-md-2 btm-grid">
					  <a href="product">
						<img src="${img}/p5.jpg" alt=""/>
						<h4>Product#1</h4>
						<span>$1300</span></a>
				 </div>
				 <div class="col-md-2 btm-grid">
					  <a href="product">
						<img src="${img}/p4.jpg" alt=""/>
						<h4>Product#1</h4>
						<span>$9000</span></a>
				 </div>
				 <div class="col-md-2 btm-grid">
					  <a href="product">
						<img src="${img}/p2.jpg" alt=""/>
						<h4>Product#1</h4>
						<span>$450</span></a>
				 </div>
				  <div class="clearfix"></div>
			 </div>			
		 </div>
	 </div>
</div>
<%@ include file="shared/footer.jsp" %>
</body>
</html>