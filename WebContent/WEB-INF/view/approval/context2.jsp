<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<div class="w3-padding-16"></div>
<div class="w3-light-grey w3-content" style="max-width:1600px">
  <!-- Contact Section -->
  <div class="w3-container w3-padding-large w3-grey">
    <h4 id="contact"><b>Contact Me</b></h4>
    <div class="w3-row-padding w3-center w3-padding-24" style="margin:0 -16px">
      <div class="w3-third w3-dark-grey">
        <p><i class="fa fa-envelope w3-xxlarge w3-text-light-grey"></i></p>
        <p>��ȼ�</p>
      </div>
      <div class="w3-third w3-teal">
        <p><i class="fa fa-map-marker w3-xxlarge w3-text-light-grey"></i></p>
        <p>�ް���û��</p>
      </div>
      <div class="w3-third w3-dark-grey">
        <p><i class="fa fa-phone w3-xxlarge w3-text-light-grey"></i></p>
        <p>������Ǽ�</p>
      </div>
    </div>
    <hr class="w3-opacity">
    <form action="/action_page.php" target="_blank">
      <div class="w3-section">
        <label>�ۼ���</label><br>
        <input class="w3-input w3-border" type="text" name="Name" readonly="readonly">
      </div>
      <div class="w3-section">
        <label>�Ҽ�</label>
        <input class="w3-input w3-border" type="text" name="Email" readonly="readonly">
      </div>
      <div class="w3-section">
        <label>�ް�����</label><br>
        <input class="w3-radio" type="radio" name="gender" value="male" checked>
		<label>����</label>

		<input class="w3-radio" type="radio" name="gender" value="female">
		<label>����</label>
        <!-- <input type="radio" name="myRadio" value="1" /><span>����</span>
		<input type="radio" name="myRadio" value="2" checked="checked" /><span>����</span>
		<input type="radio" name="myRadio" value="3" /><span>����</span>
		<input type="radio" name="myRadio" value="4" /><span>�����ް�</span> -->
      </div>

      
       <div class="w3-section">
        <label>�ް��Ⱓ</label><br>
        <input class="w3-input40 w3-border" type="text" name="Name" required>&nbsp;&nbsp;&nbsp;&nbsp;
        <input class="w3-input40 w3-border" type="text" name="Name" required>
      </div>
      
      <div class="w3-section">
        <label>����</label>
        <textarea class="w3-input w3-border" type="text" name="Message" required style="height:200px; resize: none;" ></textarea>
      </div>
      <div class="w3-section">
        <label>�ۼ�����</label>
        <input class="w3-input w3-border" type="text" name="Email" required>
      </div>
      <button type="submit" class="w3-button w3-black w3-margin-bottom"><i class="fa fa-paper-plane w3-margin-right"></i>�ۼ��Ϸ�</button>
	  <button type="submit" class="w3-button w3-black w3-margin-bottom"><i class="fa fa-paper-plane w3-margin-right"></i>�ٽ��ۼ�</button>
    </form>
  </div>
	
  
  
  <div class="w3-black w3-center w3-padding-24">Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a></div>

<!-- End page content -->
</div>

<script>
// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>
</div>
</html>