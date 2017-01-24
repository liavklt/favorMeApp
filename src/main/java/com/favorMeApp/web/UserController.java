package com.favorMeApp.web;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.favorMeApp.model.Favor;
import com.favorMeApp.model.User;
import com.favorMeApp.service.FavorService;
import com.favorMeApp.service.UserService;

@Controller
public class UserController {

	private UserService userService;
	private FavorService favorService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/users")
	public String showUsers(Model model) {

		List<User> users = userService.getCurrent();
		model.addAttribute("users", users);
		return "users";
	}

	@RequestMapping("/createfavor")
	public String register(Model model) {
		model.addAttribute("favor", new Favor());
		return "createfavor";
	}

	@RequestMapping(value = "/docreatefavor", method = RequestMethod.POST)
	public String doCreate(Model model, @Valid Favor favor) {
		favorService.create(favor);
		return "favorcreated";
	}

}
