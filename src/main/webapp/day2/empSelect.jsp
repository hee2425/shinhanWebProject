<%@page import="java.util.List"%>
<%@page import="aproject.vo.EmpVO"%>
<%@page import="aproject.model.EmpService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	EmpService eService = new EmpService();
	List<EmpVO> emplist = eService.selectAll();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
@import url(//fonts.googleapis.com/earlyaccess/kopubbatang.css);
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
	h1{
		font-family: 'KoPub Batang', serif;
		text-align: center;
	}
	table {
		margin-left : auto;
		margin-right: auto;
		text-align : center;
	}
	
	
	th {
		font-family: monospace;
		font:bold;
		background-color: lightblue;
		color: white;
		border-radius: 15px;
		padding: 15px;
		
	}
	
	tbody tr, td{
		border-bottom: 1px solid gray;
		padding : 3px;
		font-family: 'Jeju Gothic', sans-serif;
	}
	tr:hover{
		background-color: lightgray;
	}
	td .index {
		background-color: rgb(210, 210, 210);
	}
</style>
</head>
<body>

	<h1>�������</h1>
	<table>
	<thead>
	<tr>
	<th>������ȣ</th>
	<th>�̸�</th>
	<th>��</th>
	<th>�̸���</th>
	<th>�޿�</th>
	<th>�Ի���</th>
	<th>��ȭ��ȣ</th>
	<th>��å</th>
	<th>�Ŵ���</th>
	<th>Ŀ�̼�</th>
	<th>�μ�</th>
	</tr>
	</thead>
	<tbody>
	<%for(EmpVO emp:emplist){ %>
	<tr>
	<td class="index"><%=emp.getEmployee_id() %></td>
	<td><%=emp.getFirst_name() %></td>
	<td><%=emp.getLast_name() %></td>
	<td><%=emp.getEmail() %></td>
	<td><%=emp.getSalary() %></td>
	<td><%=emp.getHire_date() %></td>
	<td><%=emp.getPhone_number() %></td>
	<td><%=emp.getJob_id()%></td>
	<td><%=emp.getManager_id() %></td>
	<td><%=emp.getCommission_pct()%></td>
	<td><%=emp.getDepartment_id()%></td>
	</tr>
	<%} %>
	</tbody>
	</table>

</body>
</html>