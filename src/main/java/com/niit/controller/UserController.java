package com.niit.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.lightingbackend.dao.UserDAO;
import com.niit.lightingbackend.model.User;

@Controller
public class UserController {

	public static Logger log = LoggerFactory.getLogger(UserController.class);

	@Autowired
	UserDAO userDAO;

	@Autowired
	User user;
		
		

	
//		@RequestMapping(value = "/account", method = RequestMethod.POST)
//		public ModelAndView account() {
//			System.out.println("Starting of the method registerUser");
//			ModelAndView mv = new ModelAndView("account");
//			User u = new User();
//			mv.addObject("Userdata",u);
//			return mv;
//			if (userDAO.get(user.getId()) == null) {
//				user.setRole("User"); // all the users are end users by default
//				userDAO.save(user);
//				userDAO.update(user);
//				log.debug("You are successfully registered");
//				mv.addObject("successMessage", "You are successfully registered");
//			} else {
//				log.debug("User exists with this id");
//				mv.addObject("errorMessage", "User exist with this id");
//			}
//			log.debug("Ending of the method registerUser");
//			return mv;
//		}
		
		
		@RequestMapping(value = "/saveuser", method = RequestMethod.GET)
		public String adduser(@Valid @ModelAttribute("Userdata")User reg,BindingResult result)
		{
			userDAO.save(reg);
			return "login";
		}

	}