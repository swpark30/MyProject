/**
 *  index.js
 */
 
 	$(document).ready(function(){
	// 윈도우 스크롤 시 메인 메뉴 고정
	
	 // moveTo, Bottom 이미지 클릭시 스크롤 다운
	$('#moveToTop').on('click', function(){
		$('html, body').animate({scrollTop:0}, 500);
	}); 
	
	$('#moveToBottom').on('click', function(){
		$('html, body').animate({scrollTop:2000}, 500);
	}); 
	
});