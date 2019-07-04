<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="style.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script type="text/javascript" src = "javascript.js">
		</script>
	</head>
	<body>
		<div id = "top">
			<h1>MYSHOP</h1>		
		</div>
		<div id = "middle">
			<form action="insert2.jsp">
				상품 아이디<input type="text" id = "id" name = "id" class = "input"><br>
				상품 이름<input type="text" id = "name" name = "name" class = "input"><br>
				상품 설명<input type="text" id = "content" name = "content" class = "input"><br>
				상품 가격<input type="text" id = "price" name = "price" class = "input"><br>
				<input type="submit" value ="상품 등록" id = "check">
				<button type="button" onclick = "location.href = 'main.jsp'" id = "button">메인으로</button>
			</form>
		</div>
	</body>
</html>