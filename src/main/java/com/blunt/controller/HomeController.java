/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blunt.controller;




import com.blunt.model.User;
import com.blunt.service.UserService;
import java.io.IOException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.ui.Model;

@Controller
@RequestMapping( value ={"/", "/Blunt"})
public class HomeController {
    
    @Autowired
    private UserService userService;
    
    
   
    
//    @RequestMapping( value = "/",method = RequestMethod.GET)
//    public String listEmployees(ModelMap model) {
//    model.addAttribute("employeesList", userService.listUser());
//    return "employee";
//    }
@RequestMapping(method=GET)
public String home() {
return "index";
}
    
    
    
    @RequestMapping(value = "/newuser", method = RequestMethod.GET)
    public ModelAndView addUser(ModelMap model) {
        return new ModelAndView("registration", "command",new User());
        
    }
    
    @RequestMapping(value = "/updateuser", method = RequestMethod.POST)
    public String updateUser(@ModelAttribute("command") @Valid User user,BindingResult result, ModelMap model) {
         model.addAttribute("user",user);
          if(result.hasErrors()){
              return "registration";
          }
          else{
              this.userService.insertUser(user);
          model.addAttribute("success", "User " + user.getFirstName() + " "+ user.getLastName() + " registered successfully");
    
          return "registrationsuccess";
          }
          
    }
//    @RequestMapping(value = "/delete/{empId}", method = RequestMethod.GET)
//    public String deleteEmployee(@PathVariable("empId") Integer empId,ModelMap model) {
//    this.employeeService.deleteEmployee(empId);
//    model.addAttribute("employeesList", employeeService.listEmployee());
//    return "employee";
//    }
       
//    @RequestMapping("/testIOException")
//    public String testIOException(ModelMap model) throws IOException {
//        if (true) {
//            throw new IOException("This is an IO Exception");
//        }
//        return "hello";
//    }
//    @RequestMapping("/testGenericException")
//    public String testGenericException(ModelMap model) throws IOException {
//    if (true) {
//    // add custom code and message that appear to error page
//    throw new GenericException("R333", "This is a custom message");
//    }
//    return "hello";
//    }
}   

