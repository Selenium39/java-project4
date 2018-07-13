/*
 *author:wantao
 *Jul 10, 2018 10:09:14 PM
 * 
 */
$(function() {
	//控制导航栏图片的放映
	var count = 0;
	var images = new Array("images/1044411922.jpg", "images/1121833128.jpg",
			"images/1255989109.jpg");
	function showImages() {
		if (count < images.length) {
			$("#image").attr("src", images[count]);
			++count;
		} else {
			count = 0;
		}
		setTimeout(showImages, 2 * 1000);
	}
	;
	showImages();
	//图片上传
	$("#btn1").click(function(){
		$(location).attr("href","upload.jsp");
	});
	$("#btn2").click(function(){
		$(location).attr("href","showImages?imageType=BEAUTIFUL");
	});
});