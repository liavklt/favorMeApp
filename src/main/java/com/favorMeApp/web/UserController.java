package com.favorMeApp.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.favorMeApp.model.Favor;
import com.favorMeApp.service.FavorService;

@Controller
public class UserController {

	private FavorService favorService;

	@Autowired
	public void setFavorService(FavorService favorService) {
		this.favorService = favorService;
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
