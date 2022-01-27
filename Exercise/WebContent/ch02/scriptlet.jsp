<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting Tag</title>
</head>
<body>
	<%	
		java.util.Date date = new java.util.Date();	
		out.println("<p>Today : " + date + "</br>");
	%>
</body>
</html>