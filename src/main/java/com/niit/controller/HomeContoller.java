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
