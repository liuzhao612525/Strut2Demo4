<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 使用struts2标签查看栈值结果 -->
	<s:debug></s:debug>
	
	<!-- 获取字符串的值 -->
	<s:property value="user.username"/>
	<s:property value="user.password"/>
	<s:property value="user.address"/>
</body>
</html>