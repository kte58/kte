<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" href="resources/css/bootstrap.css" />
	<link rel="stylesheet" href="resources/css/simplelogin.css" />
</head>

<body>
	<div class="container">
		<div class="card card-container" style="margin-top:30px">
			<h2 class='login_title text-left' style="color:grey">Login</h2>
			<hr>
			
			<form class="form-signin" action="login.do" method="post">
				<span id="reauth-email" class="reauth-email"></span>
				
				<p class="input_title">Email</p>
				<input type="text" name="email" id="inputEmail" class="login_box" placeholder="이메일" required autofocus>
				
				<p class="input_title">Password</p>
				<input type="password" name="pw" id="inputPassword" class="login_box" placeholder="암호" required>
				
				<div id="remember" class="checkbox">
					<label></label>
				</div>
				<input class="btn btn-lg btn-primary btn-block" type="submit" value="Login" />
				 <div align="center">
                <a href="home.do">메인</a> or <a href="join.do">회원가입</a>
                </div>
			</form><!-- /form -->
		</div><!-- /card-container -->
    	</div><!-- /container -->


	<script type="text/javascript" src="resources/js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.twbsPagination.js"></script>
	<script>
		$(function() {
			$('#pagination-demo').twbsPagination({
		        totalPages: 35,
		        visiblePages: 7,
		        onPageClick: function (event, page) {
		        	$('#page-content').text('Page ' + page);
		            //window.location.href="board.do?page="+page;
		        }
		    });
		});
	</script>	
</body>
</html>


