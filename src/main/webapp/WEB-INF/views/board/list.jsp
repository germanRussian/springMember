<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!-- JSP include -->
<%-- <%@ include file="../includes/header.jsp"%> --%>
<!-- JAP액션테그  include -->
<jsp:include page="../includes/header.jsp"></jsp:include>


<!-- ------------------------------------------------------------------------------------------------------ -->


<div class="col-md-12">
	<h4 class="m-b-lg">Tables </h4>
</div>
<!-- END column -->


<div class="col-md-12">
	<div class="widget p-lg">
		<h4 class="m-b-lg">홈 > 게시판 목록</h4>


		<p class="m-b-lg docs">
			Add
			<code>.table-hover</code>
			to enable a hover state on table rows within a
			<code>&lt;tbody&gt;</code>
			.
		</p>

		<table class="table table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>제 목</th>
					<th>이름</th>
					<th>내용</th>
					<th>작성 시간</th>
					<th>수정 시간</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach var="list" items="${list }" varStatus="index">
					<tr>
						<%-- ${index.count } --%>
						<th><c:out value="${list.bno }" /></th>
						<th><a href=""> <c:out value="${list.title }" /></a></th>
						<th><c:out value="${list.content }" /></th>
						<th><c:out value="${list.writer}" /></th>
						<th><c:out value="${list.regdate}" /></th>
						<th><c:out value="${list.updatedate}" /></th>
					</tr>

				</c:forEach>


			</tbody>
		</table>
		<br>
		<button onclick="">글 작성하기</button>
	</div>
	<!-- .widget -->
</div>
<!-- END column -->
<!-- ------------------------------------------------------------------------------------------------------ -->

<!-- JSP include -->
<%-- <%@ include file="../includes/footer.jsp"%> --%>
<!-- JSP 액션태그 include -->
<jsp:include page="../includes/footer.jsp"></jsp:include>