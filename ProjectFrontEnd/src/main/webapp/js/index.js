/**
 *  index.js
 *  index.html 에서 사용
 */
 
$(document).ready(function(){
	
	// 회원 가입 버튼 클릭 시 페이지 이동
	$('#join').on('click', function(){
		window.location.href = "html/join.html";
	});
	
	// 로그인 버튼 클릭 시 페이지 이동
	$('#login').on('click', function(){
		window.location.href = "html/login.html";
	});
	
	// 로그아웃 버튼 클릭 시 페이지 새로고침
	$('#logout').on('click', function(){
		let chk = confirm("로그아웃하겠습니까");
		
		if(chk) {
			window.sessionStorage.clear();
			window.location.reload();
		}
	});
	
	// 마이페이지 버튼 클릭 시 페이지 이동
	$('#myPage').on('click', function(){
		window.location.href = "html/myPage1.html";
	});
	
	// 사용자관리 버튼 클릭 시 페이지 이동
	$('#admin').on('click', function(){
		window.location.href = "html/userManage.html";
	});		
	
	const id = window.sessionStorage.getItem('id');
	const pw = window.sessionStorage.getItem('pw');
	
	// 일반 사용자일 경우(임시 사용자 id : 'abc1001' pw: '1011' 홍길동)
	if(id == "abc1001" && pw == "1001") {
		let tmpHtml = `<h1 id="user">사용자 홍길동님 어서오세요.</h1>`;
		$('#userName').append(tmpHtml);
		
		$('#myPage').show();	// 로그인 한 사용자는 myPage 버튼 확인
		
		$('#login').hide();
		$('#logout').show();
	} else if(id == "admin" && pw == "admin") {
		let tmpHtml = `<h1 id="user">관리자님 어서오세요.</h1>`;
		$('#userName').append(tmpHtml);
		
		$('#myPage').show();	// 로그인 한 사용자는 myPage 버튼 확인
		$('#admin').show();		// 로그인 한 관리자는 사용자 관리 버튼 확인
		
		$('#login').hide();
		$('#logout').show();
	} else {
		// 그 외 로그인 하지 않거나 미가입된 등록되지 않는 사용자는 불가
		$('#myPage').hide();
		$('#admin').hide();
		
		$('#login').show();
		$('#logout').hide();
	}

});