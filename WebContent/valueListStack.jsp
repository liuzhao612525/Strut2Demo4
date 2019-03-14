<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 使用struts2标签查看栈值结果 -->
	<s:debug></s:debug>
	
	<!-- 第一种方式：不常用 -->
	<!-- 获取list的值 -->
	<s:property value="list[0].username"/>
	<s:property value="list[0].password"/>
	<s:property value="list[0].address"/>
	<br>
	<s:property value="list[1].username"/>
	<s:property value="list[1].password"/>
	<s:property value="list[1].address"/>
	<br>
	
	
	
	<!-- 第二种方式：常用 -->
	
	<!-- 使用sruts2标签类型jstl的foreach标签
		s:iterator 遍历值栈的list集合
	 -->
	<s:iterator value="list">
		<!-- 遍历list得到list里面的每个user对象 -->
		<br>
		<s:property value="username"/>
		<s:property value="password"/>
		<s:property value="address"/>
		<br>
	</s:iterator>
	
	<!-- 第三种方式：常用 -->
	<s:iterator value="list" var="user">
		<!-- 遍历值栈list集合，得到每个user对象
			机制：把每次遍历出来的user对象放到context里面
			获取context里面数据的特点：写ognl表达式
			使用特殊符号#
		 -->
		 <br>
		<s:property value="#user.username"/>
		<s:property value="#user.password"/>
		<s:property value="#user.address"/>
		<br>
	</s:iterator>
	
	<!-- 使用foreach标签+el表达式获取值栈list集合数据 -->
	<c:forEach items="${list }" var="user">
		${user.username }
		${user.password }
		${user.address }
		<br>
	</c:forEach>


</body>
</html>