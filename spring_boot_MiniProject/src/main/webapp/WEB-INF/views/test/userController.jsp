<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MainPage</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/index.css'/> ">
<script src="<c:url value='/js/jquery-3.6.0.min.js' /> "></script>
<script src="<c:url value='/js/index.js' /> "></script>
</head>
<body>
	<table border="1">
		<tr>
			<th>userId</th>
			<th>userPw</th>
			<th>userName</th>
			<th>userEmail</th>
			<th>userImg</th>
			<th>userActivateDate</th>
			<th>userCreatedDate</th>
			<th>userNickname</th>
			<th>userCompany</th>
			<th>roll</th>
			<th>userState</th>
		</tr>
		<tr>
			<td>hong</td>
			<td><input type="button" value="초기화"></td>
			<td><input type="text" value="홍길동"></td>
			<td><input type="text" value="hong@naver.com"></td>
			<td><input type="text" value="https://www.pngitem.com/pimgs/m/146-1468479"></td>
			<td>2022-07-18 12:00:10</td>
			<td>2022-07-18 12:00:12</td>
			<td><input type="text" value="홍"></td>
			<td><input type="text" value="카카오"></td>
			<td>
			<select name="roll">
					<option value="0">유저</option>
					<option value="1">관리자</option>
			</select>
			</td>
			<td><select name="userState">
					<option value="0">정상</option>
					<option value="1">차단</option>
					<option value="2">삭제</option>
			</select></td>
			<td><input type="button" value="수정"></td>
		</tr>
	</table>
</body>
</html>