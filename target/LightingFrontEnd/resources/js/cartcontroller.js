var myapp = angular
		.module("myapp", [])
		.controller(
				'productsController',
				function($scope, $http) {
				
					$scope.listProduct = function() {
						alert('List product');
						$http
								.get(
										'/LightingFrontEnd/listproductsjson')
								.success(function(data) {
									 alert('after contol call');

									$scope.products = data;
									console.log(data);
									console.log('after control call1');
								})
					}

					$scope.addToCart = function(productid) {

						$http.put(
								'/LightingFrontEnd/cart/add/'
										+ productid).success(function() {

							alert('Added Successfully to the cart!');
						})
					}

					$scope.refreshCart = function() {
						$http.get(
								'/LightingFrontEnd/cart/getCart/'
										+ $scope.cartId).success(
								function(data) {
									$scope.cart = data;
								})
					}

					$scope.getCart = function(cartId) {
						$scope.cartId = cartId;
						// $scope.refreshCart(cartId);
						$scope.refreshCart();
						// alert('Successfully refreshed the cart!');
					}

					$scope.removeFromCart = function(cartitemid) {
						$http.put(
								'/LightingFrontEnd/cart/removecartitem/'
										+ cartitemid).success(function() {
							$scope.refreshCart();
							alert('Removed Successfully from the cart!');
						})
					}

					$scope.clearCart = function() {

						$http.put(
								'/LightingFrontEnd/cart/removeAllItems/'
										+ $scope.cartId)

						.success(function() {

							$scope.refreshCart();
							alert('Successfully cleared the cart!');
						});
					}

					$scope.calculateGrandTotal = function() {
						var grandTotal = 0
						for (var i = 0; i < $scope.cart.cartItems.length; i++) {
							grandTotal = grandTotal
									+ $scope.cart.cartItems[i].totalprice;
							;
						}
						return grandTotal;
					}
				});
