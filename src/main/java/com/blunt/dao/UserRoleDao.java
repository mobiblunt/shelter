package com.blunt.dao;

import java.util.List;

import com.blunt.model.Roles;


public interface UserRoleDao {

	List<Roles> findAll();
	
	Roles findByType(String type);
	
	Roles findById(int id);
}
