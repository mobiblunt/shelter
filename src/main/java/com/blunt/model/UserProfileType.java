package com.blunt.model;

import java.io.Serializable;

public enum UserProfileType implements Serializable{
	USER("USER"),
	VERIFICATION_MANAGER("VERIFICATION_MANAGER"),
	ADMIN("ADMIN");
	
	String userProfileType;
	
	private UserProfileType(String userProfileType){
		this.userProfileType = userProfileType;
	}
	
	public String getUserProfileType(){
		return userProfileType;
	}
	
}
