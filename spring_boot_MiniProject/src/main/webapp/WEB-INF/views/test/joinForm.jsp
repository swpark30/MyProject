<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/> "></script>
		<script src="<c:url value='/js/test/MenuTab.js'/> "></script>
		<script src="<c:url value='/js/test/join.js'/> "></script>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/reset.css'/> ">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/> ">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/joinSection.css'/> ">
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout_test/top.jsp"/>
		<section>
			<div class="loginBox">
				<h1>회원가입</h1>
				<h2><a href="#"><img src="<c:url value='/image/logo-withus3.PNG'/> "></a></h2>
				<h4>
					계정이 이미 있는 경우에는 <a href="<c:url value='/test/login.jsp'/> "><span class="colorFont">로그인</span></a>해주세요.<br><br>
					가입을 하면 <span class="colorFont">WITH:US의 개발자 사이트의 이용약관</span>,<br><br>
					<span class="colorFont">개인정보취급방침</span>에 동의하게 됩니다.<br><br>
					가입 후 아이디는 변경할 수 없습니다.
				</h4>
				
				<form method="post" class="joinFrm" id="joinFrm">
					<div class="inputBox">
						<div class="windowFontBox">
							<span>이름</span>
							<div class="inputEvent">
								<input type="text" class="nameInput" id="userName">
								<i></i>
							</div><!--inputEvent  -->
						</div> <!-- "windowFontBox" -->	
					
						<div class="windowFontBox">
							<span>닉네임</span>
							<div class="inputEvent">
								<input type="text" id="userNickname" class="nicknameInput">
								<i></i>
							</div> <!-- inputEvent -->
						</div> <!-- "windowFontBox" -->
					
						<div class="windowFontBox">
							<span>아이디</span>
							<div class="inputEvent">
								<input type="text" id="userId" class="idInput">
								<i></i>
							</div> <!-- inputEvent -->
						</div> <!-- "windowFontBox" -->
					
						<div class="emailBox">
						<div class ="windowFontBox"> 	
							<span>이메일</span>
							<div class="inputEvent">
								<input type="text" id="userEmail1" class="emailInput">
								<i></i>
							</div> <!-- inputEvent -->
							&nbsp;&nbsp;
						</div> <!-- windowFontBox -->
						
						<div class="emailSelectBox">
							<select class="emailSelect" id="userEmail2">
								<option value="naver" selected>@naver.com</option>
								<option value="daum">@daum.net</option>
								<option value="nate">@nate.com</option>
								<option value="kakao">@kakao.com</option>
								<option value="gmail">@gmail.com</option>
							</select>
							&nbsp;&nbsp;
							<input type="button" class="emailBtn btn-gradient cyan" value="확인">
							<i></i>
							</div> <!-- emailSelectBox -->
						</div>	<!-- emailBox  -->
					
						<div class ="windowFontBox"> 
							<span>비밀번호</span>
							<div class="inputEvent">
								<input type="password" id="userPw" class="pwInput">
								<i></i>
							</div> <!-- inputEvent  -->	
							<a class="pwMent">8자~20자 이내, 영문,숫자,특수문자를 혼합하여 입력해주세요.</a> <!-- pwMent -->
						</div> <!-- windowFontBox -->
						
						<div class ="windowFontBox"> 
							<span>비밀번호 확인</span>
							<div class="inputEvent">
								<input type="password" class="pwCfmInput">
								<i></i>
							</div>	<!-- inputEvent -->
						</div> <!-- windowFontBox -->
							
						<input type="submit" class="joinBtn btn-gradient cyan" value="가입하기">
					</div> <!-- inputBox -->
				</form>
				
			</div><!--loginBox  -->
		</section>
		<c:import url="/WEB-INF/views/layout_test/bottom.jsp"/>
	</body>
</html>