<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��Ϻ���</title>

<style>
#searchbar {
display : inline-block;
float : right;
margin-bottom : 10px;
margin-right : 2px;
}
</style>
</head>


<body>
<br>
<br>
<h1 class="text-center">�Խ��� ��� ����</h1>
<br>
<br>

<div class="container" >
<div class="row" id="searchbar">
<form class="form-inline" action="search.do">
<div class="dropdown">
<button class="btn btn-light dropdown-toggle" type="button" id="Search" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
�ۼ���
</button>
	<div class="dropdown-menu" aria-labelledby="Search">
		<a class="dropdown-item" href="#">�ۼ���</a>
		<a class="dropdown-item" href="#">����</a>
	</div>
	</div>
      <input type="text" class="form-control" id="Searchbar" placeholder="Enter" name="Serachbar" width="50%">
    <button class="btn btn-light " id="search" onclick="">�˻�</button>

</form>
</div>
</div>




<div class="container">	
	   <div>
	   <table class="table table-board text-center">
	   	<thead>
	   		<tr>
	   			<th style="width:7%">�� ��ȣ</th>
	   			<th style="width:40%">����</th>
	   			<th style="width:15%">�ۼ���</th>
	   			<th style="width:10%">�ۼ���</th>
	   			<th style="width:7%">��ȸ��</th>
	   		</tr>
	   	</thead>
	   	<tbody>
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
	   	</tbody>
	   </table>
	   	   </div>
	  <div class="text-center">
	  
		<button class="btn btn-light" id="insert" onclick="location.href='writeui.do">�۾���</button>
		<!--<button class="btn btn-light" id="insert" onclick="location.href='list.do">��Ϻ���</button>-->	
		
</div>
	</div>

  

	
     <!-- page -->
	<tr>
		<td colspan="5"><jsp:include  page="page.jsp"  flush="true" /></td>
	</tr>

</body>
</html>