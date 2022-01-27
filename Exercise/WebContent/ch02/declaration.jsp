<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting Tag</title>
</head>
<body>
	<%! String greeting = "Hello, Java Server Pages";
		String getString(String data){
		 return data;	
	}%>
	
	<h1><%= getString(greeting) %></h1>

</body>
</html>