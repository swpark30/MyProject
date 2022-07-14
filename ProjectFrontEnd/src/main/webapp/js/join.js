/**
 * 
 */
 
 $(document).ready(function(){
	
	$('#name').focus();

	$(document).on('keydown', function(e){
		if(e.keyCode == 13) return false;
	});
	
	/*********form 제출 제한*********/
	
	$('#joinForm').on('submit', function(){
		if($('#nickname').val() == ""){
			alert("닉네임을 입력해주세요")
			$('#nickname').focus();
			return false;
		}
		
		if($('#id').val() == ""){
			alert("아이디를 입력해주세요");
			$('#id').focus();
			return false;
		}
		
		if($('#pwd').val() == ""){
			alert("비밀번호를 입력해주세요");
			$('#pwd').focus();
			return false;
		}
		
		if($('#pwd').val() != $('#pwdCheck').val()){
			alert("비밀번호가 일치하지 않습니다.");
			$('#pwdCheck').focus();
			return false;
		}
		
		if($('#email1').val() == ""){
			alert("이메일을 입력해주세요");
			$('#email1').focus();
			return false;
		}
		
		if(!($('input:radio[name=emailRcv]').is(':checked'))){
			alert("이메일 수신 여부를 선택하세요");
			return false;
		}
		
		if(!($('input:checkbox[name=agreement]').is(':checked'))){
			alert("개인정보 이용 동의해주세요");
			return false;
		}
	});
	
	/************글자수 제한************/
	
	$('#nickname').on('keyup', function(){
		$(this).attr('maxlength', '15');
	});
	
	$('#id').on('keyup', function(){
		$(this).attr('maxlength', '10');
	});
	
	$('#pwd').on('keyup', function(){
		$(this).attr('maxlength', '20');
	});
	
		$('#pwdCheck').on('keyup', function(){
		$(this).attr('maxlength', '20');
	});
	
	
	
	$('#Tel2').on('keyup', function(){
		if($(this).val().length == 4){
			$('#Tel3').focus();
		}
	});

});
