package com.favorMeApp.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewController {
	@RequestMapping(value= { "/", "/welcome"} )
	public ModelAndView helloWorld() {
		 
		String message = "<h1><br>Ask your friends for a favor... or return the favor! <br></h1>";
				
		return new ModelAndView("welcome", "message", message);
	}
	
	@RequestMapping("/login")
	public ModelAndView login_page(){
		String login_message = "<h1><br>Please log in <br></h1>";
		return new ModelAndView("login", "login_message", login_message);
	}
	
	@RequestMapping("/register")
	public ModelAndView register_page(){
		String register_message = "<h1><br>Register now!<br></h1>";
		return new ModelAndView("register","register_message", register_message);
	}
	
}
