<%@page contentType="text/html;charset=utf-8"%>
<html>
<head>
	<title>登陆</title>
</head>
<body>
<center>
	<h2>登陆成功</h2>
	<h3>欢迎<font color="red" size="15">
		<%=request.getParameter("user")%>
	</font>光临！！！</h3>
</center>
</body>
</html>
