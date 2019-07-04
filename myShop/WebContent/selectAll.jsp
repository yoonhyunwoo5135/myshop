<%@page import="product.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
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
		<jsp:useBean id="dto" class ="product.ProductDTO"></jsp:useBean>
		<jsp:setProperty property="*" name="dto"/>
		<jsp:useBean id="dao" class ="product.ProductDAO"></jsp:useBean>
			<%	
				ArrayList list = new ArrayList();
				list = dao.selectAll(dto);
				String p[][] = new String[list.size()][4];
				
				int result = dto.getFail();
				if(result == 1){
			%>
					<h2>전체 상품 검색 성공!</h2>
					<table id = "table">
						<tr>
							<td class = "td">상품 아이디</td>
							<td class = "td">상품 이름</td>
							<td class = "td">상품 설명</td>
							<td class = "td">상품 가격</td>
						</tr>
				<%
					for(int i = 0; i < list.size(); i++){
						dto = (ProductDTO)list.get(i);
						p[i][0] = dto.getId();						
						p[i][1] = dto.getName();
						p[i][2] = dto.getContent();
						p[i][3] = dto.getPrice();
						
				%>
						<tr>
							<td class = "td"><%= p[i][0] %></td>
							<td class = "td"><%= p[i][1] %></td>
							<td class = "td"><%= p[i][2] %></td>
							<td class = "td"><%= p[i][3] %></td>
						</tr>
				<%
					}
				%>
				</table>
			<%
				}
				else if(result == 0){
			%>
					<h2>상품 검색 실패..</h2>
			<% 
				}
			%>
			<button type="button" onclick = "location.href = 'main.jsp'" id = "button">메인으로</button>
	</body>
</html>