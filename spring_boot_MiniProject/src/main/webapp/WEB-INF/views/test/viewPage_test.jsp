<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글</title>
</head>
<body>
	<c:import url="/WEB-INF/views/layout_test/top.jsp" />
	<section>
		<div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<c:if test="${sessionScope.sid == note.userId }">
				<input type="button" value="수정" onclick="location.href='/test/updateNote/${note.noteId }'">
			<input type="button" value="삭제" onclick="location.href='/test/deleteNote/${note.noteId }'">	
			</c:if>
			
			<br>
			<table border="1">
				<tr>
					<td>noteId</td>
					<td>${note.noteId }</td>
				</tr>
				<tr>
					<td>제목</td>
					<td>${note.noteTitle }</td>
				</tr>
				<tr>
					<td>프로필</td>
					<td><img src="${note.userImg }" alt="" width="30" height="30"></td>
				</tr>
				<tr>
					<td>userNickname</td>
					<td>${note.userNickname }</td>
				</tr>
				<tr>
					<td>noteLike</td>
					<td>${note.noteLike }</td>
				</tr>
				<tr>
					<td>noteCommentNum</td>
					<td>${note.noteCommentNum }</td>
				</tr>
				<tr>
					<td>noteView</td>
					<td>${note.noteView }</td>
				</tr>
				<tr>
					<td>noteCreatedDate</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${note.noteCreatedDate }"/></td>
				</tr>
				<tr>
					<td>noteUpdatedDate</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${note.noteUpdatedDate }"/></td>
				</tr>
				<tr>
					<td>hashtag</td>
					<td>
						<c:forEach var="tag" items="${note.hashname}" varStatus="status">
							<c:out value="${tag}"/> 
						</c:forEach>
					</td>
				</tr>
				<tr>
					<td>note</td>
					<td>${note.note }</td>
				</tr>
			</table>
			<br>
			<br>
		</div>
	</section>
	<c:import url="/WEB-INF/views/layout_test/bottom.jsp" />
</body>
</html>