package com.blunt.service;

import java.util.List;

import com.blunt.model.Roles;


public interface UserProfileService {

	Roles findById(int id);

	Roles findByType(String type);
	
	List<Roles> findAll();
	
}
