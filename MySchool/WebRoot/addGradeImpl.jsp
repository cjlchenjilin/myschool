<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="edu.cjl.myschool.dao.GradeDaoImpl"%>
<%@ page import="edu.cjl.myschool.dao.GradeDao"%>
<%@ page import="edu.cjl.myschool.entity.Grade"%>
<%@ page import="java.io.PrintWriter"%>
<%
	String name = request.getParameter("name");
	if (name == null || name.trim() == "") {
		PrintWriter ut = response.getWriter();
		ut.flush();//清空缓存
		ut.println("<script>");//输出script标签
		ut.println("alert('此用户名为空，请重新输入！');location.href='addGrade.jsp'");//js语句：输出alert语句
		ut.println("</script>");//输出script结尾标签
	} else {
		GradeDao gdi = new GradeDaoImpl();
		if (gdi.add(new Grade(name))) {
			response.sendRedirect("grade.jsp");
		} else {
			request.setAttribute("name", name);
			request.getRequestDispatcher("addGrade.jsp").forward(request, response);
		}
	}
%>