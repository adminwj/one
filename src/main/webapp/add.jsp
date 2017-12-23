<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/maven_test/src/main/webapp/lib/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/maven_test/src/main/webapp/lib/js.js"></script>
</head>
<body>
<h2>${emp}>>><span style="color:red">添加新员工</span></h2>
<hr>
<form action="add.do" method="post">
	<table width="30%" align="center">
		<tr>
			<td width="30%">部门</td>
			<td>
			<select name="emp">
			<c:forEach items="${addList}" var="k">
				<option value="${k.id }">${k.branchName }</option>
			</c:forEach>
				
			</select>
			
			</td>
		</tr>
		<tr>
			<td width="30%">员工名称</td><td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td width="30%">性别</td><td><input type="text" name="gender"></td>
		</tr>
		<tr>
			<td width="30%">年龄</td><td><input type="text" name="age"></td>
		</tr>
		<tr>
			<td width="30%">所属部门</td><td><input type="text" name="postion"></td>
		</tr>
		<tr>
			<td width="30%">电话</td><td><input type="text" name="tel"></td>
		</tr>
		<tr>
			<td width="30%">住址</td><td><input type="text" name="address"></td>
		</tr>
		<tr>
			<td><input type="reset" value="重置"></td>
			<td><input type="submit" value="添加"></td>
		</tr>
	</table>
</form>
	
</body>
</html>