<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>検索結果</title>

</head>


<body>

	<s:form action="pay" name="payform" method="post" theme="simple">


		<br />

		<s:if test="userlist!=null && !userlist.isEmpty()">
			<table border="1" cellpadding="5" cellspacing="1">
		<s:submit type="button" value="戻る"
			onclick="window.location.href='find.jsp';return false" />
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
							<td><s:a action="pay.action">pay<s:param
										name="soul_userid" value="soul_userid"></s:param>
								</s:a></td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</s:if>
		<s:submit type="button" value="ログオフ" onclick="window.location.href='login.jsp';return false" />
	</s:form>
</body>
</html>