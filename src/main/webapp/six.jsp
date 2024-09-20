<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Insert title here</title>
</head>
<body>
<button onclick='start()'>click</button>
<div id='result'></div>

<script>
const result = document.querySelector('#result');
function start(){
   var html = '';
   var number = 0;
   var str = '';
   html += '<table border =1>';
   for(var i=1;i<11;i++){
      html += '<tr>';
      for(var j=1;j<11;j++){
         number++;
         var str = number +'';
         str =str.replaceAll('3','짝');
         str =str.replaceAll('6','짝');
         str =str.replaceAll('9','짝');
         if(str.includes('짝') && str!=='짝짝'){
        	 str='짝';
         }
            html += '<td>'+ str +'<td>';
      }
      html += '</tr>';
   }
   html += '</table>';
   result.innerHTML = html;
};
</script>
</body>

</html>