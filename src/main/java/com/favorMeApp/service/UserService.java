package com.favorMeApp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;

import com.favorMeApp.model.User;
import com.favorMeApp.model.UserDAO;

@Service("userService") 
public class UserService {
	
	private UserDAO userDao;
	
	@Autowired
	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}

	

	public void create(User user) {
		userDao.create(user);
		
	}



	public boolean exists(String username) {
		return userDao.exists(username);
	}


	@Secured("ROLE_ADMIN")
	public List<User> getAllUsers() {
		return userDao.getAllUsers();
	}

	
}
