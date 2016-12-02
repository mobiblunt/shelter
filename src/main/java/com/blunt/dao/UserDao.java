/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blunt.dao;

import java.util.List;

import com.blunt.model.User;
import com.blunt.model.Roles;

public interface UserDao {
    
    User findById(int id);
	
    User findByEmail(String email);
    
    public List<User> listUser();
    
    public void insertUser(User user);
    
    public void insertUserToRole(Long id,int roleid);

    public void deleteUser(Integer userId);
}

