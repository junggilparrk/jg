<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
li{color: black; line-height: 50px; text-align: center; width: 24.8%; height:50px; float: left; list-style: none;border: 1px solid black; font-size: 2em;}
ul{text-align: center; background: #eeeeee;}
ul::after {
	content: ""; clear: both; display:block; 
}
.da{width: 300px;height: 30px;}
.wo{width: 300px;height: 30px;}
a{text-decoration: none; color: black;}
.button{width: 100px; height: 50px; margin: 0 0 0 45%;}
.button2{width: 100px; height: 50px;}
</style>
</head>
<body>
<c:if test="${empty marvel }">
	<h1>데이터가 존재하지 않습니다.</h1>
	<a href="/marvel/update">뒤로가기</a>
</c:if> 
<c:if test="${not empty marvel }">
<header>
	<ul>
		<a href="/marvel/list"><li id="main">메인</li></a>
		<a href="/marvel/write"><li>작성</li></a>
		<a href="/marvel/update"><li>수정</li></a>
		<a href="/marvel/delete"><li>삭제</li></a>
	</ul>
</header>
	<form action="/marvel/update" method="post">
	<c:if test="${marvel.writeDate.second eq 0 }">
		<fmt:parseDate  var="w"  value="${m.writeDate }"  pattern="yyyy-MM-dd'T'HH:mm"/>
		<fmt:formatDate var="wd" value="${w }" pattern="yyyy-MM-dd HH:mm"/>
	</c:if>
	<c:if test="${marvel.writeDate.second ne 0 }">
		<fmt:parseDate  var="w"  value="${m.writeDate }"  pattern="yyyy-MM-dd'T'HH:mm:ss"/>
		<fmt:formatDate var="wd" value="${w }" pattern="yyyy-MM-dd HH:mm:ss"/>
	</c:if>
	<c:if test="${marvel.updateDate.second eq 0 }">
		<fmt:parseDate  var="u"  value="${m.updateDate }"  pattern="yyyy-MM-dd'T'HH:mm"/>
		<fmt:formatDate var="ud" value="${u }" pattern="yyyy-MM-dd HH:mm"/>
	</c:if>
	<c:if test="${marvel.updateDate.second ne 0 }">
		<fmt:parseDate  var="u"  value="${m.updateDate }"  pattern="yyyy-MM-dd'T'HH:mm:ss"/>
		<fmt:formatDate var="ud" value="${u }" pattern="yyyy-MM-dd HH:mm:ss"/>
	</c:if>
		<table>
	<tr>
		<th>No.</th>
		<th class="title">제목</th>
		<th class="release_date">개봉일</th>
		<th class="world">월드박스오피스 수입</th>
		<th class="write">작성일</th>
	</tr>
	<tr>
			<td> <input type="text" name="marvelId" value="${marvel.marvelId }" readonly="readonly"> </td>
			<td><span><input class="t" type="text" name="title" value="${marvel.title }"></span><br><br>
			<span><input class="t" type="text" name="titleEng" value="${marvel.titleEng }"></span></td>
			<td><input class="da" type="date" name="releaseDate"  value="${marvel.releaseDate }"></td>
			<td><input class="wo" type="number" name="worldBoxOffice" value="${marvel.worldBoxOffice }"></td>
			<td> <input type="datetime-local" name="writeDate" value="${marvel.writeDate }" readonly="readonly"> </td>
	</tr>
	</table>
	<input class="button" type="submit" value="수정하기"> <button class="button2"><a href="/marvel/list">메인으로가기</a></button>
	</form>
</c:if>
	<script type="text/javascript">
	var button=document.querySelector(".button");
	button.onclick=function(){
		alert("영화 리스트가 수정되었습니다.");
	}
</script>	
</body>
</html>