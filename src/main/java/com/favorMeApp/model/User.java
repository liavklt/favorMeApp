package com.favorMeApp.model;

import javax.validation.constraints.Size;

public class User {
	private int id;

	@Size(min = 5, max = 100, message = "Username must be between 5 and 100 chars.")
	private String username;
	private String email;
	@Size(min = 6, max = 10, message = "Password must be between 6 and 10 chars.")
	private String password;
	

	public User() {
		//empty constructor
	}

	public User(String username, String email, String password) {

		this.username = username;
		this.email = email;
		this.password = password;
	}

	public User(int id, String username, String email, String password) {
		
		this.id = id;
		this.username = username;
		this.email = email;
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", email=" + email +", password=" + password + "]";
	}

}
