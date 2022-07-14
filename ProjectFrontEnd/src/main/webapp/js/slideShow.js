/*
 * slideShow.js
 * next 버튼 클릭하면 뒤로 이동
 * prev 버튼 클릭하면 앞으로 이동 
*/
 
$(document).ready(function() {
	
	var movedIndex = 0;
	

	function moveSlide(index) {
		movedIndex = index;
		
		var moveLeft = -(index * 800);		
		$('#slidePanel').animate({'left':moveLeft}, 'slow');
	}
	
	// prev 버튼 클릭하면 앞으로 이동
	$('#prevBtn').on('click', function() {
		// 현재 Index 위치 계산
		if(movedIndex != 0)	// 첫 번째가 아니면
			movedIndex = movedIndex - 1;	// 왼쪽으로 한 칸 이동
			
		moveSlide(movedIndex);	// 실제 이동하는 함수 호출 (인덱스값 전달)	
	});
	
	// next 버튼 클릭하면 뒤로 이동
	$('#nextBtn').on('click', function() {
		// 현재 Index 위치 계산
		if(movedIndex != 4)	// 마지막이 아니면
			movedIndex = movedIndex + 1;	// 오른쪽으로 한 칸 이동
			
		moveSlide(movedIndex);	// 실제 이동하는 함수 호출 (인덱스값 전달)	
	});
	
	
	var randomNumber = Math.floor(Math.random() * 5);
	moveSlide(randomNumber);
	
	
	$('.controlButton').each(function(index) {
		$(this).hover(
			function() {
				$(this).attr('src', 'image/controlButton2.png');
			},
			function() {
				$(this).attr('src', 'image/controlButton1.png');
			}
		);
		
		// 클릭했을 때 인덱스값을 moveSlide() 함수에게 전달
		$(this).on('click', function() {
			moveSlide(index);	
		});
	});
	
	
}); 