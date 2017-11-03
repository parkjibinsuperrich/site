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

<style type="text/css">
body, div {
	margin: 0px;
	padding: 0px;
}

h2 {
	margin: 0px;
}

.img2 {
	width: 225px;
	height: 225px;
}

a {
	text-decoration: none;
}

.pdt_item {
	margin: 0px 10px;
	float: left;
}
</style>
<script type="text/javascript">

	window.onload = function(){
		var code =${code};
		
		if(code =="2"){
			document.getElementById('span_check').style.diplay="block";
		}
	};

</script>
</head>
<body>

	<%@ include file="site.jsp"%>

<section>
	<div class="item_list">
		<h2>Best Item</h2>
		<hr>
		<div class="div_wrap">
		<c:forEach items="${bestlist}" var="bpDto">
			<div class="pdt_item">
				<a href="detail.jsp?img=${bpDto.p_img} &name=${bpDto.p_name} &price=${bpDto.p_price2}"> <img class="img2" src="img/${bpDto.p_img}" alt="베스트상품">
					<div class="wrap info">
						<span>${bpDto.p_name}</span> 
						<span> 
							<fmt:setLocale value="ko_kr" /> <!-- ko_kr, en_us, ja_jp --> <fmt:formatNumber
								value="${bpDto.p_price2}" type="currency" />
						</span>
					</div><br>
				</a>
			</div>
		</c:forEach>
	</div>
	</div>
</section>
<section>
	<div class="item_list2">
		<h2>New Item</h2>
		<hr>
		<br><img  class="img2" src="img/C01.jpg" alt="라코스테후드티"> <img class="img2"  src="img/C02.jpg"
			alt="빈폴카라티"> <img class="img2"  src="img/C03.jpg" alt="꼼데가디건"> <img class="img2" 
			src="img/C04.jpg" alt="타미힐피거셔츠">
			
	</div>
	<br>
	<br>
</section>

</body>
</html>