package com.favorMeApp.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewController {
	@RequestMapping(value= { "/", "/welcome"} )
	public ModelAndView helloWorld() {
		 
		String message = "<h1><br>Ask your friends for a favor... or return the favor! <br></h1>";
				
		return new ModelAndView("welcome", "message", message);
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(Model model, String error, String logout){
		if (error!=null)
			model.addAttribute("error", "Your input was invalid. Please try again.");
		if (logout!=null)
			model.addAttribute("logout_message", "You have logged out successfully.");
		//String login_message = "<h1><br>Please log in <br></h1>";
		return "login";
	}
	
	@RequestMapping("/register")
	public ModelAndView register_page(){
		String register_message = "<h1><br>Register now!<br></h1>";
		return new ModelAndView("register","register_message", register_message);
	}
	
}
