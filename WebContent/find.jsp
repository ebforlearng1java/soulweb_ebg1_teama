<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
	<td></td>
	</tr>
<tr>
	<td><%=request.getSession(true).getAttribute("msg")%></td>
	</tr>
			<tr>
				<td>＊</td>
				<td>ＳＯＵＬ名：</td>
				<td colspan="4"><%=request.getParameter("USERNAME")%></td>
			</tr>
			<tr>
				<td>＊</td>
				<td>PW：</td>
				<td colspan="4"><%=request.getParameter("PASSWORD")%></td>
			</tr>
		</table>
</body>
</html>