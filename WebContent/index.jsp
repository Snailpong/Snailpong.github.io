<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ּҷ�:���ȭ��</title>
</head>
<body>
	<div style="text-align:center"><h1>�ּҷ�:���ȭ��</h1></div>
	<hr>
	
	<div style="text-align:center"><a href="addrbook_form.jsp">[�ּҷ� ���]</a></div>
	<table align="center" border="1">
		<tr>
			<td align="center">�̸�</td>
			<td align="center">email</td>
			<td align="center">��ȭ��ȣ</td>
			<td align="center">����</td>
			<td align="center">ȸ��</td>
			<td align="center">�޸�</td>
		</tr>
	<%
	Connection connection;
	Statement stmt;
	ResultSet rs;
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.3:1521:xe" , "tjdtnsu" , "seong2012");
		stmt = connection.createStatement();
		rs = stmt.executeQuery("select name, email, tel, birth, company, memo from member");
		while(rs.next()) {
			%> <tr>
			
			<td align="center" width="100"> <% out.print(rs.getString("name") + "\t"); %>  </td>
			<td align="center" width="100"> <% out.print(rs.getString("email") + "\t");  %> </td>
			<td align="center" width="100"> <% out.print(rs.getString("tel") + "\t"); %> </td>
			<td align="center" width="100"> <% out.print(rs.getString("birth") + "\t"); %> </td>
			<td align="center" width="100"> <% out.print(rs.getString("company") + "\t"); %> </td>
			<td align="center" width="100"> <% out.print(rs.getString("memo") + "\t"); %> </td>
			
			</tr>
			<%
		}
		stmt.close();
		connection.close();
		
	} catch (Exception e) {
		e.printStackTrace();
	} 
	
	%>
	</table>

</body>
</html>