<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>myPage</title>
		<link rel="stylesheet" type="text/css" href="css/reset.css">
		<link rel="stylesheet" type="text/css" href="css/common.css">
		<link rel="stylesheet" type="text/css" href="css/loginSection.css">
		<link rel="stylesheet" type="text/css" href="css/myPage.css">
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp"/>
		<section>
			<div id="myPageBox">
					<h1>My page</h1>
					
					<ul class="userPage">
						<li><a href="#"><span>activity</span></a></li>
						<li><a href="#"><span>edit</span></a></li>
					</ul> <!-- userPage -->
				<div id="userProfileBox">
					<div id="userBox">
						<div id="boxImage"><img src="image/user.png"></div>
						<div id="boxUser">
	
							<ul id="fontBox">
								<li>hong</li>
								<li>0</li>
								<li>POINT</li>
							</ul>
							
							<ul id ="pointBox">
								<li><img src="image/yellowCircle.png"><span class="point">0</span></li>
								<li><img src="image/grayCircle.png"><span class="point">0</span></li>
								<li><img src="image/redCircle.png"><span class="point">0</span></li>
							</ul> <!-- pointBox -->
						</div> <!-- boxUser -->
						
					</div> <!-- userBox -->
					<div id="userInfo">
						<ul id ="userinfoBox">
							<li><h2>닉네임</h2></li>
							<li><img src="image/homeIcon.png"><span class="nameInfo">소속</span></li>
							<li><img src="image/mailIcon.png"><span class="nameInfo">이메일 주소</span></li>
						</ul> <!-- userinfoBox -->
					</div> <!-- userInfo -->
				</div> <!-- userProfileBox -->
				<ul class ="tagBox">
					<li><a href="#"><span>tag</span></a></li>
					<li><a href="#"><span>question</span></a></li>
					<li><a href="#"><span>answer</span></a></li>
					<li><a href="#"><span>comment</span></a></li>
				</ul> <!-- tagBox -->
				<form name="loginForm" method="post">
					<div id="input">
						<input type="text" id="tagAct" placeholder="전체 태그 활동">
						<input type="text" id="tagCht" placeholder="전체 태그 차트">
					</div> <!-- input -->					
				</form>
			</div><!--myPageBox  -->
		</section>
		<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
	</body>
</html>