<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	hello index1 你好
	
	<%="当前项目的虚拟路径："+application.getContextPath()+"<br/>" %>
	<%="虚拟路径对应的绝对路径："+application.getRealPath("/MyWeb")+"<br/>" %>
	
	<%!
	public String time;
	public void one(){
		Date date = new Date();
		time = "当前时间是："+date;
	}
	%>
	
	<%
	one();
	out.print(time);
	%>>
</body>
</html>