package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.lightingbackend.dao.ProductDAO;
import com.niit.lightingbackend.model.Product;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO pdao;

	@RequestMapping("/newproduct")
	public ModelAndView productadmin() {
		Product p = new Product();
		ModelAndView model = new ModelAndView("newproduct");
		model.addObject("Proddata", p);
		model.addObject("Catgname", pdao.listcategoryname());
		model.addObject("Supname", pdao.listsuppliername());
		return model;
	}

	@RequestMapping(value = "/addproduct")
	public String addprod(@Valid @ModelAttribute("Proddata") Product reg, HttpServletRequest request,
			BindingResult result) {


		MultipartFile image = reg.getImage();
		if (image != null && !image.isEmpty()) {
			Path path = Paths
					.get("F:\\Temp\\LightingFrontEnd\\src\\main\\webapp\\resources\\images\\"
							+ reg.getProductname() + ".jpg");
			try {
				image.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		pdao.save(reg);
		return "redirect:/listnewproduct";

	}

	@RequestMapping(value = "/listnewproduct")
	public String ViewProducts(Model model) {
		model.addAttribute("productList", this.pdao.list());
		return "/listnewproduct";
	}

	@RequestMapping(value = "/removeprod/{productid}")
	public String DeleteProducts(@PathVariable("productid") int id) {
		this.pdao.delete(id);
		return "redirect:/listnewproduct";

	}

	@RequestMapping("/editnewproduct/{productid}")
	public String editProducts(@PathVariable("productid") int id, Model model) {
		model.addAttribute("Product", this.pdao.get(id));
		model.addAttribute("productList", this.pdao.list());
		model.addAttribute("Catgname", pdao.listcategoryname());
		model.addAttribute("Supname", pdao.listsuppliername());
		return "editnewproduct";
	}

	

}
