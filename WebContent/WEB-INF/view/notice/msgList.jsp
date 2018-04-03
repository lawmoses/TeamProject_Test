<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<div class="w3-container" style="margin: 40px 100px;">
  <h2 style="text-align: center;">Message List</h2>

  <table class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-teal">
        <th>����</th>
        <th>�������</th>
        <th>����</th>
        <th>�����Ͻ�</th>
      </tr>
    </thead>
    <tr>
      <td>3</td>
      <td>�̱׸�(gree)</td>
      <td>
      		<a href="receiveMsg">����� �ȳ��ϼ���?</a>
      </td>
      <td>2018-03-25 16:08</td>
    </tr>
    <tr>
      <td>2</td>
      <td>�̱׸�(gree)</td>
      <td>���� Ȯ�� ��Ź�帳�ϴ�</td>
      <td>2018-03-22 10:45</td>
    </tr>
    <tr>
      <td>1</td>
      <td>�̱׸�(gree)</td>
      <td>ȸ�� ����Դϴ�</td>
      <td>2018-01-25 14:22</td>
    </tr>
  </table>
</div>
<!-- �ϴ� ������ -->
	<div class="w3-center" style="margin-top: 20px; text-align: center;">
	<c:if test="${count>0}">
	<c:if test="${startPage > bottomLine }">
		<a href="adList?pageNum=${startPage - bottomLine}">[����]</a> 
	</c:if>
	
	<c:forEach var="i" begin="${startPage}" end="${endPage}">	
	<a href="adList?pageNum=${i}">
	<c:if test="${i !=  currentPage}">[${i}]</c:if>
	<c:if test="${i ==  currentPage}">
	<font color='red'>[${i}]</font></c:if></a>
	</c:forEach>
	
	<c:if test="${endPage < pageCount}">
		<a href="adList?pageNum=${startPage+bottomLine}">[����]</a>
	</c:if>	
	</c:if>
	</div><br>
<!-- ȸ�� �˻� -->
	<form name ="search" method="post" style="text-align: center;">
		<select name="keyField" style="height: 30px;">
		<option>����</option>
		<option value="m_id">�������</option>
		<option value="m_name">����</option>
		</select>
		<input type="text" size="20" name="keyWord">
		<input type="button" value="�˻�" onclick="mem_search(form)" />&nbsp;
	</form>
</body>
</html> 
