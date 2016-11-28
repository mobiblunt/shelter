/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blunt.dao;

import java.util.List;

import com.blunt.model.User;

public interface UserDao {
    
    public List<User> listUser();
    
    public void insertUser(User user);

    public void deleteUser(Integer userId);
}

