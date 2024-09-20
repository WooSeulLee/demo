<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
img {
	width: 225px;
	height: 225px;
}
</style>
</head>
<body>
	<button onclick="startGame()">게임시작</button>
	<div id="win"></div>
	<div id="game">
		<div id="win"></div>
		<button onclick="game(1)">
			<img src="/imgs/1.jpg">
		</button>
		<button onclick="game(2)">
			<img src="/imgs/2.jpg">
		</button>
		<button onclick="game(3)">
			<img src="/imgs/3.jpg">
		</button>
		<div id="other"></div>
		<div id="result"></div>
	</div>
	<script type="text/javascript">
	var win = 0;
	var lost = 0;
	var draw = 0;
		function startGame(btn) {
			if (btn.innerText === '게임시작') {
				document.querySelector('#game').style.display = '';
				btn.innerText = '다시하기';
			} else {
				location.reload();
			}
		}

		function game(num) {
			const rNum = Math.floor(Math.random() * 3) + 1 // 1 to 3
			const imgHtml = '<img src = "/imgs/'+rNum + '.jpg">'
			document.querySelector('#other').innerHTML = imgHtml;

			
			if (rNum - (num % 3) === 1) {
				html = '졌습니다.<br>';
				lose++;
			}else if(rNum === num){
				html = '비겼습니다.<br>';
				draw++;
			}else{
				html = '이겼습니다.<br>';
				win++;

			document.querySelector('#result').innerHTML += html;
			document.querySelector('#win').innerHTML = '[전적]' + win + '승' + lost +'패' +draw+'무';
			document.querySelector('#win').innerHTML+='<br>' + (win/(win+lose)*100+'%');
			
			}
	</script>
</body>
</html>