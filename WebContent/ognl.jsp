<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 引入标签库 -->
<%@ taglib uri="/struts-tags" prefix="s" %>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 使用ognl+struts2标签实现计算字符长度 
		value属性值：ognl表达式
	-->
	<s:property value="'haha'.length()"/>
</body>
</html>