<%@page contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>登陆</title>
</head>
<body>
<center>
	<h1>登陆范例――用户名及密码固定</h1>
	<hr>
	<br>
	<br>
	<%
		// 接收请求的内容
		String name = request.getParameter("user") ;
		String password = request.getParameter("pass") ;

		// System.out.println(name) ;
		// System.out.println(password) ;
	%>
	<%
		// 判断用户名及密码
		// if("mldn"==name&&"lxh"==password)
		if("admin".equals(name)&&"admin".equals(password))		
		{
			// 合法用户
	%>
			<jsp:forward page="login_success.jsp"/>
	<%
		}
		else
		{
			// 非法用户
	%>
			<jsp:forward page="login_failure.jsp"/>
	<%
		}
	%>
</center>
</body>
</html>
