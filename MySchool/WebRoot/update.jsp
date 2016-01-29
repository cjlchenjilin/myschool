<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改年级名称</title>
<script type="text/javascript">
	function check() {
		var name = document.getElementById("name").value;
		if (name == "" || name == null) {
			alert("年级名不能为空！！");
			return false;
		} else {
			return true;
		}
	}
</script>
</head>
<body>
	<h1>修改年级</h1>
	<c:if test="${flag eq 0 }">
		<h2 style="color:red;">修改失败！！</h2>
	</c:if>
	
	<form action="ChangeGradeServlet" method="post">
		<table>
			<tr>
				<td>年级编号：</td>
				<td><input style="color: red;" type="text" readonly="readonly"
					id="id" name="id" value="${grade.id}" /></td>
			</tr>
			<tr>
				<td>年级名称：</td>
				<td><input type="text" id="name" name="name"
					value="${grade.name}" />
					<span id="tip">${tip}</span>
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="reset" value="重置" />&nbsp; <input
					type="submit" value="修改" /></td>
			</tr>
		</table>
	</form>
</body>
</html>