<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FindUser</title>
</head>


<body>
	<s:fielderror cssStyle="color:blue">
		<s:param>result</s:param>
	</s:fielderror>
	<br />

	<s:if test="userlist!=null && !userlist.isEmpty()">
		<table border="1" cellpadding="5" cellspacing="1">
			<thead>
				<tr>
					<th>名前</th>
					<th>情報</th>
					<th>チェック</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="userlist">
					<tr>
						<td><s:property value="soul_name" /></td>
						<td><s:property value="payText" /></td>
						<td><button type="button">Pay</button></td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</s:if>
</body>
</html>