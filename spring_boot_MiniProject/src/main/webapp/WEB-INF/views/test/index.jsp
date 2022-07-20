<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>MainPage</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/index.css'/> ">
		<script src="<c:url value='/js/jquery-3.6.0.min.js' /> "></script>
		<script src="<c:url value='/js/index.js' /> "></script>
	</head>
	<body>
		<div class="wrap">
			<header>
				<div class="mainMenu">
					<div class="menuImg">
						<a href="<c:url value='/test'/>"><img src="<c:url value='/image/logo-withus.png'/> "></a>
					</div>
					<div class="topMenu">
						<div class="underline"></div>
						<a href=<c:url value='/test'/>>Home</a>
						<a href="<c:url value='/test/noticePage'/>">Notice</a>
						<a href="<c:url value='/test/questionPage'/>">Question</a>
						<a href="<c:url value='/test/talkPage'/>">Talk</a>
						<a href="<c:url value='/test/ITNewsPage'/>">IT News</a>
					</div>
					<div class="login">
						<c:if test="${empty sessionScope.sid}">
							<a href="<c:url value='/test/loginForm'/>">로그인</a>
							<a>|</a>
							<a href="<c:url value='/test/joinForm'/>">회원가입</a>
						</c:if>
						<c:if test="${not empty sessionScope.sid}">
							${sessionScope.userNickname}님
							<a href="<c:url value='/test/logout'/>">로그아웃</a> 
							<a>|</a>
							<a href="<c:url value='/test/myPage'/>">마이페이지</a>
						</c:if>
					</div>
				</div>
			</header>
			<section>
				<div class="sectionWrap">
					<div class="mainTitle">
						<h1>
							With:us
						</h1>
					</div>
					<div class="bodyMenuWrap">
						<div class="bodyMenu">
							<a href="<c:url value='/test/noticePage'/>"><img class="boardPhoto" src="<c:url value='/image/공지.png'/> "></a>
							<h2 class="boardTitle">Notice</h2>
							<p class="boardText">여러가지 공지사항을 확인해보세요</p>
						</div>
						<div class="bodyMenu">
							<a href="<c:url value='/test/questionPage'/>"><img class="boardPhoto" src="<c:url value='/image/질문.png'/> "></a>
							<h2 class="boardTitle">Question</h2>
							<p class="boardText">모르는 코딩이나 알려주고 싶은 것이 있으면 서로 질문을 주고 받으세요</p>
						</div>
						<div class="bodyMenu">
							<a href="<c:url value='/test/talkPage'/>"><img class="TalkPhoto boardPhoto" src="<c:url value='/image/Talk.png'/> "></a>
							<h2 class="boardTitle">Talk</h2>
							<p class="boardText">당신의 고민을 모두 WITH:US에서 <br>함께 이야기해 봐요</p>
						</div>
					</div>
				</div>			
			</section>
		</div>
	</body>
</html>