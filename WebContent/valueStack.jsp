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
	<s:property value="username"/>
	<br>
	
	<!-- 获取set方法设置的值，根据名称获取值 -->
	<s:property value="address"/>
	<br>
	<!-- 获取push方法设置的值，根据名称获取值
		向值栈中放数据，会把数据放存放到数组里，数组名称top，根据数据获取值
	 -->
	 <s:property value="[0].top"/>
	
</body>
</html>