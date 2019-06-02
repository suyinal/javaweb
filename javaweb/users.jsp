<%@page import="cn.edu.swu.domain.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<h2>登陆成功</h2>
	<h3>欢迎<font color="red" size="15">
		<%=request.getParameter("username")%>
	</font>光临！！！</h3>
</center>
	
	<%
			List<User> users = (List<User>) request.getAttribute("users");
		%>
<center>
	<table border="1" cellpadding="10" cellspacing="0">

		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Pwd</th>
			<th>Realname</th>
			<th>Gender</th>
			<th>Phonenumber</th>
		</tr>
		
		<% 
		if(users!=null){
			for(User user: users){
		%>
				<tr>
					<td><%= user.getId() %></td>
					<td><%= user.getName() %></td>
					<td><%= user.getPwd() %></td>
					<td><%= user.getRealname() %></td>
					<td><%= user.getGender() %></td>
					<td><%= user.getPhonenumber() %></td>
					<td><a href="deleteUser?flowId=<%=user.getId() %>">Delete</a></td>
				</tr>
		<%		
			}
		}
		%>
	
	</table>
</center>
</body>
</html>