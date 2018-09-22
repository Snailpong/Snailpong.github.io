<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>주소록:작성화면</title>
</head>
<body>
<form action="Add" method="post">
	<div style="text-align:center"><h1>주소록:작성화면</h1></div>
	<hr>
	
	<div style="text-align:center"><a href="index.jsp">[게시물목록으로]</a></div>
	<table align="center" border="1">
		<tr>
			<td align="center">이름</td>
			<td><input type="text" name="name" size="10"></td>
		</tr>
		<tr>
			<td align="center">email</td>
			<td><input type="text" name="email" size="10"></td>
		</tr>
		<tr>
			<td align="center">전화번호</td>
			<td><input type="text" name="tel" size="10"></td>
		</tr>
		<tr>
			<td align="center">생일</td>
			<td><input type="text" name="birth" size="10"></td>
		</tr>
		<tr>
			<td align="center">회사</td>
			<td><input type="text" name="company" size="10"></td>
		</tr>
		<tr>
			<td align="center">메모</td>
			<td><input type="text" name="memo" size="10"></td>
		</tr>
		<tr>
			<td><input type="submit" value="전송"></td>
		</tr>
	</table>
</form>
</body>
</html>