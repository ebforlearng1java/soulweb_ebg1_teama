<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>検索</title>
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
	<s:form action="search" name="findform" method="post" theme="simple">
		<s:submit type="button" value="基本情報修正" style='background-color: green; position: absolute; top: 0px; right: 0px;font size="12px"'
			onclick="window.location.href='modify.jsp';return false" />

		<div class="center">
		<s:submit style="height: 100px; width: 220px; background-color: green; font-size: 40px" value="SOUL" />
		</div>

		<s:submit type="button" value="ログオフ" style='background-color: green; position: absolute; bottom: 0px; right: 0px;font size="12px"'
			onclick="window.location.href='login.jsp';return false" />

	</s:form>
</body>
</html>