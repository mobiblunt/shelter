/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blunt.controller;




import com.blunt.model.Roles;
import com.blunt.model.User;
import com.blunt.service.UserProfileService;
import com.blunt.service.UserService;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
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
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping( value ={"/", "/Blunt"})
@SessionAttributes("roles")
public class HomeController {
    
    @Autowired
    private UserService userService;
    
        @Autowired
	UserProfileService userProfileService;
	
	@Autowired
	MessageSource messageSource;

	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;
	
	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;
        
        
	
    
    
   
    

        @RequestMapping(method=GET)
        public String home() {
            return "index";
        }


    
    
    
    @RequestMapping(value = "/newuser", method = RequestMethod.GET)
    public ModelAndView addUser(ModelMap model) {
        return new ModelAndView("registration", "command",new User());
        
    }
    
    @RequestMapping(value = "/userprofile", method = RequestMethod.GET)
	public String userProfile(ModelMap model, User user) {
        
		model.addAttribute("user", user);
		model.addAttribute("loggedinuser", getPrincipal());
		return "userprofile";
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
    
    private String getPrincipal(){
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails)principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}
    
    @RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null){    
			//new SecurityContextLogoutHandler().logout(request, response, auth);
			persistentTokenBasedRememberMeServices.logout(request, response, auth);
			SecurityContextHolder.getContext().setAuthentication(null);
		}
		return "redirect:/login?logout";
	}
    
    @ModelAttribute("roles")
	public List<Roles> initializeProfiles() {
		return userProfileService.findAll();
	}
    
    private boolean isCurrentAuthenticationAnonymous() {
	    final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    return authenticationTrustResolver.isAnonymous(authentication);
	}

       

}   

