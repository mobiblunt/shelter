/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blunt.service;

import com.blunt.config.HibernateConfiguration;
import java.util.List;
import com.blunt.dao.UserDao;
import com.blunt.model.Roles;
import com.blunt.model.User;
import java.math.BigInteger;
import java.util.Arrays;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
@Autowired
private UserDao userDao;
public  Long UserID;
Session session,currentSession;
HibernateConfiguration config;
 private SessionFactory sessionFactory;

@Autowired
private PasswordEncoder passwordEncoder;

@Autowired
private UserProfileService userProfileService;

public User findById(int id) {
		return userDao.findById(id);
	}

	public User findByEmail(String email) {
		User user =userDao.findByEmail(email);
		return user;
	}


@Override
public List<User> listUser() {
return this.userDao.listUser();
}



public void insertUser(User user) {
    user.setPassword(passwordEncoder.encode(user.getPassword()));
    user.setEnabled(false);
    user.setRoles(Arrays.asList(userProfileService.findByType("USER")));
    
    this.userDao.insertUser(user);
       
	}

public void deleteEmployee(Integer userId) {
		this.userDao.deleteUser(userId);
	}
    
}

