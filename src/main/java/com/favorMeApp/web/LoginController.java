package com.favorMeApp.web;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.favorMeApp.model.User;
import com.favorMeApp.service.UserService;

@Controller
public class LoginController {
	private UserService userService;

	@RequestMapping("/login")
	public String showlogin() {
		return "login";
	}

	@RequestMapping("/welcome")
	public String welcome() {
		return "welcome";
	}

	@RequestMapping("/register")
	public String register(Model model) {
		model.addAttribute("user", new User());
		return "register";
	}

	@RequestMapping(value = "/doregister", method = RequestMethod.POST)
	public String doRegister(Model model, @Valid User user, BindingResult result) {

		if (result.hasErrors()) {

			return "register";
		}

		userService.create(user);
		return "usercreated";
	}
}
