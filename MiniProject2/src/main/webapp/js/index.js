/**
 * 
 */
 
 $(document).ready(function(){
	// 배경 이미지 랜덤으로 ********************************************
	 var images = ['배경이미지.jpg', '배경이미지2.jpg', '배경이미지3.jpg', '배경이미지4.jpg'];
	 
 	$('body').css({
		'background-image': 
		'url(image/' + images[Math.floor(Math.random() * images.length)] + ')',
		"background-size": "cover"
	});
	
	// 메뉴 언더라인 **************************************************
	let underLine = document.getElementById("underline");
	let menu = document.querySelectorAll("#topMenu a");
	let firstMenu = document.querySelector("#topMenu a:nth-child(2)");

	
	menu.forEach(x=>
		x.addEventListener("mouseover", function(e){
		underLine.style.left = e.currentTarget.offsetLeft + "px";
		underLine.style.width = e.currentTarget.offsetWidth + "px";
		underLine.style.top =
			e.currentTarget.offsetTop + e.currentTarget.offsetHeight + "px";
		firstMenu.style.color = "white";
	}));
	
	menu.forEach(x=>
		x.addEventListener("mouseout", function(){
		 underLine.style.left = firstMenu.offsetLeft + "px";
		underLine.style.width = firstMenu.offsetWidth + "px";
		underLine.style.top =
			firstMenu.offsetTop + firstMenu.offsetHeight + "px";
		firstMenu.style.color = "rgba(69, 170, 245, 0.7)";
	}));
});

 $(document).ready(function(){
	let underLine = document.getElementById("underline");
	let firstMenu = document.querySelector("#topMenu a:nth-child(2)");
	
	 underLine.style.left = firstMenu.offsetLeft + "px";
	underLine.style.width = firstMenu.offsetWidth + "px";
	underLine.style.top =
		firstMenu.offsetTop + firstMenu.offsetHeight + "px";
	firstMenu.style.color = "rgba(69, 170, 245, 0.7)";	
});

 $(document).ready(function(){
	$('#menuImg').on('click', function(){
		location.href = "index.html";
	});
	
	$('#noticePhoto').on('click', function(){
		location.href = "html/noticePage.html";
	});
	
	$('#questionPhoto').on('click', function(){
		location.href = "html/questionPage.html";
	});
	
	$('#TalkPhoto').on('click', function(){
		location.href = "html/talkPage.html";
	});
	
});
