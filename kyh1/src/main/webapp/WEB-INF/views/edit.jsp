<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<title>Edit</title>
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<link rel="stylesheet" href="resources/css/w3.css" />


</head>
<body>

	<div class="w3-container" style="margin-top: 50px">

		<form action="edit" method="post" id="form">

			<div
				style="width: 600px; margin: 0px auto; border: 1px solid #cccccc; padding: 30px">
				<h3>회원정보수정</h3>
				<hr />
				<div class="w3-row">
					<div class="w3-col" style="width: 100px">
						<p>이메일</p>
					</div>
					<div class="w3-rest">
						<div class="w3-left">
							<input type="text" style="width: 300px" name="email" id="email"
								class="w3-input w3-border w3-round" "
								value="${vo.id}" readonly />
						</div>
						
					</div>
				</div>

				<div class="w3-row">
					<div class="w3-col" style="width: 100px">
						<p>이름</p>
					</div>
					<div class="w3-rest">
						<input type="text" id="name" name="name"
							class="w3-input w3-border w3-round" placeholder="이름를 입력하세요."
							value="${vo.name}" />
					</div>
				</div>

				<div class="w3-row">
					<div class="w3-col" style="width: 100px">
						<p>휴대폰</p>
					</div>
					<div class="w3-rest">
						<input type="text" id="phone" name="phone"
							class="w3-input w3-border w3-round" placeholder="휴대폰번호를 입력하세요."
							value="${vo.phone}" />
					</div>
				</div>

				<div class="w3-row">
					<div class="w3-col" style="width: 100px">
						<p>가입날짜</p>
					</div>
					<div class="w3-rest">
						<input type="text" id="date1" name="date1"
							class="w3-input w3-border w3-round" value="${vo.date1}" readonly/>
					</div>
				</div>

				<div align="right" style="margin-top: 15px">
					<input type="submit" class="w3-btn w3-blue" value="수정완료" /> <a
						href="home.do" class="w3-btn w3-green">메인</a>
				</div>
			</div>
		</form>
	</div>



	<script type="text/javascript" src="resources/js/jquery-1.11.1.js"></script>
	<script type="text/javascript"
		src="resources/js/jquery.validate.min.js"></script>
	<script type="text/javascript"
		src="resources/js/additional-methods.min.js"></script>
	<script type="text/javascript"
		src="resources/js/localization/messages_ko.min.js"></script>
	<script>
		$(function() {

		});
	</script>
</body>
</html>


