<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>주소록:목록화면</title>
</head>
<body>
	<div style="text-align:center"><h1>주소록:목록화면</h1></div>
	<hr>
	
	<div style="text-align:center"><a href="addrbook_form.jsp">[주소록 등록]</a></div>
	<table align="center" border="1">
		<tr>
			<td align="center">이름</td>
			<td align="center">email</td>
			<td align="center">전화번호</td>
			<td align="center">생일</td>
			<td align="center">회사</td>
			<td align="center">메모</td>
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