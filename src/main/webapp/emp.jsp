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
	<h2>查询部门>>><span style="color:red">${emp}</span></h2>
	<hr>
	<table width="80%" border="1px">
		<tr align="center">
			<td>员工编号</td><td>员工名称</td><td>性别</td><td>查看员工详情</td><td>删除</td><td>修改 </td>
		</tr>
		<c:forEach items="${infoList}" var="k">
			<tr align="center">
				<td>${k.eid }</td>
				<td>${k.eName }</td>
				<td>${k.gender }</td>
				<td><a href="empInfo.do?eid=${k.eid }&user=${k.eName}">查看</a></td>
				<td><a href="delEmpInfo.do?eid=${k.eid }" onclick="return confirm('确定要删除该数据吗？')">删除</a></td>
				<td><a href="empInfos.do?user=${k.eName}&eids=${k.eid}">修改</a></td>
			</tr>
		
		</c:forEach>
		<tr>
			<td colspan="5" align="center">
				<c:if test="${page==1}">
					首页&nbsp;&nbsp;上一页&nbsp;&nbsp;
				</c:if>
				<c:if test="${page!=1 }">
					<a href="change.do?index=1&ids=${ids}">首页</a>&nbsp;&nbsp;
					<a href="change.do?index=${page-1}&ids=${ids}">上一页</a>&nbsp;&nbsp;
				</c:if>
				${page }/${count }
				<c:if test="${page==count }">
					下一页&nbsp;&nbsp;尾页&nbsp;&nbsp;
				</c:if>
				<c:if test="${page!=count }">
					<a href="change.do?index=${page+1}&ids=${ids}">下一页</a>&nbsp;&nbsp;
					<a href="change.do?index=${count}&ids=${ids}">尾页</a>&nbsp;&nbsp;
				</c:if>
			</td>
		</tr>
	</table>
	<hr>
	<a href="load.do">返回首页</a>&nbsp;&nbsp;<a href="addLoad.do">添加新员工</a>
</body>
</html>