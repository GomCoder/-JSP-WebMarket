<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>도서 목록</title>
</head>
<body>	
	<!-- 메뉴 영역 -->
	<jsp:include page="menu.jsp" />
	<!-- 콘텐츠 영역 -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	
	
	<div class="container">
		<div class="row" align="center">	
			<%@ include file="dbconn.jsp" %>
			<%
				String sql =  "SELECT * FROM book";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()){
			%>		
				<div class="col-md-4">
					<img src="./upload/<%=rs.getString("b_fileName")%>" style="width:100%">
						<h3><%=rs.getString("b_name") %></h3>
						<p><%=rs.getString("b_description") %>
						<p><%=rs.getString("b_unitPrice") %>원
						<p><a href="./book.jsp?id=<%=rs.getString("b_id") %>" class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
				</div>					
			<%							
				}
					if(rs != null){
						rs.close();
					}
					if(pstmt != null){
						pstmt.close();
					}
					if(conn != null){
						conn.close();
					}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>	
</body>
</html>