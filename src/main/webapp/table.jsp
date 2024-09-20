<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="result">
<input type="text" id="col" placeholder="컬럼">
<input type="text" id="row" placeholder="로우">
</div>
<button onclick="generateTable()">생성</button>
<script>
function  generateTable(){
	const col = document.querySelector('#col').value;
	const row = document.querySelector('#row').value;
	var html ='<table border="1">';
	for(var i=1;i<=row;i++){
		html+= '<tr>';
		for(var j=1;j<col;j++){
			html+='<td>아</td>';
		}
		html+= '</tr>';
	}
	html+= '</table>';
	document.querySelector('#result').innerHTML = html;
}
</script>
</body>
</html>