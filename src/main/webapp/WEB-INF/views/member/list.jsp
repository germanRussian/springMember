<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
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
<script src="/resources/libs/bower/jquery/dist/jquery.js"></script>
<script>
	Breakpoints();
</script>
<title>리스트</title>
</head>
<body>


	<div class="col-md-12">
		<div class="widget p-lg">
			<!-- <h4 class="m-b-lg" style="display: inline;"> 홈 > 게시판 목록 (member)  </h4>
		<a  class="btn btn-success" role="button" href="#" style="float: right">Register New Page</a> -->
			<h4 class="m-b-lg">
				Member List <a href="register" style="float: right">Register
					New Page</a>
			</h4>


			<%-- <p class="m-b-lg docs">
			Add
			<code>.table-hover</code>
			to enable a hover state on table rows within a
			<code>&lt;tbody&gt;</code>
			.
		</p> --%>

			<table class="table table-hover">
				<thead>
					<tr>
						
						<th>num</th>
						<th>uname</th>
						<th>schoolname</th>
						<th>gradeclass</th>
						<th>uid</th>
						<th>sha1(upw)</th>
						<th>route</th>
						<th>boardingplace</th>
						<th>joindate</th>

					</tr>
				</thead>
				<tbody>
					
						<c:forEach var="member" items="${list }" varStatus="index">

							<tr>
								
								<th><a href="get?num=${member.num }">${member.num }</a></th>
								<th>${member.uname }</th>
								<th>${member.schoolname }</th>
								<th>${member.gradeclass }</th>
								<th>${member.uid }</th>
								<th>${member.upw }</th>
								<th>${member.route }</th>
								<th>${member.boardingplace }</th>
								<th>${member.joindate}</th>
							<tr>
						</c:forEach>
				

				</tbody>
			</table>

			<!-- Paging -->
			<nav style="text-align: center;">
				<br>
				<div style="display: inline;">
					<!-- Searching -->
					<form action="">
						<select name="type" class="btn btn-default" style="height: 35px;">
							<option value="">SELECT</option>
							<option value="uname"
								${pageMaker.cri.type == "uname" ? "selected='selected'" : ""}>uname</option>
							<option value="uid"
								${pageMaker.cri.type == "uid" ? "selected='selected'" : "" }>uid</option>


						</select> <input type="text" name="keyword" class="btn btn-default"
							style="height: 35px" value="${pageMaker.cri.keyword}"
							placeholder="keyword">
						<button class="btn btn-default" style="height: 35px">SEARCH</button>
					</form>
				</div>


				<div>

					<ul class="pagination">

						<!-- 이전 페이지 -->
						<c:if test="${pageMaker.prev}">
							<li class="paginate_button"><a
								href="?pageNum=${pageMaker.startPage-1}" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
							</a></li>
						</c:if>


						<!-- 페이징 목록 -->
						<c:forEach begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}" var="num">
							<li class="paginate_button"><a href="?pageNum=${num}">${num}</a></li>
						</c:forEach>


						<!-- 다음 페이지 -->
						<c:if test="${pageMaker.next}">
							<li class="paginate_button"><a
								href="?pageNum=${pageMaker.endPage+1}" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
						</c:if>
					</ul>
				</div>
			</nav>
		</div>
		<!-- .widget -->
	</div>

	
</body>
</html>