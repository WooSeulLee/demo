<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	var b1 = false;
	if(!b1){
		console.log('false is false');
	}
	b1 = 0;
	if(!b1){
		console.log('0 is false');
	}
	b1=null;
	if(!b1){
		console.log('null is false');
	}
	b1=undefined;
	if(!b1){
		console.log('undefined is false');
	}
	b1='';
	if(!b1){
		console.log('"" is false');
	}
</script>

</body>
</html>