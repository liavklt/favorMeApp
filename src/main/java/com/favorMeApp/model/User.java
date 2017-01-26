package com.favorMeApp.model;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class User {
	private int id;

	@NotBlank
	@Size(min = 5, max = 15)
	@Pattern(regexp="^\\w{5,}$")
	private String username;

	@Email
	private String email;

	@NotBlank
	@Size(min = 6, max = 15)
	@Pattern(regexp = "^\\S+$")
	private String password;

	private boolean enabled;
	private String authority;

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public User() {
		// empty constructor
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
		return "User [id=" + id + ", username=" + username + ", email=" + email + ", password=" + password + "]";
	}

}
