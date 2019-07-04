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
				String id = request.getParameter("id");
				String name = request.getParameter("name");
				String content = request.getParameter("content");
				String price = request.getParameter("price");
				
				dto = dao.insert(dto);
				
				dto.setId(id);
				dto.setName(name);
				dto.setContent(content);
				dto.setPrice(price);

				int result = dto.getFail();
				if(result == 1){
			%>
					<h2>상품 등록 성공!</h2>
			<%
				}
				else if(result == 0){
			%>
					<h2>상품 등록 실패..</h2>
			<% 
				}
			%>
			<button type="button" onclick= " location.href = 'main.jsp'" id = "button">메인으로</button>
	</body>
</html>