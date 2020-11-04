<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>find</title>
<style type="text/css">
			 * {
				margin: 0px;
			}

	.center{
				position:absolute;
				top:50%;
				left:50%;
			   width:200px;
	           height:30px;
			}
	.rig{
	           width:310px;
	           height:30px;
	           top:0px;
	           right:0px;
	           position:absolute;
	}
		</style>
</head>
<body>
<%
if (request.getAttribute("errormsg") == null) {
	request.setAttribute("errormsg", "");
}

%>
<form action="Find" method="post">
<a href="register.jsp">   <button type='button' style='background-color:green;position:absolute;top:0px;right:0px;font size="12px"'><font size="12px">基本情報修正</font></button></a>
  <div class = "center">
  <br>	<span><%=request.getAttribute("errormsg")%></span><br>
      <input type="submit" style= "height:50px;width:120px;background-color:green; font-size:30px"value="SOUL" id ='soulbtn' onclick="find()" />
   </div>
    <button type='button' style="background-color:green;width: 66px;position: fixed;bottom: 20px;right: 25px;font-size: 0;line-height: 0;z-index: 100;"><font size="12px">ログオフ</font></button></a>

<script language="javascript" type="text/javascript">

function submitLogic(btnNo) {
	if (btnNo == 1) {
		document.mainForm.EBTN.value = "1";//
	}else {
		document.mainForm.EBTN.value = "2";//
	}

	// 遷移ロジック
	document.mainForm.submit();
}

</script>
</form>
</body>
</html>