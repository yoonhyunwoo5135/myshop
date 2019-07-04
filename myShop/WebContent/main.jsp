<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>
	<body>
		<div id = "top">
			<h1>MYSHOP</h1>		
		</div>
		<div id = "middle">
			<button type="button" onclick = "location.href ='insert.jsp'" id = "button">상품 등록</button>
			<button type="button" onclick = "location.href ='update.jsp'" id = "button">상품 수정</button>
			<button type="button" onclick = "location.href ='delete.jsp'" id = "button">상품 삭제</button>
			<button type="button" onclick = "location.href ='select.jsp'" id = "button">상품 검색</button>
			<button type="button" onclick = "location.href ='selectAll.jsp'" id = "button">전체 검색</button>
		</div>
	</body>
</html>