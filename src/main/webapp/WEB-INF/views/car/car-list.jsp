<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>차량리스트</h3>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>모델명</th>
			<th>년식</th>
		</tr>
		 <c:forEach  items="${cars}" var="car">
			<tr>
				<td>${car.ciNum}</td>
				<td>${car.ciName}</td>
				<td>${car.ciYear}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>