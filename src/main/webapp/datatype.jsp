<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button>클릭</button>
<script>
const btn = document.querySelector('button');
btn.addEventListener('click', function(){
	alert(1);
});

function test(){
	this.func = function(){
		alert(1);
	};
}
test();
</script>
</body>
</html>