<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Top 메뉴</title>
		<link rel="stylesheet" type="text/css" href="../css/headerMenu.css">
		<script src="../js/jquery-3.6.0.min.js"></script>
	</head>
	<body>
		<header>
			<div id="mainMenu">
				<div id="menuImg">
					<a href="<c:url value='/'/>"><img src="image/logo-withus2.png"></a>
				</div>
				<div id="topMenu">
					<div id="underline"></div>
					<a href="<c:url value='/'/>">Home</a>
					<a href="<c:url value='/noticePage'/>">Notice</a>
					<a href="<c:url value='/questionPage'/>">Question</a>
					<a href="<c:url value='/talkPage'/>">Talk</a>
					<a href="<c:url value='/ITNewsPage'/>">IT News</a>
				</div>
				<div id="login">
					<c:if test="${empty sessionScope.sid}">
						<a href="<c:url value='/loginForm'/>">로그인</a>
						<a>|</a>
						<a href="<c:url value='/join'/>">회원가입</a>
					</c:if>
					<c:if test="${not empty sessionScope.sid}">
						${sessionScope.sid}님
						<a href="<c:url value='/logout'/>">로그아웃</a> 
						<a>|</a>
						<a href="<c:url value='/myPage'/>">마이페이지</a>
					</c:if>
				</div>
			</div>
		</header>
	</body>
</html>