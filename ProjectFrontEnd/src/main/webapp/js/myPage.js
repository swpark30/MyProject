/**
 * myPage1.html 에서 사용
 */

$(document).ready(function(){
	$('#confirmBtn').on('click', function(){
		const pw = window.sessionStorage.getItem('pw');
		const inputpw = $('#pwdBox').val();
		
		if (inputpw == "") {
			alert("비밀번호를 입력해주세요");
			$('#pwdBox').focus();
			return false;
		} else if(inputpw == pw) {
			window.location.href = "myPage2.html";
		} else {
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}
	});
	
	$('#prevBtn').on('click', function(){
		window.location.href = "../index.html";
	});
	
});