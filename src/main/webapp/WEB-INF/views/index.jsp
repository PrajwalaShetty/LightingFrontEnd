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
<!---->	
<div class="slider">
	  <div class="callbacks_container">
	     <ul class="rslides" id="slider">
	         <li>
				 <div class="banner1">				  
					  <div class="banner-info">
					  
					  </div>
				 </div>
	         </li>
	         <li>
				 <div class="banner2">
					 <div class="banner-info">
					
					 </div>
				 </div>
			 </li>
	         <li>
	             <div class="banner3">
	        	 <div class="banner-info">
	        	 
				 </div>
				 </div>
	         </li>
	      </ul>
	  </div>
  </div>
<!---->
<script src="${js}/bootstrap.js"> </script>

<div class="items">
	 <div class="container">
		 <div class="items-sec">
			 <div class="col-md-3 feature-grid">
				 <a href="product"><img src="${img}/img1.jpg" alt=""/>	
					 <div class="arrival-info">
						 <h4>Lighting #1</h4>
						 <p>Rs 12000</p>
						 <span class="pric1"><del>Rs 18000</del></span>
						 <span class="disc">[12% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href="product"><img src="${img}/img2.jpg" alt=""/>	
					 <div class="arrival-info">
						 <h4>Lighting #1</h4>
						 <p>Rs 10000</p>
						 <span class="pric1"><del>Rs 14000</del></span>
						 <span class="disc">[14% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href="product"><img src="${img}/img3.jpg" alt=""/>	
					 <div class="arrival-info">
						 <h4>Lighting #1</h4>
						 <p>Rs 8500</p>
						 <span class="pric1"><del>Rs 9500</del></span>
						 <span class="disc">[10% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href="product"><img src="${img}/img4.jpg" alt=""/>	
					 <div class="arrival-info">
						 <h4>Lighting #1</h4>
						 <p>Rs 12000</p>
						 <span class="pric1"><del>Rs 18000</del></span>
						 <span class="disc">[12% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
					 </div>
				  </a>
			 </div>
			 <div class="clearfix"></div>
		 </div>
		 <div class="items-sec btm-sec">
			 <div class="col-md-3 feature-grid">
				 <a href="product"><img src="${img}/img5.jpg" alt=""/>	
					 <div class="arrival-info">
						 <h4>Lighting #1</h4>
						 <p>Rs 500</p>
						 <span class="pric1"><del>Rs 650</del></span>
						 <span class="disc">[8% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href="product"><img src="${img}/img8.jpg" alt=""/>	
					 <div class="arrival-info">
						 <h4>Lighting #1</h4>
						 <p>Rs 400</p>
						 <span class="pric1"><del>Rs 750</del></span>
						 <span class="disc">[12% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href="product"><img src="${img}/img7.jpg" alt=""/>	
					 <div class="arrival-info">
						 <h4>Lighting #1</h4>
						 <p>Rs 800</p>
						 <span class="pric1"><del>Rs 1200</del></span>
						 <span class="disc">[12% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href="product"><img src="${img}/img6.jpg" alt=""/>	
					 <div class="arrival-info">
						 <h4>Lighting #1</h4>
						 <p>Rs 600</p>
						 <span class="pric1"><del>Rs 1200</del></span>
						 <span class="disc">[50% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
					 </div>
				  </a>
			 </div>
			 <div class="clearfix"></div>
		 </div>
	 </div>
</div>
<!---->
<div class="offers">
	 <div class="container">
	 <h3>End of Season Sale</h3>
	 <div class="offer-grids">
		 <div class="col-md-6 grid-left">
			 <a href="#">1
				 <div class="ofr-pic">
					 <img src="${img}/ofr2.jpeg" class="img-responsive" alt=""/>
				 </div>
				 <div class="ofr-pic-info">
					 <h4>Emergency Lights <br>& Led Bulds</h4>
					 <span>UP TO 60% OFF</span>
					 <p>Shop Now</p>
				 </div>
				 <div class="clearfix"></div>
			 </div></a>
		 </div>
		 <div class="col-md-6 grid-right">
			 <a href="#"><div class="offer-grid2">				 
				 <div class="ofr-pic-info2">
					 <h4>Flat Discount</h4>
					 <span>UP TO 30% OFF</span>
					 <h5>Outdoor Gate Lights</h5>
					 <p>Shop Now</p>
				 </div>
				 <div class="ofr-pic2">
					 <img src="${img}/ofr3.jpg" class="img-responsive" alt=""/>
				 </div>
				 <div class="clearfix"></div>
			 </div></a>
		 </div>
		 <div class="clearfix"></div>
	 </div>
	 </div>
</div>
<%@ include file="shared/footer.jsp" %>
</body>
</html>
