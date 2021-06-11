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
.head{text-align: center; font-style: italic; font-weight: bold; font-size: 20px; color: blue;}
.paging{margin: 0 0 0 50%; font-size:20px; color: blue;}
</style>
</head>
<body>
<c:if test="${empty list }">
	<h1>Marvel 데이터가 없습니다.</h1>
</c:if>
<c:if test="${not empty list }">
<header>
	<ul>
		<a href="/marvel/list"><li>메인</li></a>
		<a href="/marvel/write"><li>작성</li></a>
		<a href="/marvel/update"><li>수정</li></a>
		<a href="/marvel/delete"><li>삭제</li></a>
	</ul>
</header>
<br>
	<div class="head">수정할 리스트의 제목을 클릭해주세요</div>
	<table>
	<tr>
		<th>No.</th>
		<th class="title">제목</th>
		<th class="release_date">개봉일</th>
		<th class="world">월드박스오피스 수입</th>
		<th class="write">작성일</th>
		<th class="update">수정일</th>
	</tr>
	<c:forEach var="m" items="${list.marvelList }">
	<c:if test="${m.writeDate.second eq 0 }">
		<fmt:parseDate  var="w"  value="${m.writeDate }"  pattern="yyyy-MM-dd'T'HH:mm"/>
		<fmt:formatDate var="wd" value="${w }" pattern="yyyy-MM-dd HH:mm"/>
	</c:if>
	<c:if test="${m.writeDate.second ne 0 }">
		<fmt:parseDate  var="w"  value="${m.writeDate }"  pattern="yyyy-MM-dd'T'HH:mm:ss"/>
		<fmt:formatDate var="wd" value="${w }" pattern="yyyy-MM-dd HH:mm:ss"/>
	</c:if>
	<c:if test="${m.updateDate.second eq 0 }">
		<fmt:parseDate  var="u"  value="${m.updateDate }"  pattern="yyyy-MM-dd'T'HH:mm"/>
		<fmt:formatDate var="ud" value="${u }" pattern="yyyy-MM-dd HH:mm"/>
	</c:if>
	<c:if test="${m.updateDate.second ne 0 }">
		<fmt:parseDate  var="u"  value="${m.updateDate }"  pattern="yyyy-MM-dd'T'HH:mm:ss"/>
		<fmt:formatDate var="ud" value="${u }" pattern="yyyy-MM-dd HH:mm:ss"/>
	</c:if>
		<tr>
			<td>${m.marvelId }</td>
			<td><a href="/marvel/updateForm?marvelId=${m.marvelId }"><span>${m.title }</span><br><span>${m.titleEng }</span></a></td>
			<td>${m.releaseDate }</td>
			<td>${m.worldBoxOffice }</td>
			<td>${wd}</td><td>${ud }</td>
		</tr>
	</c:forEach>
	
	</table>
		<span class="paging">
		<c:forEach var="c" begin="1" end="${list.lastPage }">
			<a id="" href="/marvel/list?page=${c }">[${c }]</a>
		</c:forEach>
</c:if>

	

</body>
</html>