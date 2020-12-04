<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UserInfo</title>

<script type="text/javascript">
	function checkid() {
		var id = document.getElementsByName("user.soul_login_mail")[0].value;

		var xhr;
		if (window.XMLHttpRequest) {
			xhr = new XMLHttpRequest();//其他非ie浏览器支持
		} else if (window.ActiveXObject) {
			xhr = new ActiveXObject("Microsoft.XMLHTTP");//微软的ie浏览器支持，不支持老版本ie
		}

		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var data = xhr.responseText;
				if (data == "1") {
					document.getElementById("idcheck").innerHTML = "<font color='red'>E-mailはすでに使用されています</font>";
				} else {
					document.getElementById("idcheck").innerHTML = "<font color='green'>メールアドレスを利用できます</font>";
				}
			}
		}

		xhr.open("get", "regist!checkid.action?user.soul_login_mail=" + id,
				true);
		xhr.setRequestHeader("Content-type",
				"application/x-www-form-urlencoded");
		xhr.send();
	}

	function check_form(form1) {
		if (form1['user.soul_pw'].value == "") {
			alert("パスワードを入れてください");
			form1['user.soul_pw'].focus();
			return false;
		}
		if (form1['user.soul_pw'].value.length < 6) {
			alert("パスワードは6桁以上で入力してください");
			form1['user.soul_pw'].focus();
			return false;
		}
		if (form1['user.soul_name'].value == "") {
			alert("名前を入れてください");
			form1['user.soul_name'].focus();
			return false;
		}
		if (form1['user.age_y'].value == "" || form1['user.age_m'].value == ""
				|| form1['user.age_d'].value == "") {
			alert("年齢を入れてください");
			/* form1['user.age_y'].focus(); */
			return false;
		}
		if (form1['user.soul_login_mail'].value == "") {
			alert("メールアドレスを入れてください");
			form1['user.soul_login_mail'].focus();
			return false;
		}
		var reg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		if (reg.test(form1['user.soul_login_mail'].value) == false) {
			alert("正しいメールアドレスを入力してください");
			form1['user.soul_login_mail'].focus();
			return false;
		}
	}
</script>

<style type="text/css">
.center {
	position: absolute;
	top: 20%;
	left: 40%;
	width: 500px;
	height: 300px;
}
</style>

</head>
<body>
	<s:form action="regist" name="inputform" method="post" theme="simple">

		<div class="center">

			<h1 style="color: blue">Soulインフォメーション</h1>
			<table border="2" bordercolor="#0099ff" cellpadding="10px"
				cellspacing="0">

				<tr>
					<td><font color="#FF0000">*</font>Soul名：</td>
					<td><input type="text" name="user.soul_name"
						placeholder="--名前入力してください--" /></td>

				</tr>
				<tr>
					<td><font color="#FF0000">*</font>性別：</td>
					<td><input type="radio" name="user.soul_sex" value="M"
						checked="checked" />男 <input type="radio" name="user.soul_sex"
						value="F" />女</td>

				</tr>

				<tr>
					<td><font color="#FF0000">*</font>年齢：</td>
					<td><select name="user.age_y">
							<option value="">-</option>
							<option value="1960">1960</option>
							<option value="1961">1961</option>
							<option value="1962">1962</option>
							<option value="1963">1963</option>
							<option value="1964">1964</option>
							<option value="1965">1965</option>
							<option value="1966">1966</option>
							<option value="1967">1967</option>
							<option value="1968">1968</option>
							<option value="1969">1969</option>
							<option value="1970">1970</option>
							<option value="1971">1971</option>
							<option value="1972">1972</option>
							<option value="1973">1973</option>
							<option value="1974">1974</option>
							<option value="1975">1975</option>
							<option value="1976">1976</option>
							<option value="1977">1977</option>
							<option value="1978">1978</option>
							<option value="1979">1979</option>
							<option value="1980">1980</option>
							<option value="1981">1981</option>
							<option value="1982">1982</option>
							<option value="1983">1983</option>
							<option value="1984">1984</option>
							<option value="1985">1985</option>
							<option value="1986">1986</option>
							<option value="1987">1987</option>
							<option value="1988">1988</option>
							<option value="1989">1989</option>
							<option value="1990">1990</option>
							<option value="1991">1991</option>
							<option value="1992">1992</option>
							<option value="1993">1993</option>
							<option value="1994">1994</option>
							<option value="1995">1995</option>
							<option value="1996">1996</option>
							<option value="1997">1997</option>
							<option value="1998">1998</option>
							<option value="1999">1999</option>
							<option value="2000">2000</option>
							<option value="2001">2001</option>
							<option value="2002">2002</option>
							<option value="2003">2003</option>
							<option value="2004">2004</option>
							<option value="2005">2005</option>
							<option value="2006">2006</option>
							<option value="2007">2007</option>
							<option value="2008">2008</option>
							<option value="2009">2009</option>
							<option value="2010">2010</option>
							<option value="2011">2011</option>
							<option value="2012">2012</option>
							<option value="2013">2013</option>
							<option value="2014">2014</option>
							<option value="2015">2015</option>
							<option value="2016">2016</option>
							<option value="2017">2017</option>
							<option value="2018">2018</option>
							<option value="2019">2019</option>
							<option value="2020">2020</option>
					</select> 年 <select name="user.age_m">
							<option value="">-</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
					</select> 月 <select name="user.age_d">
							<option value="">-</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
					</select> 日</td>

				</tr>
				<tr>
					<td>星座：</td>
					<td><select name="user.star">
							<option value="">-</option>
							<option value="1">牡羊座</option>
							<option value="2">牡牛座</option>
							<option value="3">双子座</option>
							<option value="4">蟹座</option>
							<option value="5">獅子座</option>
							<option value="6">乙女座</option>
							<option value="7">天秤座</option>
							<option value="8">蠍座</option>
							<option value="9">射手座</option>
							<option value="10">山羊座</option>
							<option value="11">水瓶座</option>
							<option value="12">魚座</option>
					</select></td>

				</tr>
				<tr>
					<td>都市</td>
					<td><select name="user.city">
							<option value="">選択してください</option>
							<option value="Tokyo">Tokyo</option>
							<option value="New York">New York</option>
							<option value="Beijing">Beijing</option>
							<option value="Hawii">Hawii</option>
							<option value="Okinawa">Okinawa</option>
							<option value="Hibarigaoka">Hibarigaoka</option>

					</select></td>

				</tr>

				<tr>
					<td>趣味：</td>
					<td><input type="checkbox" name="user.hobby_1" value="音楽" />音楽
						<input type="checkbox" name="user.hobby_2" value="絵画" />絵画 <input
						type="checkbox" name="user.hobby_3" value="読書" />読書 <br> <input
						type="checkbox" name="user.hobby_4" value="ジョギング">ジョギング <input
						type="checkbox" name="user.hobby_5" value="ゲーム">ゲーム <input
						type="checkbox" name="user.hobby_6" value="映画">映画</td>

				</tr>

				<tr>
					<td><font color="#FF0000">*</font>Soul Mail：</td>
					<td><input type="text" name="user.soul_login_mail" onblur="checkid()"></br><span id="idcheck"></span></td>
				</tr>

				<tr>
					<td><font color="#FF0000">*</font>Soul PW：</td>
					<td><input type="password" name="user.soul_pw"></td>

				</tr>

			</table>
			<br />
			<s:submit value="登録" onclick="return check_form(inputform)" />
			<s:submit type="button" value="戻る"
				onclick="window.location.href='login.jsp';return false" />
		</div>
	</s:form>

</body>
</html>