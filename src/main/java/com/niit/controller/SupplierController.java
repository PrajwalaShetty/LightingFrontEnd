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

import com.niit.lightingbackend.dao.SupplierDAO;
import com.niit.lightingbackend.model.Supplier;


@Controller

public class SupplierController {
	
	public static Logger log = LoggerFactory.getLogger(SupplierController.class);
	
@Autowired
SupplierDAO supplierDAO;


	
	@RequestMapping(value= "/supplier")
	public ModelAndView supplier() {
		System.out.println("inside controller");
		Supplier s = new Supplier();
		ModelAndView model = new ModelAndView("supplier");
		model.addObject("Supgdata",s);
		return model;	
	}
	
	@RequestMapping(value = "/addsupg")
	public String addSupplier(@Valid @ModelAttribute("Supgdata") Supplier sup,BindingResult result)
	{	
		supplierDAO.save(sup);
		return "redirect:/listsupplier";
		
	}

	
	@RequestMapping(value = "/listsupplier")
	public String ViewUser1(Model model) {
		model.addAttribute("supplierList",this.supplierDAO.list());
		return "/listsupplier";
	}
	

	@RequestMapping(value = "/removesupplier/{supplierid}")
	public String DeleteSupplier(@PathVariable("supplierid") int id) {
		this.supplierDAO.delete(id);
		return "redirect:/listsupplier";

	}
	
	@RequestMapping("/editsupplier/{supplierid}")
	public String editSupplier(@PathVariable("supplierid") int id, Model model) {
		model.addAttribute("Supplier", this.supplierDAO.get(id));
		model.addAttribute("supplierList", this.supplierDAO.list());
		return "editsupplier";
	}
	

	

}
