package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.lightingbackend.dao.CartDAO;
import com.niit.lightingbackend.dao.CustomerOrderDAO;
import com.niit.lightingbackend.model.Cart;
import com.niit.lightingbackend.model.CustomerOrder;
import com.niit.lightingbackend.model.UserCustomer;

@Controller
public class OrderController {
	
	@Autowired
	CartDAO cartdao;
	
	@Autowired
	CustomerOrderDAO customerorderdao;
	

    @RequestMapping("/order/{cartId}")
    public String createOrder(@PathVariable("cartId") int cartId){
        CustomerOrder customerOrder = new CustomerOrder();
        Cart cart = cartdao.getCartByCartId(cartId);
        //UPDATE CARTID FOR CUSTOMERORDER - SET CARTID
        customerOrder.setCart(cart);


        UserCustomer customer = cart.getUsercustomer();
        //SET CUSTOMERID
        customerOrder.setUser(customer);
        //SET BILLINGADDRESSID
        customerOrder.setBillingAddress(customer.getBillingAddress());
        //SET SHIPPINGADDRESSID
        customerOrder.setShippingAddress(customer.getShippingAddress());

        customerorderdao.addCustomerOrder(customerOrder);
        return "redirect:/checkout?cartId=" + cartId;

    }

}