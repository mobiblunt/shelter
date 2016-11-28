$(document).ready(function() {
$("#userForm").validate({
//specify the validation rules
rules: {
firstName: "required",
lastName: "required",
gender: "required",
dateOfBirth: "required",
mobilePhone: "required",
city: "required",
state: "required",
country: "required",
email: {
required: true,
email: true //email is required AND must be in the form of a valid email address
},
password: {

minlength: 6
},
confPassword:{
    
    minlength: 6,
    equalTo : "#password"
    
}
},
 
//specify validation error messages
messages: {
firstname: "First Name field cannot be blank!",
lastname: "Last Name field cannot be blank!",
gender: "Gender field cannot be blank!",
dateOfBirth: "Date of birth field cannot be blank!",
mobilePhone: "Mobile number field cannot be blank!",
city: "City cannot be blank!",
state: "state cannot be blank!",
country: "country cannot be left blank",
password: {
required: "Password field cannot be blank!",
minlength: "Your password must be at least 6 characters long"
},
confPassword:{
    required: " Confirm Password field cannot be blank!",
    minlength: "Your password must be at least 6 characters long"
},
email: "Please enter a valid email address"
},
 
submitHandler: function(form){
form.submit();
}
 
});
});

