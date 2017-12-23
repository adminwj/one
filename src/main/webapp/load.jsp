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
	<table width="80%" border="1px">
		<tr>
			<td colspan="3" align="center"><h2>部门信息</h2></td>
		</tr>
		<tr align="center">
			<td>部门编号</td><td>部门名称</td><td>查看部门详情</td>
		</tr>
		<c:forEach items="${empList}"  var="k">
			<tr align="center">
				<td>${k.id }</td>
				<td>${k.branchName}</td>
				<td><a href="showInfo.do?id=${k.id}&emp=${k.branchName}">查看</a></td>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>