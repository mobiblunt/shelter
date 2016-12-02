package com.blunt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blunt.model.Roles;
import com.blunt.dao.UserRoleDao;


@Service("userProfileService")
@Transactional
public class UserProfileServiceImpl implements UserProfileService{
	
	@Autowired
	UserRoleDao dao;
	
	public Roles findById(int id) {
		return dao.findById(id);
	}

	public Roles findByType(String type){
		return dao.findByType(type);
	}

	public List<Roles> findAll() {
		return dao.findAll();
	}
}
