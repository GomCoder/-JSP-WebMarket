<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>Directive Tag</title>
</head>
<body>
	<%@include file="header.jsp" %>
	현재시간: <%= java.util.Calendar.getInstance().getTime()%>
</body>
</html>