<%@page import="util.CalendarUtil"%>
<%@page import="dao.CalendarDao"%>
<%@page import="dto.CalendarDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	CalendarDto dto = (CalendarDto)request.getAttribute("dto");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
.center{
	margin: auto;
	width: 800px;
	text-align: center;		
}
th{
	background: royalblue;
	color: white;
}
</style>
</head>
<body>

<h2>일정보기</h2>
<br>

<div class="center">

<table class="table table-bordered">
<col width="200"><col width="500">

<tr>
	<th>아이디</th>
	<td align="left"><%=dto.getId() %></td>
</tr>
<tr>
	<th>일정</th>
	<td align="left"><%=CalendarUtil.toDates(dto.getRdate()) %></td>
</tr>
<tr>
	<th>제목</th>
	<td>
		<input type="text" class="form-control" value="<%=dto.getTitle() %>">
	</td>
</tr>
<tr>
	<th>내용</th>
	<td>
		<textarea rows="15" cols="50" class="form-control"><%=dto.getContent() %></textarea>
	</td>
</tr>
</table>

<button type="button" class="btn btn-primary" onclick="updateCal(<%=dto.getSeq() %>)">일정수정</button>
	
<button type="button" class="btn btn-primary" onclick="deleteCal(<%=dto.getSeq() %>)">일정삭제</button>

</div>

<script type="text/javascript">
function updateCal( seq ) {
	location.href = "calendar?param=calupdate&seq=" + seq;	
}
function deleteCal( seq ) {
	location.href = "calendar?param=caldelete&seq=" + seq;
}
</script>


</body>
</html>