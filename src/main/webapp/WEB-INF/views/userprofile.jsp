<%-- 
    Document   : userprofile
    Created on : Dec 6, 2016, 2:35:10 PM
    Author     : Spunk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
    </head>
    <body>
        <span>Dear <strong>${loggedinuser}</strong>, Welcome to Bed and Shelter.</span> <span class="floatRight"><a href="<c:url value="/logout" />">Logout</a></span>
    </body>
</html>
