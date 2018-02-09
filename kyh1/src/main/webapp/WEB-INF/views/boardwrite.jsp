<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<title>Boardwrite</title>
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
					<form:form action="boardwrite.do" modelAttribute="bvo" method="post"  enctype="multipart/form-data">
						<div
							style="width: 600px; margin: 50px auto; border: 1px solid #cccccc; padding: 30px">
							<h3>게시판글쓰기</h3>
							<hr />

							<div class="w3-row" style="margin-top: 10px">
								<div class="w3-col" style="width: 100px;">
									<div style="line-height: 40px; vertical-align: middle;">
										글번호</div>
								</div>
								<div class="w3-rest" style="border: 0px solid #ccc;">
									<form:input type="text" path="no" readonly="true"
										class="w3-input w3-border w3-round" />
								</div>
							</div>
							
							<div class="w3-row" style="margin-top: 10px">
								<div class="w3-col" style="width: 100px;">
									<div style="line-height: 40px; vertical-align: middle;">
										제목</div>
								</div>
								<div class="w3-rest" style="border: 0px solid #ccc;">
									<form:input type="text" path="title"
										class="w3-input w3-border w3-round" />
								</div>
							</div>

							<div class="w3-row" style="margin-top: 10px">
								<div class="w3-col" style="width: 100px">
									<div style="line-height: 40px; vertical-align: middle;">내용</div>
								</div>
								<div class="w3-rest">
									<form:textarea path="content" rows="6"
										class="w3-input w3-border w3-round"></form:textarea>
								</div>
							</div>


							<div class="w3-row" style="margin-top: 10px">
								<div class="w3-col" style="width: 100px">
									<div style="line-height: 40px; vertical-align: middle;">작성자</div>
								</div>
								<div class="w3-rest">
									<form:input type="text" path="writer" readonly="true"
										class="w3-input w3-border  w3-round" />
								</div>
							</div>

							<hr />

							<div class="w3-row" style="margin-top: 10px">
								<div class="w3-col" style="width: 100px">
									<p></p>
								</div>
								
								<div class="w3-rest" align="right">
								       <input type ="file"  name="file_0" />
								       <input type ="file"  name="file_1" />
								       <input type ="file"  name="file_2" />
									<input type="submit" class="w3-button w3-green w3-round" value="제출하기" />
										<a href="board.do" class="w3-button w3-blue w3-round">목록</a>
								</div>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


