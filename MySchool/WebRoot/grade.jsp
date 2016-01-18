<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="edu.cjl.myschool.dao.GradeDaoImpl" %>
<%@ page import="edu.cjl.myschool.util.PageTool" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
		PageTool pt = new PageTool();
		pt.setRows(count);
		int index =1;
		if(request.getParameter("index")!=null){
			index = new Integer(request.getParameter("index")).intValue();
		}
		pt.setIndex(index);
		pt.setSize(2);
		request.setAttribute("page", pt);
	%>
	<h1>年级总数：${cnt}</h1>
	<div>
		<a href="grade.jsp?index=1">第一页</a>&nbsp;&nbsp;
		<c:if test="${page.index>1}">
			<a href="grade.jsp?index=${page.index-1}">上一页</a>&nbsp;&nbsp;
		</c:if>
		<c:if test="${page.index < page.totalPage}">
			<a href="grade.jsp?index=${page.index+1}">下一页</a>&nbsp;&nbsp;
		</c:if>
		
		<a href="grade.jsp?index=${page.totalPage}">末页</a>
	</div>
</body>
</html>