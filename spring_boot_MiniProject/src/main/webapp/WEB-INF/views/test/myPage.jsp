<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myPage</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/reset.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/common.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/loginSection.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/myPage.css"/>">
</head>
<body>
	<c:import url="/WEB-INF/views/layout_test/top.jsp" />
	<section>
		<div class="myPageBox">
			<h1>My page</h1>

			<ul class="userPage">
				<li><a href="#"><span>activity</span></a></li>
				<li><a href="<c:url value="/test/myPageEditForm"/>" ><span>edit</span></a></li>
			</ul>
			<!-- userPage -->
			<div class="userProfileBox">
				<div class="userBox">
					<div class="boxImage">
						<img src="<c:url value="/image/user.png"/>">
					</div>
					<div class="boxUser">

						<ul class="fontBox">
							<li>${user.userName}</li>
							<li>0</li>
							<li>POINT</li>
						</ul>

						<ul class="pointBox">
							<li><img src="<c:url value="/image/yellowCircle.png"/>"><span
								class="point">0</span></li>
							<li><img src="<c:url value="/image/grayCircle.png"/>"><span
								class="point">0</span></li>
							<li><img src="<c:url value="/image/redCircle.png"/>"><span
								class="point">0</span></li>
						</ul>
						<!-- pointBox -->
					</div>
					<!-- boxUser -->

				</div>
				<!-- userBox -->
				<div class="userInfo">
					<ul class="userinfoBox">
						<li><h2>${user.userNickname }</h2></li>
						<li><img src="<c:url value="/image/homeIcon.png"/>"><span
							class="nameInfo">소속 : ${user.userCompany }</span></li>
						<li><img src="<c:url value="/image/mailIcon.png"/>"><span
							class="nameInfo">이메일 주소 : ${user.userEmail }</span></li>
					</ul>
					<!-- userinfoBox -->
				</div>
				<!-- userInfo -->
			</div>
			<!-- userProfileBox -->
			<ul class="tagBox">
				<li><a href="#"><span>tag</span></a></li>
				<li><a href="#"><span>question</span></a></li>
				<li><a href="#"><span>answer</span></a></li>
				<li><a href="#"><span>comment</span></a></li>
			</ul>
			<!-- tagBox -->
			<form name="loginForm" method="post">
				<div class="input">
					<input type="text" class="tagAct" placeholder="전체 태그 활동"> <input
						type="text" class="tagCht" placeholder="전체 태그 차트">
				</div>
				<!-- input -->
			</form>
			<div>
				<table width="1000">
					<tr>
						<th>게시글 번호</th>
						<th>해시태그</th>
						<th>제목</th>
						<th>작성일</th>
						<th>수정일</th>
						<th>조회수</th>
						<th>좋아요</th>
						<th>댓글</th>
					</tr>
					<c:forEach var="note" items="${noteList}" varStatus="status">
						<tr>
						<td>
						${note.noteId }
						</td>
						<td>
							<c:forEach var="tag" items="${note.hashname}" varStatus="status">
								${tag } 
							</c:forEach>
						</td>
						<td>
							${note.noteTitle }
						</td>
						<td>
							<fmt:formatDate value="${note.noteCreatedDate}" pattern="yyyy-MM-dd hh:mm:ss"/>
						</td>
						<td>
							<fmt:formatDate value="${note.noteUpdatedDate}" pattern="yyyy-MM-dd hh:mm:ss"/>
						</td>
						<td>
							${note.noteView }
						</td>
						<td>
							${note.noteLike }
						</td>
						<td>
							${note.noteCommentNum }
						</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<!--myPageBox  -->
	</section>
	<c:import url="/WEB-INF/views/layout_test/bottom.jsp" />
</body>
</html>