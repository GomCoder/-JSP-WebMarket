<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<!-- 네비게이션바 -->
	<%@ include file="menu.jsp" %>

	<!-- 콘텐츠 영역 -->
	<%!
		String title = "도서 웹 쇼핑몰";
		String content = "Welcome to Book Market!";	
	%>
		
	<div class ="jumbotron">
		<div class = "container">
			<h1 class = "display-3">
				<%= title %>
			</h1>
		</div>
	</div>
	<div class = "contaner">
		<div class = "text-center">
			<h3>
				<%= content %>
			</h3>
		</div>
		<hr>
	</div>
	
	<!-- 푸터 영역 -->
	<%@ include file="footer.jsp" %>
</body>
</html>