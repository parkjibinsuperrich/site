<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- jstl core 라이브러리를 사용하기 위한 선언문 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	function closeOk(){
		opener.document.firminsert.input_pw.focus();
		opener.document.firminsert.ckuid.value="0";
		opener.document.firminsert.uid2.value="${message}";
		opener.document.firminsert.input_id.value="${message}";
		self.close();
	}

	$(document).on("click","#ck_ck",function() {
		$("#form2").submit();
	});
		

	
</script>

</head>
<body>
	<c:choose>
		<c:when test="${idCount =='0'}">
			${message}는 사용가능한 ID 입니다.	
			<input id="input_id" name="member_id" readonly="readonly"
					placeholder="아이디"	value="${message}" type="text">
			<button onclick="closeOk()">사용</button>
		</c:when>
		<c:otherwise>
<form action="IdckAction" id="form2" name="form2" method="post">
			${message}는 중복된 ID 입니다<br>
			다른 ID를 입력해주세요.	
			<input id="input_id" name="member_id"
					placeholder="아이디"	value="${message}" type="text" >
			<button id="ck_ck">중복확인</button>
</form>
		</c:otherwise>
	</c:choose>
	
	
</body>
</html>