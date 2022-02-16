package com.data;

public class UserData {
	private String name;
	private String email;
	private int mob;
	private String password;
	private String SecurityQuestion;
	private String answer;
	
	public String getanswer() {
		return answer;
	}

	public void setanswer(String sqn_q) {
		this.answer = sqn_q;
	}

	 public String getSecurityQuestion() { 
		  return SecurityQuestion;
		  }
	  
	  public void setSecurityQuestion(String sqn) {
		  this.SecurityQuestion = sqn; 
		  }
	 
	public UserData() {}
	public UserData(String name, String mail, int mob, String password, String SecurityQuestion, String answer) {
		this.name = name;
		this.email = mail;
		this.mob = mob;
		this.password = password;
		this.SecurityQuestion=SecurityQuestion;
		this.answer=answer;
	
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMail() {
		return email;
	}

	public void setMail(String mail) {
		this.email = mail;
	}

	public int getMob() {
		return mob;
	}

	public void setMob(int mob) {
		this.mob = mob;
	}

	
	public String getPassword() {
		return password;
	}

	public void setPasword(String pasword) {
		this.password = password;
	}
	

	
	
	
	
	

}
