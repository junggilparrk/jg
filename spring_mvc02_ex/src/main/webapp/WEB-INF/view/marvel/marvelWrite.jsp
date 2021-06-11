<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>marvelWrite.jsp</title>
<style type="text/css">
*{margin: 0; padding: 0;}
table {
	border-collapse: collapse;
	margin: 50px auto;
}
tr{border: 1px solid black; text-align: center;}
th{border: 1px solid black; text-align: center;}
td{border: 1px solid black; text-align: center; width:400px; height: 100px;}
.title{width: 300px; }
.release_date{width: 300px;}
.world{width: 200px;}
.write{width: 200px;}
.update{width: 200px;}
.t{width: 350px;height: 30px;}
li{color: white; line-height: 50px; text-align: center; width: 24.8%; height:50px; float: left; list-style: none;border: 1px solid #eeeeee; font-size: 2em;}
ul{text-align: center; background: #cc0000;}
ul::after {
	content: ""; clear: both; display:block; 
}
.da{width: 350px;height: 30px;}
.wo{width: 350px;height: 30px;}
a{text-decoration: none; color: black;}
.button{width: 100px; height: 50px; margin: 0 0 0 45%;}
.button2{width: 100px; height: 50px;}
</style>
</head>
<body>
<header>
	<ul>
		<a href="/marvel/list"><li id="main">메인</li></a>
		<a href="/marvel/write"><li>작성</li></a>
		<a href="/marvel/update"><li>수정</li></a>
		<a href="/marvel/delete"><li>삭제</li></a>
	</ul>
</header>
	<form action="/marvel/write" method="post">
		<table>
	<tr>
		<th class="title">제목</th>
		<th class="release_date">개봉일</th>
		<th class="world">월드박스오피스 수입</th>
	</tr>
	<tr>
			
			<td><span><input class="t" type="text" name="title" placeholder="영화제목 입력"></span><br><br>
			<span><input class="t" type="text" name="titleEng" placeholder="영어제목 입력"></span></td>
			<td><input class="da" type="date" name="releaseDate" ></td>
			<td><input class="wo" type="number" name="worldBoxOffice" placeholder="월드 박스오피스 입력"></td>
	</tr>
	</table>
	<input class="button" type="submit" value="등록하기"> <button class="button2"><a href="/marvel/list">뒤로가기</a></button>
	</form>

<script type="text/javascript">
	var button=document.querySelector(".button");
	button.onclick=function(){
		alert("영화 리스트가 등록되었습니다.");
	}
</script>	
</body>
</html>