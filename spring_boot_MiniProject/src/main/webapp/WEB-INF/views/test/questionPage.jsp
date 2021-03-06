<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyyMMdd" var="openDate" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QuestionPage</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/questionPage.css'/> ">
<script src="<c:url value='/js/jquery-3.6.0.min.js'/> "></script>
<script src="<c:url value='/js/questionPage.js'/> "></script>
<script src="<c:url value='/js/test/questionPageing.js'/> "></script>
</head>
<body>
	<c:import url="/WEB-INF/views/layout_test/top.jsp" />
	<section>
		<div class="bodyWrap">
			<div class="questionBoxWrap">
				<div class="slideShow">
					<div class="prevNextButtonBox">
						<img class="prevButton prevNextButton"
							src="<c:url value='/image/prevButton.png'/> "> <img
							class="nextButton prevNextButton"
							src="<c:url value='/image/nextButton.png'/> ">
					</div>
					<div class="slideShowBox">
						<div class="slidePanel">
							<img src="<c:url value='/image/slideImage1.jpeg'/> "
								class="slideImage"> <img
								src="<c:url value='/image/slideImage2.png'/> "
								class="slideImage"> <img
								src="<c:url value='/image/slideImage3.jpeg'/> "
								class="slideImage"> <img
								src="<c:url value='/image/slideImage4.jpeg'/> "
								class="slideImage"> <img
								src="<c:url value='/image/slideImage5.jpeg'/> "
								class="slideImage">
						</div>
					</div>
					<div class="controlPanel">
						<img src="<c:url value='/image/controlButton1.png'/> "
							class="controlButton"> <img
							src="<c:url value='/image/controlButton1.png'/> "
							class="controlButton"> <img
							src="<c:url value='/image/controlButton1.png'/> "
							class="controlButton"> <img
							src="<c:url value='/image/controlButton1.png'/> "
							class="controlButton"> <img
							src="<c:url value='/image/controlButton1.png'/> "
							class="controlButton">
					</div>
				</div>
				<div class="questionBox">
					<div class="arrayTitle">
						<button class="btnFilter btnFilterActive">?????????</button>
						<button class="btnFilter">?????????</button>
						<button class="btnFilter">?????????</button>
						<button class="btnFilter">?????????</button>
					</div>
					<c:forEach var="note" items="${noteList}" varStatus="status">
						<div class="question">
							<div class="questionLeftBox">
								<div class="answerCount">
									<h3>${note.noteCommentNum }</h3>
									<p>??????</p>
								</div>
								<div class="goodCount">
									<h3>${note.noteLike }</h3>
									<p>?????????</p>
								</div>
								<div class="viewCount">
									<i class="bi bi-eye-fill"></i>
									<p>${note.noteView }</p>
								</div>
							</div>
							<div class="questionMainBox">
								<div class="questionTitle">
									<a href="<c:url value="/test/view/${note.noteId}"/> "><h2>${note.noteTitle }</h2></a>
								</div>
								<div class="questionText">????????????</div>
								<div class="questionOthers">
									<div class="TagAnaTime">
										<div class="questionTagBox">
											<c:forEach var="hashtag" items="${note.hashname}"
												varStatus="status">
												<div class="Tag">${hashtag }</div>
											</c:forEach>
										</div>
										<div class="questionTime">
											<fmt:formatDate value="${note.noteCreatedDate}" pattern="yyyyMMdd" var="closeDate" />
											<c:if test="${openDate == closeDate}">
												<fmt:formatDate pattern="hh:mm" value="${note.noteCreatedDate }" />
											</c:if>
											<c:if test="${openDate != closeDate}">
												<fmt:formatDate pattern="MM-dd" value="${note.noteCreatedDate }" />
											</c:if>
										</div>
									</div>
									<div class="questionUser">
										<span class="questionUserImg"> <img
											src="${note.userImg}" alt="">
										</span> <span class="questionUserNickName">
											${note.userNickname} </span>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="pageNum">
					<button class="btnFilter"><<</button>
					<button class="btnFilter btnFilterActive"
						onClick="location.href='<c:url value="/test/questionPage/list?page=0"/>'">1</button>
					<button class="btnFilter btnFilterActive"
						onClick="location.href='<c:url value="/test/questionPage/list?page=1"/>'">2</button>
					<button class="btnFilter btnFilterActive"
						onClick="location.href='<c:url value="/test/questionPage/list?page=2"/>'">3</button>
					<button class="btnFilter">>></button>
				</div>
			</div>
			<div class="sideBox">
				<div class="createQuestion">
					<c:if test="${empty sessionScope.sid }">
						<a href="<c:url value='/test/questionPage'/> "><button
								disabled style="background-color: gray;">??? ?????? ????????????</button></a>
					</c:if>
					<c:if test="${not empty sessionScope.sid }">
						<a href="<c:url value='/test/writePage'/> "><button>???
								?????? ????????????</button></a>
					</c:if>

				</div>
				<div class="questionTag">
					<div class="questionTagTitle">
						<h2>??????</h2>
					</div>
					<div class="sideTagBox">
						<c:forEach var="hashtag" items="${hashtagList}" varStatus="status">
							<div class="Tag">${hashtag }</div>
						</c:forEach>
					</div>
				</div>
				<div class="hotQuestion">
					<table>
						<tr>
							<th>??? ?????????</th>
						</tr>
						<tr>
							<td><a href="#">Java??? JavaScript??? ???????????? ??????????....</a></td>
						</tr>
						<tr>
							<td><a href="#">SQL ?????? ???????????? ?????? ?????????????....</a></td>
						</tr>
						<tr>
							<td><a href="#">Docker ??????????????? ?????? ?????? ??????????....</a></td>
						</tr>
						<tr>
							<td><a href="#">C?????? ???????????? ?????? ????????? ??? ??????...</a></td>
						</tr>
						<tr>
							<td><a href="#">PWA ??? apk,ipa??? ????????????????????????....</a></td>
						</tr>
						<tr>
							<td><a href="#">C?????? ?????????????????? sizeof?????? ?????????....</a></td>
						</tr>
						<tr>
							<td><a href="#">?????? ?????? ??????.....</a></td>
						</tr>
						<tr>
							<td><a href="#">????????? ?????? ???????????? ?????? ????????? ???....</a></td>
						</tr>
						<tr>
							<td><a href="#">QueryDSL select ?????? ????????? ?????????.....</a></td>
						</tr>
						<tr>
							<td><a href="#">????????? pip ?????? ssl ??????....</a></td>
						</tr>
						<tr>
							<td><a href="#">???????????????) ???????????? ???????????? vs ???....</a></td>
						</tr>
						<tr>
							<td><a href="#">???????????? ????????? ???????????? ??????....</a></td>
						</tr>
						<tr>
							<td><a href="#">csharp ?????????????????? ?????????????????? 2???....</a></td>
						</tr>
						<tr>
							<td><a href="#">????????? ????????? ??????????????? ????????? ???....</a></td>
						</tr>
						<tr>
							<td><a href="#">????????? ????????? disqus ???????????? ??????....</a></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</section>
	<c:import url="/WEB-INF/views/layout_test/bottom.jsp" />
</body>
</html>