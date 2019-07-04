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
		<jsp:useBean id="dto" class ="product.ProductDTO"></jsp:useBean>
		<jsp:setProperty property="*" name="dto"/>
		<jsp:useBean id="dao" class ="product.ProductDAO"></jsp:useBean>
			<%
				dto = dao.select(dto);
				
				int result = dto.getFail();
				if(result == 1){
			%>
					<h2>상품 검색 성공!</h2>
					<table id = "table">
						<tr>
							<td class = "td">상품 아이디</td>
							<td class = "td">상품 이름</td>
							<td class = "td">상품 설명</td>
							<td class = "td">상품 가격</td>
						</tr>
						<tr>
							<td class = "td"><%= dto.getId() %></td><br>
							<td class = "td"><%= dto.getName() %></td><br>
							<td class = "td"><%= dto.getContent() %></td><br>
							<td class = "td"><%= dto.getPrice() %></td><br>
						</tr>
					</table>
			<%
				}
				else if(result == 0){
			%>
					<h2>상품 검색 실패..</h2>
			<% 
				}
			%>
			<button type="button" onclick= " location.href = 'main.jsp'" id = "button">메인으로</button>
	</body>
</html>