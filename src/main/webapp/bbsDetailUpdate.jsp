<%@ page import="dto.MemberDto" %>
<%@ page import="dao.BbsDao" %>
<%@ page import="dto.BbsDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    MemberDto login = (MemberDto) session.getAttribute("login");
    if (login == null) {
%>
<script>
    alert("로그인을 해 주십시오")
    location.href = "login.jsp";
</script>
<% } %>
<%
    int seq = (int) request.getAttribute("seq");
    String id = (String) request.getAttribute("id");
    String wdate = (String) request.getAttribute("wdate");
    String content = (String) request.getAttribute("content");
    String title = (String) request.getAttribute("title");
    int readcount = (int) request.getAttribute("readcount");
%>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            padding: 40px;
        }

        .mytable {
            width: 800px;
            border: 1px solid lightgray;
        }

        th {
            border: 1px solid lightgray;
            text-align: center;
            vertical-align: middle;
        }

        button {
            margin: 0 80px;
        }
    </style>
<body>
<h1 style="text-align: center">글 상세보기 수정</h1>
<br/>
<div align="center">
    <form action="./bbs" method="post">
        <input type="hidden" name="param" value="bbsDetailUpdateAf">

        <input type="hidden" name="seq" value="<%=seq%>">

        <table class="table mytable">
            <col width="200"/>
            <col width="400"/>
            <tr>
                <th>작성자</th>
                <td>
                    <%=id%>
                </td>
            </tr>
            <tr>
                <th>작성일</th>
                <td><%=wdate%>
            </tr>
            <tr>
                <th>조회수</th>
                <td><%=readcount%>
                </td>
            </tr>
            <tr>
                <th>제목</th>
                <td><input type="text" name="title" size="60" value="<%=title%>">
                </td>
            </tr>
            <tr>
                <th>내용</th>
                <td><textarea name="content" class="form-control" cols="50" rows="10"><%=content%></textarea>
                </td>
            </tr>
        </table>
        <button type="submit" class="btn btn-primary">수정완료</button>
    </form>
</div>
</body>
</html>