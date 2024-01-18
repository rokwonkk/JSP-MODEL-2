<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // 회원가입
    String message = (String) request.getAttribute("message");
    if (message != null && !message.isEmpty()) {
        if (message.equals("MEMBER_YES")) {
%>
<script type="text/javascript">
    alert("성공적으로 가입되었습니다");
    location.href = "./member?param=login";
</script>
<%
} else {
%>
<script type="text/javascript">
    alert("다시 가입해 주십시오");
    location.href = "./member?param=regi";
</script>
<%
        }
    }

// 로그인
    String loginMsg = (String) request.getAttribute("loginMsg");
    if (loginMsg != null && !loginMsg.isEmpty()) {
        if (loginMsg.equals("LOGIN_SUCCESS")) {
%>
<script type="text/javascript">
    alert("로그인되었습니다");
    location.href = "./bbs?param=bbslist";
</script>
<%
} else {
%>
<script type="text/javascript">
    alert("아이디나 패스워드를 확인해 주세요");
    location.href = "./member?param=login";
</script>
<%
        }
    }

// 글쓰기
    String writeMsg = (String) request.getAttribute("writeMsg");
    if (writeMsg != null && !writeMsg.isEmpty()) {
        if (writeMsg.equals("WRITE_SUCCESS")) {
%>
<script>
    alert("글작성에 성공하였습니다.");
    location.href = "./bbs?param=bbslist";
</script>
<% } else { %>
<script>
    alert("글작성에 실패하였습니다.");
    location.href = "./bbs?param=bbslist";
</script>
<%
        }
    }
    String bbsDetailUpdateMsg = (String) request.getAttribute("bbsDetailUpdateMsg");
    if (bbsDetailUpdateMsg != null && !bbsDetailUpdateMsg.isEmpty()) {
        if (bbsDetailUpdateMsg.equals("UPDATE_SUCCESS")) {
%>
<script>
    alert("글수정에 성공하였습니다.");
    location.href = "./bbs?param=bbslist";
</script>
<% } else { %>
<script>
    alert("글수정에 실패하였습니다.");
    location.href = "./bbs?param=bbslist";
</script>
<%
        }
    }
    String bbsDeleteMsg = (String) request.getAttribute("bbsDeleteMsg");
    if (bbsDeleteMsg != null && !bbsDeleteMsg.isEmpty()) {
        if (bbsDeleteMsg.equals("DELETE_SUCCESS")) {
%>
<script>
    alert("글삭제에 성공하였습니다.");
    location.href = "./bbs?param=bbslist";
</script>
<% } else { %>
<script>
    alert("글삭제에 실패하였습니다.");
    location.href = "./bbs?param=bbslist";
</script>
<%
        }
    }
    String bbsAnswerMsg = (String) request.getAttribute("bbsAnswerMsg");
    if (bbsAnswerMsg != null && !bbsAnswerMsg.isEmpty()) {
        if (bbsAnswerMsg.equals("ANSWER_SUCCESS")) {
%>
<script>
    alert("답글입력 성공~!");
    location.href = "./bbs?param=bbslist";
</script>
<%
} else {
%>
<script>
    alert("답글입력 실패~!");
    location.href = "./bbs?param=bbslist";
</script>
<%
        }
    }
%>