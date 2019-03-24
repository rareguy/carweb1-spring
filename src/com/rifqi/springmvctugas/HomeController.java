package com.rifqi.springmvctugas;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public ModelAndView showMyPage() {
        return new ModelAndView("index", "car", new HatchbackCar());
    }
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String submit(@Validated @ModelAttribute("car") HatchbackCar car, BindingResult result, ModelMap model) {
		if(result.hasErrors()) {
			return "error";
		}
		model.addAttribute("brand", car.getBrand());
        model.addAttribute("type", car.getType());
        return "index";
	}
	
	@RequestMapping(value = "/addCar", method = RequestMethod.POST)
	public String submitOtherPage(@Validated @ModelAttribute("car") HatchbackCar car, BindingResult result, ModelMap model) {
		if(result.hasErrors()) {
			return "error";
		}
		model.addAttribute("brand", car.getBrand());
        model.addAttribute("type", car.getType());
        return "addCar";
	}
	
	@RequestMapping("/processForm")
	public String processForm(HttpServletRequest request, Model model) {
		
		String message = request.getParameter("message");
		
		String nesukan = message.toUpperCase();
		
		model.addAttribute("message", nesukan);
		
		return "processForm";
	}
	
}
