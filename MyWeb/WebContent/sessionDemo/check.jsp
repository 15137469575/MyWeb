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
		
		if(name.equals("zs") && pwd.equals("asd")){
			//登陆成功
			session.setAttribute("uname",name);
			session.setAttribute("upwd",pwd);
			// session.setMaxInactiveInterval(60);
			
			System.out.println("sessionId"+session.getId());	
			Cookie cookie = new Cookie("unsme",name);
			response.addCookie(cookie);
			
			
			
			request.getRequestDispatcher("welcome.jsp").forward(request,response);
			
		}else{
			//登陆失败，重新登录
			response.sendRedirect("login.jsp");
		}
	
	%>
</body>
</html>