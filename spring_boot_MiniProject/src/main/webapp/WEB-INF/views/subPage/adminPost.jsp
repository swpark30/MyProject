<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>게시글 관리 페이지</title>
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/MenuTab.js'/>"></script>
		<script src="<c:url value='/js/admin.js'/>"></script>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/reset.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/admin.css'/>">
	</head>
	<body>
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
	<section>
		<main class="cd-main-content">
			<nav class="cd-side-nav">
				<ul>
					<li class="cd-label">Management</li>
					<li class="has-children user">
						<a href="<c:url value="/adminUser"/>">User</a></li>
					
					<li class="has-children post">
						<a href="<c:url value="/adminPost"/>">Post</a></li>
					
					<li class="has-children comments">
						<a href="<c:url value="/adminComment"/>">Comments</a></li>
					
					<li class="has-children hashtag">
						<a href="<c:url value="/adminHashTag"/>">Hashtag</a></li>
				</ul>
	
				<ul>
					<li class="cd-label">Secondary</li>
					<li class="has-children bookmarks">
						<a href="#0">Bookmarks</a></li>
					<li class="has-children images">
						<a href="#0">Images</a>
					</li>
	
					<li class="has-children users">
						<a href="#0">Users</a>
					</li>
				</ul>
	
				<ul>
					<li class="cd-label">Action</li>
					<li class="action-btn"><a href="#0">+ Button</a></li>
				</ul>
			</nav>
			
			<div class="searchBtn">
				 <input type="text" autofocus class="inputBtn" placeholder="검색어 입력">
			</div>
				<div class="tableBox">
					<form>
						<table id="example-table-1" class="table table-bordered table-hover text-center">
							<thead>
								<tr>
									<th>noteId</th>
									<th>userId</th>
									<th>categoryId</th>
									<th>noteTitle</th>
									<th>note</th>
									<th>noteView</th>
									<th>notesLike</th>
									<th>noteCmtNum</th>
									<th>noteCrdDate</th>
									<th>noteUtdDate</th>
									<th>hashName</th>
									<th>pageViewState</th>
								</tr>
							</thead>
							
							<tbody>
								<tr>
									<td>게시판아이디</td>
									<td>유저아이디</td>
									<td>카테고리아이디</td>
									<td>제목</td>
									<td>내용</td>
									<td>조회수</td>
									<td>좋아요 수</td>
									<td>댓글 수</td>
									<td>작성일</td>
									<td>수정일</td>
									<td>
										<select class="hastagName">
											<option selected>Java</option>
											<option>Python</option>
											<option>C</option>
											<option>C++</option>
											<option>C+++</option>
											<option>C+++</option>
										</select>
									</td>
									<td>
										<select class="pageViewState">
											<option selected>공개</option>
											<option>비공개</option>
										</select>
									</td>
								</tr>
							</tbody>	
						</table>						
					</form>		
					<div class="col-lg-12" id="ex1_Result1" ></div> 
					<div class="col-lg-12" id="ex1_Result2" ></div> 
				</div> <!--tableBox  -->
	
		</main> <!-- .cd-main-content -->
	</section>	
		<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
	</body>
</html>