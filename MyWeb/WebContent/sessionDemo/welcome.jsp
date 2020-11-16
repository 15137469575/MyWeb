<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	欢迎你：
	<%
		String name = (String)session.getAttribute("uname");
		//如果用户没有登录应该跳回登录页
		if(name!=null){
			out.print(name);
	%>
			<a href="invalidate.jsp">注销</a>
	<%
		}else{
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>