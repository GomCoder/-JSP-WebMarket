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
	
	String sql = "INSERT INTO product VALUES(?,?,?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, bookId);
	pstmt.setString(2, name);
	pstmt.setString(3, unitPrice);
	pstmt.setString(4, author);
	pstmt.setString(5, description);
	pstmt.setString(6, publisher);
	pstmt.setString(7, category);
	pstmt.setString(8, unitsInStock);
	pstmt.setString(9, totalPages);
	pstmt.setString(10, condition);
	pstmt.setString(11, releaseDate);
	pstmt.setString(12, fileName);
	pstmt.executeUpdate();

	if(pstmt != null){
		pstmt.close();
	}
	if(conn != null){
		conn.close();
	}
	
	
	response.sendRedirect("./books.jsp");
	
%>
