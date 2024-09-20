<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button onclick="getCars()">값 가져오기</button>
	<br>
	<br>
	<div id="rDiv"></div>
	<script>
		function getCars() {
			var xhr = new XMLHttpRequest();
			xhr.open('GET', '/cars'); // /cars 앞에 자동으로 도메인이 붙음
			xhr.onreadystatechange = function() {
				if (xhr.readyState === 4) {
					if (xhr.status === 200) {
						const cars = JSON.parse(xhr.responseText);
						var html='<table border="1">';
						html+='<tr>';
						html+='<th>번호</th>';
						html+='<th>모델명</th>';
						html+='<th>년식</th>';
						html+='</tr>';
						for(const car of cars){
							html += '<tr>';
							html += '<td>' + car.ciNum + '</td>'; 
							html += '<td>' + car.ciName + '</td>'; 
							html += '<td>' + car.ciYear + '</td>'; 
							html += '</tr>';
						}
						document.querySelector('#rDiv').innerHTML = html;
					}
				}
			}
			xhr.send();
		}
	</script>
</body>
</html>