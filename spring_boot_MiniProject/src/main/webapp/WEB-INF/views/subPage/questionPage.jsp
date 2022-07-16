<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>QuestionPage</title>
		<link rel="stylesheet" type="text/css" href="css/questionPage.css">
		<script src="js/jquery-3.6.0.min.js"></script>
		<script src="js/questionPage.js"></script>
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp"/>
		<section>
			<div id="bodyWrap">
				<div id="questionBoxWrap">
					<div id="slideShow">
						 <div id="prevNextButtonBox">
							<img id="prevButton" class="prevNextButton" src="image/prevButton.png">
							<img id="nextButton" class="prevNextButton" src="image/nextButton.png">
						</div>		
		                <div id="slideShowBox">
							<div id="slidePanel">
								<img src= "image/slideImage1.jpeg" class="slideImage">
								<img src= "image/slideImage2.png" class="slideImage">
								<img src= "image/slideImage3.jpeg" class="slideImage">
								<img src= "image/slideImage4.jpeg" class="slideImage">
								<img src= "image/slideImage5.jpeg" class="slideImage">
							</div>
						</div>
						<div id = "controlPanel">
							<img src="image/controlButton1.png" class="controlButton">
							<img src="image/controlButton1.png" class="controlButton">
							<img src="image/controlButton1.png" class="controlButton">
							<img src="image/controlButton1.png" class="controlButton">
							<img src="image/controlButton1.png" class="controlButton">
						</div>
					</div>
					<div id="questionBox">
						<div id="arrayTitle">
							<button class="btnFilter btnFilterActive">최신순</button>
							<button class="btnFilter">추천순</button>
							<button class="btnFilter">댓글순</button>
							<button class="btnFilter">조회순</button>
						</div>
						<div class="question">
							<div class="questionLeftBox">
								<div class="answerCount">
									<h3>2</h3><p>답변</p>
								</div>	
								<div class="goodCount">
									<h3>3</h3><p>좋아요</p>
								</div>
								<div class="viewCount">
									<i class="bi bi-eye-fill"></i><p>200</p>
								</div>
							</div>
							<div class="questionMainBox">
								<div class="questionTitle">
									<a href="#"><h2>CSS Layout의 역사</h2></a>
								</div>
								<div class="questionText">
									Flexbox가 2012년도에 나왔습니다. 그 전까지는 얼마나 배치하는게 힘들었을까요.(야매가 아니라면) 센스있는 trick들에 의존했겠죠...
								</div>
								<div class="questionOthers">
									<div class="TagAnaTime">
										<div class="questionTagBox">
											<div class="Tag">
												CSS
											</div>
										</div>
										<div class="questionTime">
											<%= sf.format(nowTime) %>
										</div>
									</div>
									<div class="questionUser">
										<span class="questionUserImg">
											<img src="image/user.png">
										</span>
										<span class="questionUserNickName">
											${sessionScope.sid}
										</span>
									</div>
								</div>
							</div>
						</div>
						<div class="question">
						</div>
						<div class="question">
						</div>
						<div class="question">
						</div>
						<div class="question">
						</div>
						<div class="question">
						</div>
						<div class="question">
						</div>
						<div class="question">
						</div>
						<div class="question">
						</div>
						<div class="question">
						</div>
					</div>
					<div id="pageNum">
						<button class="btnFilter"><<</button>
						<button class="btnFilter btnFilterActive">1</button>
						<button class="btnFilter">2</button>
						<button class="btnFilter">3</button>
						<button class="btnFilter">>></button>
					</div>
				</div>
				<div id="sideBox">
					<div id="createQuestion">
						<a href="<c:url value='/writePage'/>"><button>새 질문 작성하기</button></a>
					</div >
					<div id="questionTag">
						<div id="questionTagTitle">
							<h2>태그</h2>
						</div>
						<div id="sideTagBox">	
							<div class="Tag">
								CSS
							</div>
							<div class="Tag">
								HTML
							</div>
							<div class="Tag">
								Java
							</div>
							<div class="Tag">
								SQL
							</div>
							<div class="Tag">
								JSP
							</div>
							<div class="Tag">
								Git
							</div>
							<div class="Tag">
								jQuery
							</div>
							<div class="Tag">
								Ajax
							</div>
							<div class="Tag">
								Spring
							</div>
						</div>
					</div>
					<div id="hotQuestion">
						<table>
							<tr><th>핫 게시물</th></tr>
							<tr><td><a href="#">Java와 JavaScript의 차이점이 뭔가요?....</a></td></tr>
							<tr><td><a href="#">SQL 기본 문법에는 뭐가 있을까요?....</a></td></tr>
							<tr><td><a href="#">Docker 명령어에는 어떤 것이 있나요?....</a></td></tr>
							<tr><td><a href="#">C에서 입력값의 끝을 판별할 수 있는...</a></td></tr>
							<tr><td><a href="#">PWA 를 apk,ipa로 빌드하고싶습니다....</a></td></tr>
							<tr><td><a href="#">C언어 동적할당변수 sizeof값이 이상한....</a></td></tr>
							<tr><td><a href="#">트리 순회 질문.....</a></td></tr>
							<tr><td><a href="#">라우터 관련 네트워킹 동작 과정이 궁....</a></td></tr>
							<tr><td><a href="#">QueryDSL select 에서 에러가 납니다.....</a></td></tr>
							<tr><td><a href="#">파이썬 pip 오류 ssl 오류....</a></td></tr>
							<tr><td><a href="#">초보개발자) 아이패드 네이티브 vs 웹....</a></td></tr>
							<tr><td><a href="#">카이스트 핀토스 환경설정 질문....</a></td></tr>
							<tr><td><a href="#">csharp 질문드립니다 한프로젝트에 2개....</a></td></tr>
							<tr><td><a href="#">리액트 콘솔과 실제화면이 다르게 나....</a></td></tr>
							<tr><td><a href="#">깃허브 블로그 disqus 댓글기능 관련....</a></td></tr>
						</table>
					</div>
				</div>
			</div>
		</section>
		<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
	</body>
</html>