package com.rifqi.springmvctugas;

import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class CarController {
	
	@RequestMapping(value = "/addCar", method = RequestMethod.POST)
	public String submit(@Validated @ModelAttribute("car") Car car, BindingResult result, ModelMap model) {
		if(result.hasErrors()) {
			return "error";
		}
		model.addAttribute("name", car.getBrand());
        model.addAttribute("contactNumber", car.getType());
        return "index";
	}
	
}
