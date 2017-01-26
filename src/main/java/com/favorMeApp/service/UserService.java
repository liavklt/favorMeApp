package com.favorMeApp.service;

import org.springframework.beans.factory.annotation.Autowired;
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

	
}
