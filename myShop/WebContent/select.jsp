<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>
	<body>
		<div id = "top">
			<h1>MYSHOP</h1>		
		</div>
		<div id = "middle">
			<form action="select2.jsp">
				검색할 상품 아이디<input type="text" id = "id" name = "id"><br>
				<input type="submit" value ="상품 검색" id = "check">
				<button type="button" onclick = "location.href = 'main.jsp'" id = "button">메인으로</button>
			</form>
		</div>
	</body>
</html>