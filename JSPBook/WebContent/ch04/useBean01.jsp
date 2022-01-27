<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="date" class="java.util.Date"/>
	<p>
		<%
			out.println("오늘의 날짜와 및 시각");
		%>
	<p><%=date %>
</body>
</html>