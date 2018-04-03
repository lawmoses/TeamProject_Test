<!DOCTYPE html>
<html>
<title>message2</title><!-- 받는메세지 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript">
function gomsg1() {
	window.location.href = "/GroupWare/notice/msg1.jsp";
}
</script>
<body>
      <form class="w3-container">
      	<h1 align="center" style="padding-top: 30px;">받은쪽지</h1>
        <div class="w3-section"  style="padding: 0.01em 300px">
          <label><b>보낸사람</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" name="to" required readonly="readonly">
          <label><b>받는사람</b></label>
          <input class="w3-input w3-border" type="text" name="from" required readonly="readonly">
          <br>
          <label><b>보낸일시</b></label>
          <input class="w3-input w3-border" type="text" name="from" required readonly="readonly">
          <br>
          <label><b>제목</b></label>
          <input class="w3-input w3-border" type="text" name="title" readonly="readonly">
          <br>
          <label><b>내용</b></label>
          <textarea class="w3-input w3-border" name="message" required readonly="readonly" style="height:200px; resize: none;"></textarea>
          <br>
          <input class="w3-button w3-block w3-teal w3-section w3-padding w3-large"  
          	     type="button" value="답장보내기" onClick="location.href='/GroupWare/notice/sendMsg';">
        </div>
      </form>        
</body>
</html>
