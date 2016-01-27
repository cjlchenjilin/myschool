<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="edu.cjl.myschool.dao.GradeDaoImpl"%>
<%@ page import="edu.cjl.myschool.dao.GradeDao"%>
<%@ page import="edu.cjl.myschool.entity.Grade"%>
<%@ page import="java.io.PrintWriter"%>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	Grade grade = new Grade(new Integer(id).intValue(),name); 
	if(name == null||name.trim().equals("")){
		PrintWriter ut = response.getWriter();
		ut.flush();//清空缓存
		ut.println("<script>");//输出script标签
		ut.println("alert('此年级名为空，请重新输入！');location.href='update.jsp?id="+id+"'");//js语句：输出alert语句
		ut.println("</script>");//输出script结尾标签
	}else{
		int flag = 0; //1====success
		GradeDao gdi = new GradeDaoImpl();
		if (gdi.update(grade)) {
			flag=1;
			response.sendRedirect("grade.jsp");
		} else {
			request.setAttribute("grade",grade);
			request.setAttribute("flag", flag);
			request.getRequestDispatcher("update.jsp").forward(request, response);
		}
	}
%>