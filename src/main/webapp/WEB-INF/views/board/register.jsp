<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<!-- JSP include -->
<%-- <%@ include file="../includes/header.jsp"%> --%>
<!-- JAP액션테그  include -->
<jsp:include page="../includes/header.jsp"></jsp:include>


<!-- ------------------------------------------------------------------------------------------------------ -->


<div class="col-md-12">
	<h4 class="m-b-lg">Register New Page</h4>
</div>
<!-- END column -->


<div class="col-md-12">
	<div class="widget p-lg">
		<!-- <h4 class="m-b-lg" style="display: inline;"> 홈 > 게시판 목록 (BoardListPage)  </h4>
		<a  class="btn btn-success" role="button" href="#" style="float: right">Register New Page</a> -->
		<h4 class="m-b-lg">дом >> Зарегистрировать новую страницу</h4>
		<p class="m-b-lg docs">Пожалуйста, напишите статью.</p>
		
		
		<div class="panel-body">
			<form action="register" method="post">
				<div class="form-group">
					<!-- //name은 서버와 연동 -->
					<lable> 제 목 </lable>
					<input type="text" name="title" id="" class="form-control" value=""
						required="required" placeholder="제목을 작성해주세요.">
				</div>
				<div>
					<lable> 내 용 </lable>
					<textarea rows="" cols="" name="content" id="content"
						class="form-control" style="resize: none;" required="required"placeholder="내용을 작성해주세요."></textarea>
				</div>
				<div>
					<lable> 작성자 </lable>
					<input type="text" name="writer" id="writer" class="form-control"
						value="" required="required"placeholder="작성자를 작성해주세요.">
				</div>
				<br>
				<div align="right">
					<button type="submit" class="btn btn-default" style="color:#9ececc; border: 0;">등록</button>
					<button type="button" class="btn btn-default" style="color:#9ececc; border: 0;" onclick="">취소</button>
				</div>
			</form>
			
			
		</div>
	</div>
	<!-- .widget -->
</div>
<!-- END column -->
<!-- ------------------------------------------------------------------------------------------------------ -->

<!-- JSP include -->
<%-- <%@ include file="../includes/footer.jsp"%> --%>
<!-- JSP 액션태그 include -->
<jsp:include page="../includes/footer.jsp"></jsp:include>