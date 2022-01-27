<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<h4>구구단 출력하기</h4>
	<%
		int Num = Integer.parseInt(request.getParameter("number"));
	%>
	<%
		for(int i = 1; i < 10; i++){
			out.println(Num + "*" + i + "=" + Num*i + "<br/>");
	%>
	<%
		}
	%>	
</body>
</html>