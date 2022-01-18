<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
response.setContentType("text/html; charset=UTF-8");
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>�Խ��� ���</h1>
	<table border="1">
		<colgroup>
			<col width="50">
			<col width="100">
			<col width="300">
			<col width="100">
		</colgroup>
		<tr>
			<th>NO</th>
			<th>NAME</th>
			<th>TITLE</th>
			<th>DATE</th>			
		</tr>
		<c:forEach items="${list }" var="dto">
			<tr>
				<td>${dto.bd_no }</td>
				<td>${dto.bd_name }</td>
				<td>${dto.bd_title }</td>
				<td>${dto.bd_date }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="4" align="right">
				<input type="button" value="�۾���" onclick="">
			</td>
		</tr>
	</table>
</body>
</html>