<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="bdinsert.do" method="post">
	<table border="1">
		<tr>
			<th>NAME</th>
			<td><input type="text" name="bd_name"></td>
		</tr>
		<tr>
			<th>TITLE</th>
			<td><input type="text" name="bd_title"></td>		
		</tr>
		<tr>
			<th>CONTENT</th>
			<td><textarea rows="10" cols="60" name="bd_content"></textarea>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="submit" value="완료">
				<input type="button" value="취소" onclick="location.href='list.do'">
			</td>
	</table>
	</form>
</body>
</html>