<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>RegisterSuccess</title>
</head>
<body>
   <h1><s:property value="user.soul_name"/>、新規登録が完了しました。</h1>
   	<s:submit type="button" value="ログイン画面へ" onclick="window.location.href='login.jsp'" />
</body>
</html>