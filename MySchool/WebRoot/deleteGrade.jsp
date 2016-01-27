<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="edu.cjl.myschool.dao.GradeDaoImpl"%>
<%@ page import="edu.cjl.myschool.dao.GradeDao"%>
<%@ page import="edu.cjl.myschool.entity.Grade"%>
<%@ page import="java.io.PrintWriter"%>
<%
	String id = request.getParameter("id");
	if(id == null||id.trim().equals("")){
		PrintWriter ut = response.getWriter();
		ut.flush();//清空缓存
		ut.println("<script>");//输出script标签
		ut.println("alert('删除失败！');location.href='grade.jsp'");//js语句：输出alert语句
		ut.println("</script>");//输出script结尾标签
	}else{
		int flag = 0; //1====success
		GradeDao gdi = new GradeDaoImpl();
		if (gdi.deleteGrade(new Integer(id).intValue())) {
			flag=1;		
		}
		PrintWriter ut = response.getWriter();
		ut.flush();//清空缓存
		ut.println("<script>");//输出script标签
		if(flag==0){
			ut.println("alert('删除失败！');location.href='grade.jsp'");//js语句：输出alert语句
		}else{
			ut.println("alert('删除成功！');location.href='grade.jsp'");	
		}
		ut.println("</script>");//输出script结尾标签
	}
%>