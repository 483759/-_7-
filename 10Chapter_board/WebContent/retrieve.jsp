<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�� �ڼ��� ����</title>
</head>
<body>
	<div class="container">
		<br> <br>
		<center>
			<h2>�� �ڼ��� ����</h2>
		</center>
		<form action="update.do" method="post">
			<input type="hidden" name="num" value="${retrieve.num}">
			<div class="form-group">
				<label for="Title">����:</label> <input type="text"
					class="form-control" name="title" value="${retrieve.title}">
			</div>
			<div class="form-group">
				<label for="Author">�ۼ���:</label> <input type="text"
					class="form-control" name="author" value="${retrieve.author}">
			</div>
			<div class="form-group">
				<label for="date">��¥:</label> <input type="date"
					class="form-control" name="writeday" value="${retrieve.writeday}">
			</div>

			<br>
			<div class="form-group">
				<label for="content">����:</label>
				<textarea name="content" class="form-control" rows="10">${retrieve.content}</textarea>
				<center>
					<br> <input type="submit" class="btn btn-info" value="����">
					<button class="btn btn-info"
						onclick="location.href='delete.do?num=${retrieve.num}'">����</button>
				</center>
			</div>

			<br>
			<center>

				<button type="button" class="btn btn-light" id="list"
					onclick="location.href='replyui.do?num=${retrieve.num}'">�亯�ޱ�</button>
				<button type="button" class="btn btn-info"
					onclick="location.href='list.do'">Ȯ��</button>
			</center>

		</form>
	</div>
</body>

</html>
