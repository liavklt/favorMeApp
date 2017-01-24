package com.favorMeApp.service;

import java.util.List;

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

	public List<User> getCurrent() {
		return userDao.getUsers();
	}

	public void create(User user) {
		userDao.create(user);
		
	}

	
}
