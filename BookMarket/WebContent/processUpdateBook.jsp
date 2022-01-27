<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	String realFolder = "D://JSP Programming/BookMarket/WebContent/upload";
	int maxSize = 5*1024*1024;
	String encType = "utf-8";
	DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, policy);		
	
	String bookId = multi.getParameter("bookId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String author =  multi.getParameter("author");
	String description = multi.getParameter("description");
	String publisher = multi.getParameter("publisher");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String totalPages = multi.getParameter("totalPages");
	String condition = multi.getParameter("condition");
	String releaseDate =  multi.getParameter("releaseDate");
	
	Integer price;
	
	if(unitPrice.isEmpty()){
		price = 0;
	}else{
		price = Integer.valueOf(unitPrice);
	}
	
	long stock;
	
	if(unitsInStock.isEmpty()){
		stock = 0;
	}else{ 
		stock = Long.valueOf(unitsInStock);
	}
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);	
	
	String sql = "SELECT * FROM product WHERE b_id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, bookId);
	rs = pstmt.executeQuery();
	
	if(rs.next()) {
		if(fileName != null) {
			sql = "UPDATE product SET b_name = ?, b_unitPrice = ?, b_author = ?, b_description = ?, b_publisher = ?, b_category = ?, b_unitsInStock = ?, b_totalPages = ?, b_condition = ?, b_fileName = ?, b_releaseDate = ? WHERE p_id =?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setString(2, unitPrice);
			pstmt.setString(3, author);
			pstmt.setString(4, description);
			pstmt.setString(5, publisher);
			pstmt.setString(6, category);
			pstmt.setString(7, unitsInStock);
			pstmt.setString(8, totalPages);
			pstmt.setString(9, condition);
			pstmt.setString(10, fileName);
			pstmt.setString(11, releaseDate);
			pstmt.setString(12, bookId);
			pstmt.executeUpdate();			
		} else {
			sql = "UPDATE product SET b_name = ?, b_unitPrice = ?, b_author = ?, b_description = ?, b_publisher = ?, b_category = ?, b_unitsInStock = ?, b_totalPages = ?, b_condition = ?, b_fileName = ?, b_releaseDate = ? WHERE p_id =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, unitPrice);
			pstmt.setString(3, author);
			pstmt.setString(4, description);
			pstmt.setString(5, publisher);
			pstmt.setString(6, category);
			pstmt.setString(7, unitsInStock);
			pstmt.setString(8, totalPages);
			pstmt.setString(9, condition);
			pstmt.setString(10, fileName);
			pstmt.setString(11, releaseDate);
			pstmt.setString(12, bookId);
			pstmt.executeUpdate();
		}		
	}
	
	if(rs != null) {
		rs.close();
	}
	if(pstmt != null) {
		pstmt.close();
	}
	if(conn != null) {
		conn.close();
	}
	
	
	response.sendRedirect("editBook.jsp?edit=update");
	
%>
