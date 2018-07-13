/*
 *author:wantao
 *Jul 10, 2018 6:02:37 PM
 * 
 */
$(function() {
	var flag = true;// 设置标志，控制页面是否需要跳转
	$("#btn1").click(function() {
		check();
		return flag;
	});

	function check() {
		checkPassword();// 用户密码检查
		checkSamePassword();// 用户密码是否一致检查

	}

	// 修改样式
	function changeStyle(flag, tag) {
		if (flag == false) {// 修改样式
			tag.attr("style", "background-color:pink");
		}
	}

	// 检查
	function checkPassword() {
		var password = $("#password");
		if (password.val().length < 6) {
			alert("密码长度过低");
			flag = false;
		}
		if (password.val().length > 10) {
			alert("密码长度过长");
			flag = false;
		}
		if (password.val().search(" ") != -1) {
			alert("不能输入空格");
			flag = false;
		}
		changeStyle(flag, password);
	}

	function checkSamePassword() {
		var password = $("#password");
		var password1 = $("#password1");
		if (password1.val() != password.val()) {
			alert("前后密码不一致");
			flag = false;
		}
		changeStyle(flag, password1);
	}

});