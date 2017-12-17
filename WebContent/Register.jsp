<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script> 
  function validate()
    { 
	  
	 var fullname = document.form.fullname.value;
	 var email = document.form.email.value;
	 var username = document.form.username.value; 
	 var password = document.form.password.value;
	 var cpwd= document.form.cpwd.value;
	 
	 if (fullname == null || fullname== " ")
	 { 
		 alert("Full Name can't be blank"); 
		 return false; 
	 }
	 else if (email==null || email=="")
	 { 
		 alert("Email can't be blank"); 
		 return false; 
	 }
	
	 else if(password.length<6)
	 { 
		 alert("Password must be at least 6 characters long."); 
		 return false; 
		 } 
	 else if (password!=cpwd)
	 { 
		 alert("Confirm Password should match with the Password"); 
		 return false; 
	 } 
 } 
</script> 
</head>
<body>
<center><h2>Java Registration application </h2></center>
<form name="form" action="RegisterServlet" method="post" onsubmit="return validate()">
<fieldset>
<legend> <b>Registration:</b> </legend>
<b>FullName:</b>
<input type = "text" name ="fullname"><br/><br/>
<b>Email Id:</b>
<input type="text" name="email"/><br/><br/>  
<b>UserName:</b>
<input type="text" name="username"/><br/><br/>  
<b>Password:</b>
<input type="password" name="password"/><br/><br/>  
<b>Confirm Password:</b>
<input type="password" name="cpwd"/><br/><br/>  
<%=(request.getAttribute("errMessage") == null) ? ""
 : request.getAttribute("errMessage")%>
<input type="submit" value="Register"/>  
<input type="reset" value="Reset"></input>
</fieldset>
</form>
</body>
</html>