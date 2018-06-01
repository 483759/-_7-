<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��Ϻ���</title>
</head>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

<body>
<center>
<h1>�Խ��� ��� ����</h1>


<form action="search.do">
<div class="dropdown">
<button class="btn btn-light dropdown-toggle" type="button" id="Search" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
�ۼ���
</button>
	<div class="dropdown-menu" aria-labelledby="Search">
		<a class="dropdown-item" href="#">�ۼ���</a>
		<a class="dropdown-item" href="#">����</a>
	</div>
	</div>
	<div width="50%" class="form-group">
      <input type="text" class="form-control" id="Searchbar" placeholder="Enter" name="Serachbar">
    <button class="btn btn-light" id="search" onclick="">�˻�</button>
</form>


<br>
<div class="navbar navbar-default">
	

	   <div width="50%" class="container">
	   <table class="table table-board">
	   	<colgroup>
	   		<col width="7%">
	   		<col width="40%">
	   		<col width="15%">
	   		<col width="10%">
	   		<col width="7%">
	   	</colgroup>
	   	<thead>
	   		<tr>
	   			<th style="text-align:center;">�� ��ȣ</th>
	   			<th style="text-align:center;">����</th>
	   			<th style="text-align:center;">�ۼ���</th>
	   			<th style="text-align:center;">�ۼ���</th>
	   			<th style="text-align:center;">��ȸ��</th>
	   		</tr>
	   		<tr>
	   			<td style="text-align:center;">1</td>
	   			<td style="text-align:center;">����� �ȳ� ������ �ȳ�~~ ~~ ~!~!~</td>
	   			<td style="text-align:center;">���Ѻ�</td>
	   			<td style="text-align:center;">2018.06.01</td>
	   			<td style="text-align:center;">3</td>
	   		</tr>
	   </table>
	   	   </div> </div>
	  
	   <center>
	  
		<button class="btn btn-light" id="insert" onclick="">�۾���</button>
		<button class="btn btn-light" id="insert" onclick="">��Ϻ���</button>	
		
		</center>

	
<c:forEach items="${list}" var="dto">
   	<tr>
	   <td>${dto.num}</td>
	   <td>
	   <c:forEach begin="1" end="${dto.repIndent }">
	    <%= "&nbsp;&nbsp;" %>
	   </c:forEach>   
	   <a href="retrieve.do?num=${dto.num}">${dto.title}</a>
	   </td>
	   <td>${dto.author}</td>
	   <td>${dto.writeday}</td>
	   <td>${dto.readcnt}</td>
	</tr>

</c:forEach>	

	</table>
	</div>
	</center>
	
</body>
</html>