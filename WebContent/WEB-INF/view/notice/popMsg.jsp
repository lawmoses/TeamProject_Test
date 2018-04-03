<!DOCTYPE html>
<html>
<title>message</title><!-- 보내는 메세지 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<script type="text/javascript">
function pop(){
	window.open("http://www.google.com/","","width=800,height=600");
}
</script>
<body>

 <div class="w3-container">
  <h2>W3.CSS Login Modal</h2>
  <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-green w3-large">Login</button>

  <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">

      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
      </div>

      <form class="w3-container">
      	<h1 align="center">보낼쪽지</h1>
        <div class="w3-section">
          <label><b>보내는사람</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" name="to" required readonly="readonly">
          <label><b>받는사람</b></label>
          <input class="w3-input w3-border" type="text" name="from" required onclick="pop();">
          <br>
          <label><b>제목</b></label>
          <input class="w3-input w3-border" type="text" name="title" required>
          <br>
          <label><b>내용</b></label>
          <textarea class="w3-input w3-border" type="text" name="message" required style="height:200px; resize: none;" ></textarea>
          <br>
          <button class="w3-button w3-block w3-teal w3-section w3-padding w3-large" type="submit">쪽지 전송</button>
        </div>
      </form>

    </div>
  </div>
</div>
            
</body>
</html>
