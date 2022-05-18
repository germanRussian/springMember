<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록 화면 구현</title>
</head>
<body>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>글 번호</th>
				<th>제 목</th>
				<th>내용</th>
				<th>작성 시간</th>
				<th>수정 시간</th>
			</tr>
		</thead>

		
		<tbody>

			<c:forEach var="list" items="${list }" varStatus="index">
				<tr>
					<th><c:out value="${list.bno }" /></th>
					<th><c:out value="${list.title }" /></th>
					<th><c:out value="${list.content }" /></th>
					<th><c:out value="${list.writer}" /></th>
					<th><c:out value="${list.regdate}" /></th>
					<th><c:out value="${list.updatedate}" /></th>
				</tr>

			</c:forEach>

		</tbody>
	</table>
	<button onclick="">글 작성하기</button>
</body>
</html>