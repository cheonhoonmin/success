<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>NAME</th>
			<td>${dto.bd_name }</td>
		</tr>
		<tr>
			<th>TITLE</th>
			<td>${dto.bd_title }</td>
		</tr>
		<tr>
			<th>CONTENT</th>
			<td><textarea rows="10" cols="60" readonly="readonly">${dto.bd_content }</textarea></td>
		</tr>
		<tr>
			<td colspan="1" align="right">
				<input type="button" value="수정" onclick="location.href='update.do?bd_no=${dto.bd_no}'">
				<input type="button" value="삭제" onclick="location.href='delete.do?bd_no=${dto.bd_no}'">
				<input type="button" value="목록" onclick="location.href='list.do'">
			</td>
		</tr>
	</table>

</body>
</html>