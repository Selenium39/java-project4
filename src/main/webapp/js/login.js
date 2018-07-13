/*
 *author:wantao
 *Jul 10, 2018 10:00:07 AM
 * 
 */
$(function() {
	var flag = true;// 设置标志
	$("#btn1").click(function() {
		check();
		return flag;
	});
	$("#btn2").click(function(){
       $(location).attr("href","findPassword.jsp");
       return false;
	});
	function check() {
		checkName();
		checkPassword();
	}

	// 修改样式
	function changeStyle(flag, tag) {
		if (flag == false) {// 修改样式
			tag.attr("style", "background-color:pink");
		}
	}
	// 检查
	function checkName() {
		var name = $("#name");
		if (name.val().length > 10) {
			alert("姓名长度不能超过10");
			flag = false;
		}
		if (name.val().length < 2 && name.val().length > 0) {
			alert("姓名长度要大于１");
			flag = false;
		}
		if (name.val().length == 0) {
			alert("姓名不能为空");
			flag = false;
		}
		if (name.val().search(" ") != -1) {// 不能输入空格 没找到返回-1
			alert("不能输入空格");
			flag = false;
		}
		changeStyle(flag, name);

	}

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

});