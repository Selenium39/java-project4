/*
 *author:wantao
 *Jul 13, 2018 11:46:41 AM
 * 
 */
$(function(){
	$("#btn1").click(function(){
		$(location).attr("href","showImages?imageType=BEAUTIFUL");
	});

	$("#btn2").click(function(){
		$(location).attr("href","createWaterMark.jsp");
	});
	$("#btn3").click(function(){
		$(location).attr("href","userIndex.jsp");
	});
});