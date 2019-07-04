$(function() { // 유효성 검사
			$("#check").click(function() {
				if($("#id").val() == ""){
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