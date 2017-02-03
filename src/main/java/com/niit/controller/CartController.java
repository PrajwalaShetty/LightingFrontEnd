package com.niit.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.lightingbackend.dao.CartDAO;
import com.niit.lightingbackend.dao.UserDAO;
import com.niit.lightingbackend.model.Cart;
import com.niit.lightingbackend.model.UserCustomer;

@Controller
public class CartController {

	@Autowired
	private UserDAO userdao;

	@Autowired
	CartDAO cartdao;



	@RequestMapping("/**/cart/**/getCartId")
	public String getCartId(Model model) {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		System.out.println("line1");
		String id = user.getUsername();
		System.out.println("line2"+user.getUsername());
		UserCustomer user1 = userdao.get(id);
		System.out.println("line3");
		model.addAttribute("cartId", user1.getCart().getCartId());
		System.out.println("line4");
		return "Cart";
	}

	@RequestMapping("/cart/**/getCart/{cartId}")
	public @ResponseBody Cart getCartItems(@PathVariable(value = "cartId") int cartId) {
		Cart cart = cartdao.getCartByCartId(cartId);
		return cart;
	}

}