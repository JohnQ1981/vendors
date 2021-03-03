package com.vendors.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vendors.entity.Vendors;
import com.vendors.service.VendorsService;

@Controller
public class VendorsController {
	
	@Autowired
	VendorsService service;
	
	@RequestMapping("/createVendor")
	public String createVendor() {
		return "createVendor";
	}
	
	@RequestMapping ("/saveVendor")
	public String saveVendor(@ModelAttribute("vendors")Vendors vendor, ModelMap modelMap) {
		Vendors vendorSaved =service.saveVendors(vendor);
		String msg="You saved Vendor successfully by Id"+ vendorSaved.getId();
		modelMap.addAttribute(msg);
		return "createVendor";
	}
	@RequestMapping("/displayVendors")
	public String displayVendors(ModelMap modelMap) {
		List<Vendors> allVendors = service.getAllVendors();
		modelMap.addAttribute("vendors",allVendors);
		return "displayVendors";
		
		
	}
	
}
