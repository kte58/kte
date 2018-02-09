<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Join</title>
	<link rel="stylesheet" href="resources/css/bootstrap.css" />
	<link rel="stylesheet" href="resources/css/w3.css" />
	

</head>
<body>

	<div class="w3-container" style="margin-top:50px">
	
		<form action="join.do" method="post" id="form">
		
		<div style="width: 600px; margin: 0px auto; border: 1px solid #cccccc; padding: 30px">
				<h3>회원가입</h3>
				<hr />
			<div class="w3-row">
					<div class="w3-col" style="width: 100px">
						<p>이메일</p>
					</div>
					<div class="w3-rest">
						<div class="w3-left">
							<input type="text" style="width: 300px" name="email" id="email"
								class="w3-input w3-border w3-round" placeholder="이메일을 입력하세요."/>
						</div>
						<div class="w3-left" style="margin-left: 5px">
							<button class="btn green" type="button" id="btn_idcheck">중복확인</button>
						</div>
					</div>
				</div>
				
				
			<div class="w3-row">
					<div class="w3-col" style="width: 100px">
						<p>암호</p>
					</div>
					<div class="w3-rest">
						<input type="password" id="pw" name="pw"
							class="w3-input w3-border w3-round" placeholder="암호를 입력하세요."/>
					</div>
				</div>
				
				<div class="w3-row">
					<div class="w3-col" style="width: 100px">
						<p>암호1</p>
					</div>
					<div class="w3-rest">
						<input type="password" id="pw1" name="pw1"
							class="w3-input w3-border w3-round" placeholder="암호를 다시 입력하세요."/>
					</div>
				</div>
			
			<div class="w3-row">
					<div class="w3-col" style="width: 100px">
						<p>이름</p>
					</div>
					<div class="w3-rest">
						<input type="text" id="name" name="name"
							class="w3-input w3-border w3-round" placeholder="이름를 입력하세요."/>
					</div>
				</div>
			
			<div class="w3-row">
					<div class="w3-col" style="width: 100px">
						<p>휴대폰</p>
					</div>
					<div class="w3-rest">
						<input type="text" id="phone" name="phone"
							class="w3-input w3-border w3-round" placeholder="휴대폰번호를 입력하세요." />
					</div>
				</div>
	
			<div align="right" style="margin-top:15px">
			<input type="submit" class="w3-btn w3-blue" value="회원가입" />
			<a href="home.do" class="w3-btn w3-green">메인</a>
			</div>
			</div>
		</form>
	</div>
	


	<script type="text/javascript" src="resources/js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="resources/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="resources/js/additional-methods.min.js"></script>
	<script type="text/javascript" src="resources/js/localization/messages_ko.min.js"></script>
	<script>
		$(function() {
		
		});
	</script>
</body>
</html>


