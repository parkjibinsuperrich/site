<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="site.jsp"%>
	<%
	String img = request.getParameter("img");
	String name = request.getParameter("name");
	String price = request.getParameter("price");

	%>
	<table>
		<tr>
			<td rowspan="3"><img src="img/<%=img %>" alt="베스트상품"></td>
			<td><%=name %></td>
		</tr>
		<tr>
			<td>55577854</td>
		</tr>
		<tr>
			<td><fmt:setLocale value="ko_kr" /> <!-- ko_kr, en_us, ja_jp --> <fmt:formatNumber
								value="<%=price %>" type="currency" /></td>
		</tr>
	</table>
</body>
</html>