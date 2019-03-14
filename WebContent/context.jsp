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
	
	<!-- 
		获取context里面数据，邪恶ognl时候，首先添加符号
		#context的key名称，域对象名称
	 -->
	<%-- <s:property value="#request.req"/> --%>
	
	
	<!-- struts2标签里面使用ognl表达式，如果直接在struts2表单标签里面使用ognl表达式，则不识别，需要在使用%才会识别 -->
	<s:textfield name="username" value="%{#request.req}"></s:textfield>
	
</body>
</html>