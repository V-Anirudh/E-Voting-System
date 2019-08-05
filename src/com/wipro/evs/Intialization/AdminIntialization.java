package com.wipro.evs.Intialization;

public class AdminInitialization {
	
	private String username;
	private String password;
	
	public AdminInitialization()
	{
		super();
	}
	
	public AdminInitialization(String username,String password)
	{
		this.username=username;
		this.password=password;
	}

	public String getUsername() {
		return username;
	}

	

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setUsername(String username) {
		// TODO Auto-generated method stub
		this.username=username;
	}
	

}
