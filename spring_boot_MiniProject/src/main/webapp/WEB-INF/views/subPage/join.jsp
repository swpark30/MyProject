<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<script src="js/jquery-3.6.0.min.js"></script>
		<script src="js/MenuTab.js"></script>
		<script src="js/join.js"></script>
		<link rel="stylesheet" type="text/css" href="css/reset.css">
		<link rel="stylesheet" type="text/css" href="css/common.css">
		<link rel="stylesheet" type="text/css" href="css/joinSection.css">
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp"/>
		<section>
			<div id="loginBox">
				<h1>회원가입</h1>
				<h2><a href="#"><img src="../image/logo-withus3.PNG"></a></h2>
				<h4>
					계정이 이미 있는 경우에는 <a href="login.html"><span class="colorFont">로그인</span></a>해주세요.<br><br>
					가입을 하면 <span class="colorFont">WITH:US의 개발자 사이트의 이용약관</span>,<br><br>
					<span class="colorFont">개인정보취급방침</span>에 동의하게 됩니다.<br><br>
					가입 후 아이디는 변경할 수 없습니다.
				</h4>
				
				<form method="post" id="joinFrm" name="joinFrm">
					<div id="inputBox">
						<div class="windowFontBox">
							<span>이름</span>
							<div class="inputEvent">
								<input type="text" id="nameInput">
								<i></i>
							</div><!--inputEvent  -->
						</div> <!-- "windowFontBox" -->	
					
						<div class="windowFontBox">
							<span>닉네임</span>
							<div class="inputEvent">
								<input type="text" id="nicknameInput">
								<i></i>
							</div> <!-- inputEvent -->
						</div> <!-- "windowFontBox" -->
					
						<div class="windowFontBox">
							<span>아이디</span>
							<div class="inputEvent">
								<input type="text" id="idInput">
								<i></i>
							</div> <!-- inputEvent -->
						</div> <!-- "windowFontBox" -->
					
						<div id="emailBox">
						<div class ="windowFontBox"> 	
							<span>이메일</span>
							<div class="inputEvent">
								<input type="text" id="emailInput">
								<i></i>
							</div> <!-- inputEvent -->
							&nbsp;&nbsp;
						</div> <!-- windowFontBox -->
						
						<div id="emailSelectBox">
							<select class="emailSelect">
								<option value="naver" selected>@naver.com</option>
								<option value="daum">@daum.net</option>
								<option value="nate">@nate.com</option>
								<option value="kakao">@kakao.com</option>
								<option value="gmail">@gmail.com</option>
							</select>
							&nbsp;&nbsp;
							<input type="button" id="emailBtn" class="btn-gradient cyan" value="확인">
							<i></i>
							</div> <!-- emailSelectBox -->
						</div>	<!-- emailBox  -->
					
						<div class ="windowFontBox"> 
							<span>비밀번호</span>
							<div class="inputEvent">
								<input type="password" id="pwInput">
								<i></i>
							</div> <!-- inputEvent  -->	
							<a id="pwMent">8자~20자 이내, 영문,숫자,특수문자를 혼합하여 입력해주세요.</a> <!-- pwMent -->
						</div> <!-- windowFontBox -->
						
						<div class ="windowFontBox"> 
							<span>비밀번호 확인</span>
							<div class="inputEvent">
								<input type="password" id="pwCfmInput">
								<i></i>
							</div>	<!-- inputEvent -->
						</div> <!-- windowFontBox -->
							
						<input type="submit" id="joinBtn" class="btn-gradient cyan" value="가입하기">
					</div> <!-- inputBox -->
				</form>
				
			</div><!--loginBox  -->
		</section>
		<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
	</body>
</html>