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
<h2>${emp}>>><span style="color:red">修改</span></h2>
<hr>
<form action="update.do" method="post">
	<table width="30%" align="center">
	<c:forEach items="${empInfoLists }" var="s">
	
	
		<tr>
			<td width="30%">部门</td>
			<td>
			<select name="emp">
				<c:forEach items="${empList}" var="k">
					<option value="${k.id }">${k.branchName }</option>
				</c:forEach>
				
			</select>
			
			</td>
		</tr>
		<tr>
			<td width="30%">员工名称</td><td><input type="text" name="name" value="${s.eName }"></td>
		</tr>
		<tr>
			<td width="30%">性别</td><td><input type="text" name="gender" value="${s.gender }"></td>
		</tr>
		<tr>
			<td width="30%">年龄</td><td><input type="text" name="age" value="${s.age }"></td>
		</tr>
		<tr>
			<td width="30%">所属部门</td><td><input type="text" name="postion" value="${s.postion}"></td>
		</tr>
		<tr>
			<td width="30%">电话</td><td><input type="text" name="tel" value="${s.tel }"></td>
		</tr>
		<tr>
			<td width="30%">住址</td><td><input type="text" name="address" value="${s.address }"></td>
		</tr>
		<tr>
			<td><input type="submit" value="修改"></td>
		</tr>
		</c:forEach>
	</table>
</form>
	
</body>
</html>