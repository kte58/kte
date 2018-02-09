<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<title>Board</title>
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<link rel="stylesheet" href="resources/css/w3.css" />


</head>
<body>
	<div class="container">
		<div class="row" style="margin-top: 5px">
			<div class="col-md-3">
				<ul class="list-group">
					<li class="list-group-item"><a href="home.do">메인</a></li>
					<li class="list-group-item"><a href="board.do">게시판</a></li>
					<li class="list-group-item"><a href="boardwrite.do">글쓰기</a></li>
				</ul>
				<div style="height: 400px"></div>
			</div>
				<div class="col-md-9" style="border-left: 1px solid #ccc">

				<div class="w3-container">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>글번호</th>
							<th>글제목</th>
							<th>작성자</th>
							<th>조회수</th>
							<th>날짜</th>
						</tr>
					</thead>
					<tbody>
						
						<c:forEach var="vo" items="${list}" varStatus="i">
							<c:if test="${i.index%2 == 1}">
								<tr>
							</c:if>
							<c:if test="${i.index%2 == 1}">
								<tr class="active">
							</c:if>
							<td>${vo.no}</td>
							<td>${vo.title}</td>
							<td>${vo.writer}</td>
							<td>${vo.hit}</td>
							<td>${vo.date1}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<div align="center">
				<ul id="pagination-demo" class="pagination-sm"></ul>
				</div>
				
				<div align="right">
				<a href="boardwrite.do" class="btn btn-success">글쓰기</a>
				<a href="home.do" class="btn btn-primary">메인</a>
			</div>
			</div>
		</div>
	</div>
</div>
	

	<script type="text/javascript" src="resources/js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="http://ihongss.com/assets/js/jquery.twbsPagination-1.3.1.js"></script>
	<script>
		$(function() {
			 $('#pagination-demo').twbsPagination({
		        totalPages: 35,
		        visiblePages: 7,
		        href:'?page={{number}}',
		        onPageClick: function (event, page) {

		        }
		    });
		});
	</script>

</body>
</html>


