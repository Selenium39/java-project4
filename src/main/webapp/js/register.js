$(function () {
    //('name','password','email','phone');
    //('用户姓名','用户密码','用户邮箱','用户手机号');
    var flag = true;//设置标志，控制页面是否需要跳转
    $("#btn1").click(function () {
        check();
        return flag;
    });

    function check() {
        checkName();//用户姓名检查
        checkPassword();//用户密码检查
        checkSamePassword();//用户密码是否一致检查
        checkEmail();//邮箱检查
        checkPhone();//手机号检查

    }

    //修改样式
    function changeStyle(flag, tag) {
        if (flag == false) {//修改样式
            tag.attr("style", "background-color:pink");
        }
    }

    //检查
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
        if (name.val().search(" ") != -1) {//不能输入空格 没找到返回-1
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

    function checkSamePassword() {
        var password = $("#password");
        var password1 = $("#password1");
        if (password1.val() != password.val()) {
            alert("前后密码不一致");
            flag = false;
        }
        changeStyle(flag, password1);
    }

    function checkEmail() {
        var email = $("#email");
        var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
        if (!reg.test(email.val())) {//匹配返回true
            alert("邮箱格式不正确");
            flag = false;
        }
        changeStyle(flag, email);
    }

    function checkPhone() {
        var phone = $("#phone");
        var reg = /^[1][3,4,5,7,8][0-9]{9}$/;
        if (!reg.test(phone.val())) {//匹配返回true
            alert("手机格式不正确");
            flag = false;
        }
        changeStyle(flag, phone);
    }
});