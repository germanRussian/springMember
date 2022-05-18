<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta name="description" content="Admin, Dashboard, Bootstrap" />
<link rel="shortcut icon" sizes="196x196"
	href="/resources/assets/images/logo.png">
<title>목록 화면 구현</title>

<link rel="stylesheet"
	href="/resources/libs/bower/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="/resources/libs/bower/material-design-iconic-font/dist/css/material-design-iconic-font.css">
<!-- build:css ../assets/css/app.min.css -->
<link rel="stylesheet"
	href="/resources/libs/bower/animate.css/animate.min.css">
<link rel="stylesheet"
	href="/resources/libs/bower/fullcalendar/dist/fullcalendar.min.css">
<link rel="stylesheet"
	href="/resources/libs/bower/perfect-scrollbar/css/perfect-scrollbar.css">
<link rel="stylesheet" href="/resources/assets/css/bootstrap.css">
<link rel="stylesheet" href="/resources/assets/css/core.css">
<link rel="stylesheet" href="/resources/assets/css/app.css">
<!-- endbuild -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800,900,300">
<script
	src="/resources/libs/bower/breakpoints.js/dist/breakpoints.min.js"></script>
<script>
	Breakpoints();
</script>
<title>목록 화면 구현</title>
</head>
<body>



	<div class="widget p-lg">
		<h4 class="m-b-lg"> 홈 > 게시판 목록</h4>


		<table class="table table-hover">
			<tbody>
				<tr>
					<th>#</th>
					<th>제 목</th>
					<th>이름</th>
					<th>내용</th>
					<th>작성 시간</th>
					<th>수정 시간</th>
				</tr>

				<c:forEach var="list" items="${list }" varStatus="index">
					<tr >
						<th><c:out value="${list.bno }" /></th>
						<th><a href=""> <c:out value="${list.title }" /> </a></th>
						<th><c:out value="${list.content }" /></th>
						<th><c:out value="${list.writer}" /></th>
						<th><c:out value="${list.regdate}" /></th>
						<th><c:out value="${list.updatedate}" /></th>
					</tr>

				</c:forEach>


			</tbody>
		</table>
		<button onclick="">글 작성하기</button>
	</div>
</body>
</html>