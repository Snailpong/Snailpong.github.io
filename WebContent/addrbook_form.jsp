<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ּҷ�:�ۼ�ȭ��</title>
</head>
<body>
<form action="Add" method="post">
	<div style="text-align:center"><h1>�ּҷ�:�ۼ�ȭ��</h1></div>
	<hr>
	
	<div style="text-align:center"><a href="index.jsp">[�Խù��������]</a></div>
	<table align="center" border="1">
		<tr>
			<td align="center">�̸�</td>
			<td><input type="text" name="name" size="10"></td>
		</tr>
		<tr>
			<td align="center">email</td>
			<td><input type="text" name="email" size="10"></td>
		</tr>
		<tr>
			<td align="center">��ȭ��ȣ</td>
			<td><input type="text" name="tel" size="10"></td>
		</tr>
		<tr>
			<td align="center">����</td>
			<td><input type="text" name="birth" size="10"></td>
		</tr>
		<tr>
			<td align="center">ȸ��</td>
			<td><input type="text" name="company" size="10"></td>
		</tr>
		<tr>
			<td align="center">�޸�</td>
			<td><input type="text" name="memo" size="10"></td>
		</tr>
		<tr>
			<td><input type="submit" value="����"></td>
		</tr>
	</table>
</form>
</body>
</html>