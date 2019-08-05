package com.wipro.evs.Intialization;

import java.sql.Date;

public class VoterInitialization {

	private String fullname;
	private String email;
	private String address;
	private String gender_final;
	private String state;
	private String constituency;
	private String date;
	private String adhar_no;
	private String password;
	
	
	
	public VoterInitialization()
	{
		super();
	}
	
	public VoterInitialization(String fullname,String email,String address,String gender_final,String state,String constituency,String date,String adhar_no,String password )
	{
	this.fullname=fullname;
	this.email=email;
	this.address=address;
	this.gender_final=gender_final;
	this.state=state;
	this.constituency=constituency;
	this.date=date;
	this.adhar_no=adhar_no;
	this.password=password;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender_final() {
		return gender_final;
	}

	public void setGender_final(String gender_final) {
		this.gender_final = gender_final;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getConstituency() {
		return constituency;
	}

	public void setConstituency(String constituency) {
		this.constituency = constituency;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getAdhar_no() {
		return adhar_no;
	}

	public void setAdhar_no(String string) {
		this.adhar_no = string;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
