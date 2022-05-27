<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>상세보기 및 수정</title>

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
<title>상세보기</title>
</head>
<body>


	<div class="col-md-12">
		<div class="widget p-lg">
			<!-- <h4 class="m-b-lg" style="display: inline;"> 홈 > 게시판 목록 (BoardListPage)  </h4>
		<a  class="btn btn-success" role="button" href="#" style="float: right">Register New Page</a> -->
			<h4 class="m-b-lg">Member Detail</h4>
			<p class="m-b-lg docs">작성된 글입니다.</p>


			<div class="panel-body">
				<form action="" method="post" id="frm">
					<input type="hidden" name="uname" id="uname" value="${member.uname }">
					<!-- //name은 서버와 연동 -->
					<div>
						<lable> uname </lable>
						<input rows="" cols="" name="uname" id="uname"
							value="${member.uname }" class="form-control" required="required"
							placeholder="이름을 작성해주세요.">
					</div>
					<div>
						<lable> schoolname </lable>
						<input type="text" name="schoolname" id="schoolname"
							class="form-control" value="${member.schoolname }" required="required"
							placeholder="학교 이름을 작성해주세요.">
					</div>


					<div class="form-group">

						<lable> gradeclass </lable>
						<input type="text" name="gradeclass" id="gradeclass"
							class="form-control" value="${member.gradeclass }" required="required"
							placeholder="gradeclass을 작성해주세요.">
					</div>
					<div>
						<lable> uid </lable>
						<input rows="" cols="" name="uid" id="uid" value="${member.uid}"
							class="form-control" required="required"
							placeholder="uid을 작성해주세요.">
					</div>
					<div>
						<lable> upw </lable>
						<input type="text" name="upw" id="upw" class="form-control"
							value="${member.upw }" required="required"
							placeholder="upw를 작성해주세요.">
					</div>
					<div class="form-group">

						<lable> route </lable>
						<input type="text" name="route" id="" class="form-control"
							value="${member.route }" required="required"
							placeholder="route을 작성해주세요.">
					</div>

					<div class="form-group">

						<lable> boardingplace </lable>
						<input type="text" name="boardingplace" id="" class="form-control"
							value="${member.boardingplace }" required="required"
							placeholder="boardingplace을 작성해주세요.">
					</div>
					<br>
					<div align="right">
						<button type="submit" class="btn btn-default"
							style="color: #9ececc; border: 0;">수정</button>
						<button type="button" class="btn btn-default"
							style="color: #9ececc; border: 0;" id="btn_del"<%-- onclick="remove?num=${board.num }" --%>>삭제</button>
					</div>
				</form>


			</div>
		</div>
		<!-- .widget -->
	</div>
	<!-- END column -->

	<script>
		$(document).ready(function() {
			$("#btn_del").on("click", function() {
				if (confirm("삭제?")) {
					//(GET 방식) 
					//location.href="remove?num=${board.num}"

					//post 방식은 id가 필요, 액션 속성을 바꿔주는 것.
					$("#frm").attr("action", "remove");
					$("#frm").submit();

					console.log("삭제버튼" + res);
				}
			});
		});
	</script>


</body>
</html>