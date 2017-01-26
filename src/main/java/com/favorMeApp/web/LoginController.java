package com.favorMeApp.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.DuplicateKeyException;
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

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

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
	public String doRegister(@Valid User user, BindingResult result) {

		if (result.hasErrors()) {

			return "register";
		}
		user.setEnabled(true);
		user.setAuthority("user");

		if (userService.exists(user.getUsername())) {

			result.rejectValue("username", "DuplicateKey.user.username");
			return "register";
		}

		userService.create(user);

		return "usercreated";
	}
}