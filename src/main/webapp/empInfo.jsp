<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>员工信息查询>>><span style="color:red">${user}</span></h2>
<form action="update.do" method="post">
<table width="30%" align="center">
	<c:forEach items="${empInfoList }" var="k">
		<tr>
			<td width="30%">员工名称</td><td><input type="text" name="name" value="${k.eName }"></td>
		</tr>
		<tr>
			<td width="30%">性别</td><td><input type="text" name="gender" value="${k.gender }"></td>
		</tr>
		<tr>
			<td width="30%">年龄</td><td> <input type="text" name="age" value="${k.age }"></td>
		</tr>
		<tr>
			<td width="30%">所属部门</td><td> <input type="text" name="postion" value="${k.postion}"></td>
		</tr>
		<tr>
			<td width="30%">电话</td><td> <input type="text" name="tel" value="${k.tel }"></td>
		</tr>
		<tr>
			<td width="30%">住址</td><td>  <input type="text" name="address" value="${k.address }"></td>
		</tr>
	</c:forEach>
	<tr>
		<td><input type="submit" value="修改"></td>
	</tr>
</table>
</form>
</body>
</html>