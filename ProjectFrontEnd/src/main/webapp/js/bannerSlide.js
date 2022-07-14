/**
 * bannerSlide
 * next 버튼 클릭하면 뒤로 이동
 * prev 버튼 클릭하면 앞으로 이동 
 */
 
$(document).ready(function() {
	
	var movedIndex1 = 0;
	
	
	function moveSlide(index) {
		
		movedIndex1 = index;
		
		
		var moveLeft = -(index * 800);	
		$('#bannerPanel').animate({'left':moveLeft}, 'slow');
	}
	
	
	$('#prevButton').on('click', function() {
		
		if(movedIndex1 != 0)	
			movedIndex1 = movedIndex1 - 1;	
			
		moveSlide(movedIndex1);	
	});
	
	
	$('#nextButton').on('click', function() {
		
		if(movedIndex1 != 4)	
			movedIndex1 = movedIndex1 + 1;	
			
		moveSlide(movedIndex1);	
	});
	
	// 랜덤 지정
	var randomNumber = Math.floor(Math.random() * 5);
	moveSlide(randomNumber);
	

});