<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="style.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
			$(function() { // 유효성 검사
				$("#check").click(function() {
					if($("#keyId").val() == ""){
						alert("아이디를 입력해주세요");
						$("#keyId").focus();
						return false;
					}
					else if($("#id").val() == ""){
						alert("아이디를 입력해주세요");
						$("#id").focus();
						return false;
					}
					else if($("#name").val() == ""){
						alert("이름을 입력해주세요");
						$("#name").focus();
						return false;
					}
					else if($("#content").val() == ""){
						alert("내용을 입력해주세요");
						$("#content").focus();
						return false;
					}
					else if($("#price").val() == ""){
						alert("가격을 입력해주세요");
						$("#price").focus();
						return false;
					}
				});
			});
		</script>
	</head>
	<body>
		<div id = "top">
			<h1>MYSHOP</h1>		
		</div>
		<div id = "middle">
			<form action="update2.jsp">
				수정하려는 상품 아이디<input type="text" id = "keyId" name = "keyId"><br>
				수정할 상품 아이디<input type="text" id = "id" name = "id"><br>
				수정할 상품 이름<input type="text" id = "name" name = "name"><br>
				수정할 상품 설명<input type="text" id = "content" name = "content"><br>
				수정할 상품 가격<input type="text" id = "price" name = "price"><br>
				<input type="submit" value ="상품 수정" id = "check">
				<button type="button" onclick = "location.href = 'main.jsp'" id = "button">메인으로</button>
			</form>
		</div>
	</body>
</html>