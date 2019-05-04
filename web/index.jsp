<%@page import="cn.edu.swu.domain.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Interface</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<!-- -->
</head>
<body>
<%
Object u=session.getAttribute("user");
if(u!=null){
	response.sendRedirect("users.jsp");
}
	
%>

<!-- contact-form -->	
<div class="message warning">
<div class="inset">
	<div class="login-head">
		<h1>Welcome to the login interface</h1>
		 <div class="alert-close"> </div> 			
	</div>
		<form action="LoginServlet" method="post">
			<li>
				<input type="text" class="text" name="username"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}"><a href="#" class=" icon user"></a>
			</li>
				<div class="clear"> </div>
			<li>
				<input type="password" name="password"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"> <a href="#" class="icon lock"></a>
			</li>
			     <input type="checkbox" name="autoLogin" value="autoLogin">Remerber
			<div class="clear"> </div>
			<div class="submit">
				<input type="submit" onclick="myFunction()" value="Sign in" >&nbsp;
				<h4><a href="regist.jsp">No account?sign up for a</a></h4>				
						  <div class="clear">  </div>	
			</div>
				
		</form>
		</div>					
	</div>
	</div>
	<div class="clear"> </div>
</body>
</html>