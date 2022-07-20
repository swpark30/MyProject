/**
 *  회원가입
 */
 
 
 $(document).ready(function(){
	
	$("#joinFrm").on('submit', function(){
	
		// submit 이벤트 기본 기능 : 페이지 새로 고침
 		// 기본 기능 중단
 		event.preventDefault();
 		
 		var userEmail = $('#userEmail1').val() +'@'+ $('#userEmail2').val();
 		
 		
 		$.ajax({
 			type:"post",
 			url:"/test/join",
 			data:{
 				"userName":$('#userName').val(),
 				"userNickname":$('#userNickname').val(),
 				"userId":$('#userId').val(),
 				"userEmail":userEmail,
 				"userPw":$('#userPw').val()
 			},
			dataType:"text",
			success:function(result){
				// 성공 시 결과 받음
				if(result == "SUCCESS"){
					alert("회원가입 성공");
					location.href="/test/loginForm";
				}else{
					alert("회원가입 실패");
				}
			},
			error:function(){
				// 오류있을 경우 수행 되는 함수
				alert("회원가입 실패");
			}
 		});
		
	});
	
}); // document.ready
