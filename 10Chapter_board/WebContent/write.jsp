<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�۾���</title>
</head>

<body>

 <%
      String name = (String) session.getAttribute("name");
 %>
   
<div class="container">
<br>
<br>
  <center><h2>�۾���</h2></center>
  <form action="write.do" method="post">
  
    <div class="form-group">
      <label for="Title">����:</label>
      <input type="text" class="form-control" id="title" placeholder="Enter Title" name="title">
    </div>
    <div class="form-group">
      <label for="Author">�ۼ���:</label>
      <input type="text" class="form-control" id="author"  value="<%=name%>" name="author">
    </div>
    <div class="form-group">
    <label for="date">��¥:</label>
    <input type="date" class="form-control" id="writeday" name="writeday">
    </div>
    
    <br>
    <div class="form-group">
      <label for="content">����:</label>
       <textarea class="form-control" id="content" placeholder="Enter Contents" rows="10" name="content"></textarea>
    </div>
    
	<center>
	<button type="button" class="btn btn-light" id="list" onclick="location.href='list.do'">��Ϻ���</button>	
    <button type="submit" class="btn btn-info" >Ȯ��</button>
  	</center>
  	
  </form>
</div>
</body>
</html>