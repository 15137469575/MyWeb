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
			//response.sendRedirect("success.jsp");  重定向，导致数据丢失
			
			//页面跳转，请求转发，可以获取数据且地址栏没有改变
			request.getRequestDispatcher("success.jsp").forward(request,response);
		}else{
			//登陆失败
			out.print("用户名或密码有误！");
		}
	
	%>
</body>
</html>