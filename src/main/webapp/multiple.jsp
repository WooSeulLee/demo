<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="text" id="num" placeholder="단">
<button onclick="generateTable()">생성</button>
<div id="result"></div>
<script>
function generateTable(){
	const num = parseInt(document.querySelector('#num').value);
	var html ='<table border="1">';
	for(var i=1 ; i<=num ; i++){
		html+='<tr>';
		for(var j=1 ; j<=9 ; j++){
			html += '<td>' + i + 'X' + j + '=' + (i*j) + '</td>';
		}
		html+= '</tr>';
	}
	html+= '</table>';
	document.querySelector('#result').innerHTML = html;
}
</script>
</body>
</html>