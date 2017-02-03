package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.lightingbackend.model.Category;
import com.niit.lightingbackend.model.Supplier;
import com.niit.lightingbackend.model.UserCustomer;

@Controller
public class HomeContoller {


	@RequestMapping("/")
	public ModelAndView home() {
		System.out.println("Start");
		ModelAndView model = new ModelAndView("index");
		return model;
	}
	@RequestMapping("index")
	public ModelAndView index() {
		ModelAndView model = new ModelAndView("index");
		return model;
	}

//	@RequestMapping("/account")
//	
//		public ModelAndView account() {
//			System.out.println("Starting of the method registerUser");
//			ModelAndView mv = new ModelAndView("account");
//			User u = new User();
//			mv.addObject("Userdata",u);
//			return mv;
//	
//	}
	/*@RequestMapping(value= "/category")
	public ModelAndView category() {
		System.out.println("inside controller");
		Category c = new Category();
		ModelAndView model = new ModelAndView("category");
     	model.addObject("Categorydata",c);
		return model;			
		}*/
	
	/*@RequestMapping(value= "/supplier")
	public ModelAndView supplier() {
		System.out.println("inside controller");
		Supplier s = new Supplier();
		ModelAndView model = new ModelAndView("supplier");
     	model.addObject("Supplierdata",s);
		return model;			
		}*/
	
/*
	@RequestMapping("/product")
	public ModelAndView product() {
		ModelAndView model = new ModelAndView("products");
		return model;
	}*/

	@RequestMapping("/contact")
	public ModelAndView Contact() {
		ModelAndView model = new ModelAndView("contact");
		return model;
	}

	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView model = new ModelAndView("login");
		return model;
	}


	

}
