/**
 * login.html에서 사용
 * 임시 사용자 id : abc1001,	pw: 1001
 * 임시 관리자 id : admin,		pw: admin
 */
 
 $(document).ready(function(){
	$('img').on('mouseover', function(){
		$(this).attr('src', '../image/logo-w2.png').animate({top:-90},500)
		
	})
	.on('mouseout', function(){
		$(this).attr('src', '../image/logo-w.png').animate({top:-70},500)
		
	})
	.on('click', function(){
		location.href = "../index.html";
	});
	
	$('#loginBtn').on('click', function() {
		const id = $('#idBox').val();
		const pw = $('#pwdBox').val();
		
		if(id == ""){
			alert("아이디를 입력해주세요")
			$('#idBox').focus();
			return false;
		}
		
		if(pw == ""){
			alert("비밀번호를 입력해주세요")
			$('#pwdBox').focus();
			return false;
		}
		
		window.sessionStorage.setItem('id', id);
		window.sessionStorage.setItem('pw', pw);
		
		window.location.href="../index.html";
	});
	
	$('#join').on('click', function(){
		var ask = confirm("화원가입을 하시겠습니까?");
		if(ask == true){
		}else{
			return false;
		}
	});
	
	$('#idBox').on('keyup', function(){
		$(this).attr('maxlength', '10');
	});
	
	$('#pwdBox').on('keyup', function(){
		$(this).attr('maxlength', '20');
	});
	
	
});
 
 