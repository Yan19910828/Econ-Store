<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.demo.service.*, com.demo.model.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="service" class="com.demo.service.ProductService" />
<jsp:useBean id="product" class="com.demo.model.Product" />
<jsp:setProperty property="*" name="product"/>
<%
	
	int num = service.insert(product);
	response.sendRedirect("index.jsp");
%>

</body>
</html>