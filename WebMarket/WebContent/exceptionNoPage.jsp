<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>페이지 오류</title>
</head>
<body>
	<!-- 네비게이션 바 -->
	<jsp:include page="menu.jsp" />
	
	<!-- 콘첸츠 영역 -->
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h2>
		</div>
	</div>
	
	<div class="container">
		<p><%=request.getRequestURL()%>?<%=request.getQueryString()%>		
		<p> <a href="products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>	
	</div>
		
		

</body>
</html>