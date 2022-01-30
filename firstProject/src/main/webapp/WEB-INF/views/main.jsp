<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%-- <%
request.setCharacterEncoding("UTF-8");
%>
<%
response.setContentType("text/html; charset=UTF-8");
%> --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<!-- bootstrap css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	
</head>
<body>

<nav class="navbar navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand">Navbar</a>
    <form class="d-flex">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
  </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-xs-12"><h1>게시판 목록</h1></div>
    </div>
    <div class="row">
        <div class="col-md-9"><table border="1">
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
				<td><a href="one.do?bd_no=${dto.bd_no }">${dto.bd_title }</a></td>
				<td>${dto.bd_date }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="4" align="right">
				<input type="button" value="글쓰기" onclick="location.href='insert.do'">
			</td>
		</tr>
	</table></div>
        <div class="col-md-3"></div>
    </div>
    <div class="row">
        <div class="col-xs-12"></div>
    </div>
</div>

</body>
</html>