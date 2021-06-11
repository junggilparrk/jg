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
tr{border: 1px solid #eeeeee; text-align: center;}
th{border: 1px solid #eeeeee; text-align: center;}
td{border: 1px solid #eeeeee; text-align: center;}
.front{background:#cc0000; color:white;  width: 200px;height: 50px;}
.end{width: 800px;height: 50px;}
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
.button{width: 100px; height: 50px; margin: -50px 0 0 50%;}
.button2{width: 100px; height: 50px;}
.menu{background: #808080; height: 50px; color: white;}
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
<c:if test="${empty movie }">
	<h1>데이터가 없습니다.</h1>
	<button><a href="/marvel/list">메인</a></button>
</c:if>
<c:if test="${not empty movie }">
<table>
<c:if test="${movie.wDate.second eq 0 }">
		<fmt:parseDate  var="w"  value="${movie.wDate }"  pattern="yyyy-MM-dd'T'HH:mm"/>
		<fmt:formatDate var="wd" value="${w }" pattern="yyyy-MM-dd HH:mm"/>
	</c:if>
	<c:if test="${movie.wDate.second ne 0 }">
		<fmt:parseDate  var="w"  value="${m.writeDate }"  pattern="yyyy-MM-dd'T'HH:mm:ss"/>
		<fmt:formatDate var="wd" value="${w }" pattern="yyyy-MM-dd HH:mm:ss"/>
	</c:if>
	<c:if test="${movie.uDate.second eq 0 }">
		<fmt:parseDate  var="u"  value="${m.updateDate }"  pattern="yyyy-MM-dd'T'HH:mm"/>
		<fmt:formatDate var="ud" value="${u }" pattern="yyyy-MM-dd HH:mm"/>
	</c:if>
	<c:if test="${movie.uDate.second ne 0 }">
		<fmt:parseDate  var="u"  value="${m.updateDate }"  pattern="yyyy-MM-dd'T'HH:mm:ss"/>
		<fmt:formatDate var="ud" value="${u }" pattern="yyyy-MM-dd HH:mm:ss"/>
	</c:if>
	<tr>
		<th class="menu">분류</th>
		<th class="menu">내용</th>
	</tr>
	<tr>
		<td class="front">id</td>
		<td class="end">${movie.id }</td>
	</tr>
	<tr>
		<td class="front">장르</td>
		<td class="end">${movie.genre }</td>
	</tr>
	<tr>
		<td class="front">제작자</td>
		<td class="end">${movie.director }</td>
	</tr>
	<tr>
		<td class="front">시나리오</td>
		<td class="end">${movie.scenario }</td>
	</tr>
	<tr>
		<td class="front">영화 제목</td>
		<td class="end">${movie.title }</td>
	</tr>
	<tr>
		<td class="front">프로듀서</td>
		<td class="end">${movie.producer }</td>
	</tr>
	<tr>
		<td class="front">출연진</td>
		<td class="end">${movie.actor }</td>
	</tr>
	<tr>
		<td class="front">음악감독</td>
		<td class="end">${movie.music }</td>
	</tr>
	<tr>
		<td class="front">제작 시작일</td>
		<td class="end">${movie.beginFilming }</td>
	</tr>
	<tr>
		<td class="front">제작 완료일</td>
		<td class="end">${movie.endFilming }</td>
	</tr>
	<tr>
		<td class="front">개봉일</td>
		<td class="end">${movie.releaseDate }</td>
	</tr>
	<tr>
		<td class="front">상영 시간</td>
		<td class="end">${movie.runningTime }</td>
	</tr>
	<tr>
		<td class="front">제작 비용</td>
		<td class="end">${movie.productionCost }</td>
	</tr>
	<tr>
		<td class="front">북아메리카 박스 오피스</td>
		<td class="end">${movie.northAmericaBoxOffice }</td>
	</tr>
	<tr>
		<td class="front">월드 박스 오피스</td>
		<td class="end">${movie.worldBoxOffice }</td>
	</tr>
	<tr>
		<td class="front">한국 관객수</td>
		<td class="end">${moviel.koreanNumberOfAudience }</td>
	</tr>
	<tr>
		<td class="front">연령제한</td>
		<td class="end">${movie.rate }</td>
	</tr>
	<tr>
		<td class="front">작성일</td>
		<td class="end">${movie.wDate }</td>
	</tr>
	<tr>
		<td class="front">업데이트 날짜</td>
		<td class="end">${movie.uDate }</td>
	</tr>
</table>
	<button class="button"><a href="/marvel/list">메인 화면 가기</a></button> 
	<br>
	<br>
</c:if>	
</body>
</html>