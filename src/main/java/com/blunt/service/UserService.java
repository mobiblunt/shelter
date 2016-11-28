/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blunt.service;

import java.util.List;

import com.blunt.model.User;

public interface UserService {
    
    public void insertUser(User User);
    
    public void deleteEmployee(Integer employeeId);
    
    public List<User> listUser();
}
