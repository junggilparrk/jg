<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{margin: 0; padding: 0;}
table {
	border-collapse: collapse;
	margin: 30px auto;
}
tr{border: 1px solid black; text-align: center;}
th{border: 1px solid black; text-align: center;}
td{border: 1px solid black; text-align: center;}
.title{width: 300px;}
.release_date{width: 150px;}
.world{width: 200px;}
.write{width: 200px;}
.update{width: 200px;}
li{color: black; line-height: 50px; text-align: center; width: 24.8%; height:50px; float: left; list-style: none;border: 1px solid black; font-size: 2em;}
ul{text-align: center; background: #eeeeee;}
ul::after {
	content: ""; clear: both; display:block; 
}
a{text-decoration: none; color: black;}
.button {
	margin: 0 0 0 43%;
}
button{
	width: 100px
}
h2{text-align: center;}
</style>
</head>
<body>
<header>
	<ul>
		<a href="/marvel/list"><li>메인</li></a>
		<a href="/marvel/write"><li>작성</li></a>
		<a href="/marvel/update"><li>수정</li></a>
		<a href="/marvel/delete"><li>삭제</li></a>
	</ul>
</header>
<br>

<h2>삭제하시겠습니까?</h2>
<br>
<button class="button">예</button> <button>아니오</button>
<script type="text/javascript">
	var yes=document.querySelectorAll("button")[0];
	var no=document.querySelectorAll("button")[1];
	yes.onclick=function(){
		alert("삭제되었습니다.")
		location.href="/marvel/result?marvelId="+${marvelId}
	}
	no.onclick=function(){
		location.href="/marvel/list"
	}
</script>
</body>
</html>