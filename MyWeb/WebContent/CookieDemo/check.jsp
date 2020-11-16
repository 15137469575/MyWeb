<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//设置编码
		request.setCharacterEncoding("utf-8");
		
		//获取用户名与密码
		String name = request.getParameter("uname");
		String pwd = request.getParameter("upwd");
		
		//将用户名加入到Cookie
		Cookie cookie = new Cookie("uname",name);
		
		cookie.setMaxAge(10);
		
		response.addCookie(cookie);
		
		response.sendRedirect("A.jsp");
	
	%>
</body>
</html>