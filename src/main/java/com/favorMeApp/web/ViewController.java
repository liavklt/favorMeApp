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
	
}
