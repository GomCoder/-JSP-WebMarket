<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("id");
		String password = request.getParameter("passwd");
	%>
	<p> 아 이 디: <% out.println(userId); %>
	<p> 비밀번호: <% out.println(password); %>
</body>
</html>