/**
 * 
 */



$(document).ready(function() {
	
	
	
	$('#listAdd').on('click', function() {
		
	});

	$.makeList = function(data){
		console.log(data);
		var tag = "<li>";
		tag += "<div class='container'>";
		
		if(data.commentNum>0){
			tag += "<div class='row listSubWrap highlight''>";
		}else{
			tag += "<div class='row listSubWrap'>";
		}	

		tag += "<div class='col-lg-7 col-md-9 col-12' style='height: auto;'>";

		/* Hashtag */
		tag += "<span class='text-left' style='font-size: 0.8em'>#1251974</span>";

		tag += "<a href='#' class='category3'>";
		tag += data.hashTag[0];
		tag += "</a>";
		
		for(i=1;i<data.hashTag.length;i++){
			tag += "<a class='tag3' href='#'>";
			tag += data.hashTag[i];
			tag += "</a>";
		}
		
		tag += "<br> <a href='viewPage.html' class='text-left listTitle1'>";
		tag += data.title;
		tag += "</a>";

		tag += "</div>";

		/* Status */
		tag += "<div class='col-lg-3 d-none d-xl-block d-lg-block align-self-center status'>";

		tag += "<div class='row'>";
		tag += "<div class='col-3'><i class='fa-solid fa-xs fa-comment'>";
		tag += data.commentNum;
		tag += "</i></div>"

		tag += "<div class='col-3'><i class='fa-solid fa-xs fa-thumbs-up'>";
		tag += data.likeNum;
		tag += "</i></div>"

		tag += "<div class='col-3'><i class='fa-solid fa-xs fa-eye'>";
		tag += data.viewNum;
		tag += "</i></div>"
		tag += "</div>";

		tag += "</div>";

		/* Profle */
		tag += "<div class='col-lg-2 col-md-3 col-auto align-self-center' style='white-space: nowrap;'>";

		tag += "<table style='float: right;'>";

		tag += "<tr>";
		tag += "<td rowspan='2'>"
		tag += "<img class='listProfle' src=";
		tag += data.profileImg;
		tag += ">";
		tag += "</td>";
		tag += "<td>";
		tag += "<a class='nickNameA' href='#'>";
		tag += data.writer;
		tag += "</a>";
		tag += "<i class='fa-solid fa-2xs fa-bolt'>";
		tag += data.activityScore;
		tag += "</i></td>";
		tag += "</tr>";
		tag += "<tr>";
		tag += "<td class='createdDateA'>"
		tag += data.createdDate;
		tag += "</td>";
		tag += "</tr>";

		tag += "</table>";

		tag += "</div>"

		tag += "</div>"
		tag += "</div>";
		tag += "</li>";

		$('.listMainWrap').append(tag);

	};

	var jsonData = JSON.parse(JSON.stringify(Data2));
		console.log(jsonData.Question);
		console.log(jsonData.Question.length);
		
		$.each(jsonData.Question, function (index, item) {
    		$.makeList(item);

		});	


});