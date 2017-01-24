package com.favorMeApp.web;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.favorMeApp.model.User;
import com.favorMeApp.service.UserService;

@Controller
public class UserController {

	private UserService userService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/users")
	public String showUsers(Model model) {
		// userService.throwTestException();
		List<User> users = userService.getCurrent();
		model.addAttribute("users", users);
		return "users";
	}

	@RequestMapping("/register")
	public String register(Model model) {
		model.addAttribute("user", new User());
		return "register";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/welcome")
	public String welcome() {
		return "welcome";
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
