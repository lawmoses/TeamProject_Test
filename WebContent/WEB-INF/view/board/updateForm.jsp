
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title></head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head> 

<body>
<div class="w3-container">
	<center>
		<h4><b>�ۼ���</b></h4>
	<br/>
	<br/>
	<form method="post" name="writeform" action="updatePro" >
<!-- ���� : ${article.boardid} -> ${boardid} -->
		<input  type="hidden"   name="boardid" value="${boardid}">
		<input  type="hidden"   name="num" value="${article.num}">
		<input  type="hidden"   name="ref" value="${article.ref}">
		<input  type="hidden"   name="re_level" value="${article.re_level}">
		<input  type="hidden"   name="re_step" value="${article.re_step}">
		<input  type="hidden"   name="pageNum" value="${pageNum}">
	<table class="w3-table-all"  style="width:70%;" >
   		<tr>
    		<td align="right" colspan="2" >
	    		<a href="list${boardid}"> �۸��</a> 
   			</td>
   		</tr>
   		<tr>
    		<td  width="70"   align="center">�� ��</td>
    		<td  width="330">
       			<input type="text" size="10" maxlength="10" name="writer" 
       					value="${article.writer}">
       		</td>
  		</tr>	
  		<tr>
    		<td  width="70"   align="center" >�� ��</td>
    		<td width="330">
       			<input type="text" size="40" value="${article.subject }" 
       				maxlength="50" name="subject">
			</td>
  		</tr>
  		<tr>
    		<td  width="70"   align="center">Email</td>
    		<td  width="330">
       			<input type="text" size="40" maxlength="30" 
       				name="email" value="${article.email}"></td>
  		</tr>
  		<tr>
    		<td  width="70"   align="center" >�� ��</td>
    		<td  width="330" >
     			<textarea name="content" rows="13" cols="40">${article.content}
     			</textarea> 
     		</td>
  		</tr>
  		<tr>
    		<td  width="70"   align="center" >��й�ȣ</td>
    		<td  width="330" >
     			<input type="password" size="8" maxlength="12" name="passwd"> 
	 		</td>
  		</tr>
		<tr>      
 			<td colspan=2  align="center"> 
  				<input type="submit" value="�۾���" >  
  				<input type="reset" value="�ٽ��ۼ�">
<!-- ���� : &boardid=${boardid} -->  				
  				<input type="button" value="��Ϻ���" OnClick="window.location='list${boardid}'">
			</td>
		</tr>
	</table>    
     
</form>  
</center>
</div> 
</body>
</html>