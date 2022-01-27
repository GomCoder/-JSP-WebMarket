<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<%@ page errorPage="exceptionNoBookId.jsp" %>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" />
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>도서 상세 정보</title>
	<!--장바구니 핸들러 함수선언  -->
<script type="text/javascript">
	function addToCart(){
		if(confirm("도서를 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		}else{
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<!-- 네비게이션 바 -->
	<jsp:include page="menu.jsp" />
	
	<!-- 콘첸츠 영역 -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 상세 정보</h1>
		</div>
	</div>
	
	<%
		String id = request.getParameter("id");
		BookRepository dao = BookRepository.getInstance();
		Book book = dao.getBookById(id);
	%>
	
	<div class="container">
		<div class="row">
		
			<div class="col-md-5">
				<img src="./upload/<%=book.getFilename()%>" style="width:100%">
			</div>
		
			<div class="col-md-6">	
				<h3>[<%= book.getCategory()%>] <%=book.getName() %></h3>
				<p><%=book.getDescription() %>
				<p><b>상품 코드: </b><span class="badge badge-danger"><%= book.getBookId() %></span>
				<p><b>제조사</b> : <%= book.getPublisher()%>
				<p><b>분류</b> : <%= book.getCategory() %>
				<p><b>재고 수</b> : <%= book.getUnitInStock() %>
				<h4><%= book.getUnitPrice()%>원</h4>
				
				<p><form name="addForm" action="./addCart.jsp?id=<%=book.getBookId()%>" method="post">
					<a href="#" class="btn btn-info" onClick="addToCart()">도서 주문 &raquo;</a>
					<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
					<a href="./books.jsp" class="btn btn-secondary"> 도서 목록  &raquo;</a>
				</form>
			</div>
		</div>
		<hr>
	</div>
	<!-- 푸터 영역 -->
	<jsp:include page="footer.jsp"/>	
</body>
</html>