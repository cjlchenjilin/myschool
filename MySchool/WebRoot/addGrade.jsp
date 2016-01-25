<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增年级</title>
<script type="text/javascript">
	function check(){
		var name = document.getElementById("name").value;
		if(name == "" || name == null){
			alert("年级名不能为空！！");
			return false;
		}else{
			return true;
		}
	}
</script>
</head>
<body>
	<h1>新增年级</h1>
	<form action="addGradeImpl.jsp" method="post" onsubmit="return check();">
		<table>
			<tr>
				<td>年级名称：</td>
				<td><input type="text" id="name" name="name" value="${name}" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="reset" value="重置" />&nbsp; <input
					type="submit" value="新增" /></td>
			</tr>
		</table>
	</form>
</body>
</html>