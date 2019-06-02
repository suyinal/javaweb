<%@page import="cn.edu.swu.User"%>
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
	
	<%
			List<User> users = (List<User>) request.getAttribute("users");
		%>
	 
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
					<td><%= user.getUid() %></td>
					<td><%= user.getUsername() %></td>
					<td><%= user.getPassword() %></td>
					<td><%= user.getRealname() %></td>
					<td><%= user.getGender() %></td>
					<td><%= user.getPhonenumber() %></td>
					<td><a href="deleteUser?flowId=<%=user.getUid() %>">Delete</a></td>
				</tr>
		<%		
			}
		}
		%>
	
	</table>
	
</body>
</html>