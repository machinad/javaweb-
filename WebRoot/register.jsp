<%@ page contentType="text/html; charset=gb2312" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>新用户注册</title>
		<style type="text/css">
			.register_head{
	    		text-align:center;
				font-size: 24px;
				font-weight: 600;
	    		background-color: #0077ff; 
	    		color:#fff;
	    		line-height: 50px;
	    		margin:0 0 0 0;
	    		padding-top:50px;
	    		padding-bottom:50px;
			}
			.register_body{
				padding-top:50px;
	    		padding-bottom:50px;
				background-image: url(img/imge02.png);
				background-repeat:no-repeat;
				background-position:10px 20px;
				background-color: #00bbff;
				margin-top: 0;
				margin-bottom:0;
				color:#ffffff;
				height:300px;
			}
			.register_feet{
				padding-top: 50;
				padding-bottom: 50;
				background-color: #0077ff;
				height:90px;
				position: relative;
			}
		</style>
		<script language="javascript">
		//判断输入的用户名和密码是否合法
		function check()
		{
		    var age = document.getElementById("Age")
			if(reg_form.username.value == "")
			{//判断用户名是否为空
				alert("用户名不能为空！");
				reg_form.userName.focus();
			}
			else if(reg_form.userPassword.value == "")
			{//判断密码是否为空
				alert("用户密码不能为空！");
				reg_form.userPassword.focus();
			}
			else if(reg_form.userPassword.value != reg_form.confirm_UserPassword.value)
			{//判断两次输入的密码是否一致
				alert("两次输入的密码不一致！");
				reg_form.userPassword.focus();				
			}
			else if(age.value<0||age.value>120)
			{
			    alert("年龄不合法，应在0-120之间");
			    age.focus();
			}
			else
			{
				//设置跳转目的页面
				reg_form.action="login_conf.jsp";
			}
		}
		</script>
	</head>
	<body>
		<div class="register_head">
			新用户注册
		</div>
		<div align="center" class="register_body">
		<form name="reg_form" method="post" onSubmit="check()">
		<table width="60%" border="0">
			<tr>
			<td width="30%" align="right">请输入用户名：</td>
			<td width="30%" align="left"><input type="text" name="username" pattern="^[a-zA-Z0-9_-]{4,16}$" litle="还"></td>
			<td width="40%" align="left">请输入4-16位任意字母数字或下划线</td>
			</tr>
			<tr>
			<td width="30%" align="right">请输入密码：</td>
			<td width="30%" align="left"><input type="password" name="userPassword" pattern="\w{6,24}"></td>
			<td width="40%" align="left">输入6-24之间的任意数字或字母</td>
			</tr>
			<tr>
			<td width="30%" align="right">请输入确认密码：</td>
			<td width="30%" align="left"><input type="password" name="confirm_UserPassword"></td>
			<td width="40%" align="left"></td>
			</tr>
			<tr>
			<td width="30%" align="right">手机号码：</td>
			<td width="30%" align="left"><input type="text" name="mobilephonenumber" pattern="^1[358]\d{9}$"></td>
			<td width="40%" align="left">11位数字，13，15，18开头</td>
			</tr>
			<tr>
			<td width="30%" align="right">年龄：</td>
			<td width="30%" align="left"><input type="text" name="age" id="Age"></td>
			<td width="40%" align="left">不得超出0-120岁</td>
			</tr>
			<tr>
			<td width="30%" align="right">邮编：</td>
			<td width="30%" align="left"><input type="text" name="zip" pattern="\d{6}"></td>
			<td width="40%" align="left">6位数字组成</td>
			</tr>
			<tr>
			<td width="50%" align="center" colspan="2">
			<br>
			<input type="submit" name="sub" value="注册">&nbsp;&nbsp;
			<input type="reset" name="res" value="重填">
			</td>			
			</tr>
		</table>
		</form>
		</div>
		<div class="register_feet"></div>
	</body>
</html>