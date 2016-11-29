/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blunt.service;

import java.util.List;
import com.blunt.dao.UserDao;
import com.blunt.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
@Autowired
private UserDao userDao;


@Autowired
private PasswordEncoder passwordEncoder;

public User findById(int id) {
		return userDao.findById(id);
	}

	public User findByEmail(String sso) {
		User user =userDao.findBySSO(sso);
		return user;
	}


@Override
public List<User> listUser() {
return this.userDao.listUser();
}

public void insertUser(User user) {
    user.setPassword(passwordEncoder.encode(user.getPassword()));
    this.userDao.insertUser(user);
	}

public void deleteEmployee(Integer userId) {
		this.userDao.deleteUser(userId);
	}
    
}

