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
	<h4 class="m-b-lg">BoardListPage</h4>
</div>
<!-- END column -->


<div class="col-md-12">
	<div class="widget p-lg">
		<!-- <h4 class="m-b-lg" style="display: inline;"> 홈 > 게시판 목록 (BoardListPage)  </h4>
		<a  class="btn btn-success" role="button" href="#" style="float: right">Register New Page</a> -->
		<h4 class="m-b-lg">
			Home >> BoardListPage <a href="register" style="float: right">Register
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
					<th>#번호</th>
					<th>제 목</th>
					<th>이름</th>
					<th>내용</th>
					<th>작성일</th>
					<th>수정일</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach var="BoardListPage" items="${list }" varStatus="index">
					<tr>
						<%-- ${index.count } --%>
						<th>${BoardListPage.bno }</th>
						<th><a href="get?bno=${BoardListPage.bno }">
								${BoardListPage.title }</a></th>
						<!-- get방식으로 값 넘겨준다. -->
						<th>${BoardListPage.content }</th>
						<th>${BoardListPage.writer}</th>
						<th><fmt:formatDate pattern="yyyy-MM-dd (hh:mm:ss)"
								value="${BoardListPage.regdate}" /></th>
						<th><fmt:formatDate pattern="yyyy-MM-dd (hh:mm:ss)"
								value="${BoardListPage.updatedate}" /></th>
					</tr>

				</c:forEach>


			</tbody>
		</table>
		<nav style="text-align: right;">
			<ul class="pagination">

				<!-- 이전 페이지 -->
				<c:if test="${pageMaker.prev}">
					<li class="paginate_button"><a href="?pageNum=${pageMaker.startPage-1}"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
				</c:if>


				<!-- 페이징 목록 -->
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
					var="num">
					<li class="paginate_button"><a href="?pageNum=${num}">${num}</a></li>
				</c:forEach>


				<!-- 다음 페이지 -->
				<c:if test="${pageMaker.next}">
					<li class="paginate_button"><a href="?pageNum=${pageMaker.endPage+1}"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</c:if>
			</ul>
		</nav>
	</div>
	<!-- .widget -->
</div>
<!-- END column -->
<!-- ------------------------------------------------------------------------------------------------------ -->

<!-- JSP include -->
<%-- <%@ include file="../includes/footer.jsp"%> --%>
<!-- JSP 액션태그 include -->
<jsp:include page="../includes/footer.jsp"></jsp:include>