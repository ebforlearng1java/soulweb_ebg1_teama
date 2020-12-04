<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SOULログイン</title>
</head>
<style type="text/css">
         * {
				margin: 0px;
			}
			#content {
				margin: 150px auto;
				width: 100%;
				height: 460px;
				border: 1px transparent solid;
				background-color: #21D4FD;
				background-image: linear-gradient(243deg, #21D4FD 0%, #B721FF 100%);
				background-image: -webkit-linear-gradient(243deg, #21D4FD 0%, #B721FF 100%);
				background-image: -moz-linear-gradient(243deg, #21D4FD 0%, #B721FF 100%);
				background-image: -o-linear-gradient(243deg, #21D4FD 0%, #B721FF 100%);
			}
			#box {
				margin: 50px auto;
				width: 30%;
				height: 280px;
				background-color: #eee;
				text-align: center;
				border-radius: 15px;
				border: 2px #fff solid;
				box-shadow: 10px 10px 5px #000000;
			}
			.title {
				line-height: 58px;
				margin-top: 20px;
				font-size: 36px;
				color: #000;
				height: 58px;
			}
			#box:hover {
				border: 2px #fff solid;
			}
			.input {
				margin-top: 20px;
			}
			input {
				margin-top: 5px;
				outline-style: none;
				border: 1px solid #ccc;
				border-radius: 3px;
				padding: 13px 14px;
				width: 16%;
				font-size: 14px;
				font-weight: 700;
				font-family: "Microsoft soft";
			}
			button {
				margin-top: 20px;
				border: none;
				color: #000;
				padding: 15px 32px;
				text-align: center;
				text-decoration: none;
				display: inline-block;
				font-size: 16px;
				border-radius: 15px;
				background-color: #CCCCCC;
			}
			button:hover{
				background-color: #B721FF;
				color: #fff;
			}
		</style>
<body>
	<h1 style="color: blue">SOULログイン</h1>
		<br />
		<br />
	<s:form action="loginA" name="loginform" method="post" theme="simple">
		<s:fielderror cssStyle="color:red">
			<s:param>errorUser</s:param>
		</s:fielderror>

		<span>E-mail　：</span>
		<s:textfield name="soul_login_mail" size="20" />
		<br />
		<br />
		<span>PassWord：</span>
		<s:textfield name="soul_pw" type="password" size="20" />
		<br />
		<br />
		<s:submit type="button" value="ログイン" onclick="return check_form(loginform)" />
		<s:submit type="button" value="新規登録"
			onclick="window.location.href='register.jsp';return false" />
	</s:form>
	<script type="text/javascript">
		function check_form(form1) {
			if (form1.soul_login_mail.value == "") {
				alert("E-mailを入力してください");
				form1.soul_login_mail.focus();
				return false;
			}

			if (form1.soul_pw.value == "") {
				alert("パスワードを入力してください");
				form1.soul_pw.focus();
				return false;
			}
		}
	</script>
</body>
</html>