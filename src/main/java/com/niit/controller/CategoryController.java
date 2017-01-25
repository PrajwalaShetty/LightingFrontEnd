package com.niit.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.lightingbackend.dao.CategoryDAO;
import com.niit.lightingbackend.model.Category;

@Controller

public class CategoryController {

	public static Logger log = LoggerFactory.getLogger(CategoryController.class);

	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping(value = "/category")
	public ModelAndView category() {
		System.out.println("inside controller");
		Category c = new Category();
		ModelAndView model = new ModelAndView("category");
		model.addObject("Catgdata", c);
		return model;
	}

	@RequestMapping(value = "/addcatg")
	public String addcategory(@Valid @ModelAttribute("Catgdata") Category cat, BindingResult result) {
		categoryDAO.save(cat);
		return "redirect:/listcategory";

	}

	@RequestMapping(value = "/listcategory")
	public String ViewUser(Model model) {
		model.addAttribute("categoryList", this.categoryDAO.list());
		return "/listcategory";

	}

	@RequestMapping(value = "/removecategory/{categoryid}")
	public String DeleteCategory(@PathVariable("categoryid") int id) {
		this.categoryDAO.delete(id);
		return "redirect:/listcategory";

	}

	@RequestMapping("/editcategory/{categoryid}")
	public String editCategory(@PathVariable("categoryid") int id, Model model) {
		model.addAttribute("Category", this.categoryDAO.get(id));
		model.addAttribute("categoryList", this.categoryDAO.list());
		return "editcategory";
	}
}