<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="edu.cjl.myschool.dao.GradeDaoImpl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>年级</title>
</head>
<body>
	<%
		GradeDaoImpl gdi = new GradeDaoImpl();
		Integer count = gdi.getAllCount();
		request.setAttribute("cnt", count);
	%>
	<h1>年级总数：${cnt}</h1>
</body>
</html>