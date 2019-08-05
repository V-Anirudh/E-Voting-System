package com.wipro.evs.Intialization;

public class CandidateIntialization {

	private String fullname;
	private String party_name;
	private String email;
	

	private String gender_final;
	private String state;
	private String constituency;
	private String date;
	private int year;
	private long adhar_no;
	private String password;
	private String election_type;
	
	public CandidateIntialization()
	{
		
		super();
	}
	
	public CandidateIntialization(String fullname,String gender_final,String email,String party_name,String state,String constituency,int year,String election_type,long adhar_no, String password)
	
	{
		this.fullname=fullname;
		this.gender_final=gender_final;
		this.email=email;
		this.party_name=party_name;
		this.state=state;
		this.constituency=constituency;
		this.year=year;
		this.election_type=election_type;
		this.adhar_no=adhar_no;
		this.password=password;
		
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getParty_name() {
		return party_name;
	}

	public void setParty_name(String party_name) {
		this.party_name = party_name;
	}


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public long getAdhar_no() {
		return adhar_no;
	}

	public void setAdhar_no(long adhar_no) {
		this.adhar_no = adhar_no;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getElection_type() {
		return election_type;
	}

	public void setElection_type(String election_type) {
		this.election_type = election_type;
	}
	
}
