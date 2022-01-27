<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date" %> 
<%@ page import="java.lang.Math" %>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	현재 날짜: <%= new java.util.Date() %><br/>
	5의 제곱: <%= Math.pow(5,2) %>
</body>
</html>