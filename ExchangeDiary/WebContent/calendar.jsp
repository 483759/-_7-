<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>�ڹٽ�ũ��Ʈ - �޷� ����� ����</title>

<!-- �ڹٽ�ũ��Ʈ - �޷� ����� ���� -->
<!-- ���� : �ڹ� ��ũ��Ʈ�� Ȱ���Ͽ� �޷��� ����� ���� -->

<script type="text/javascript">
window.onload = function() {
	//document.getElementById("btnShow").onclick = func; : �Ʒ� �̺�Ʈ �����ʵ� �����ϰ� �ۿ�
	document.getElementById("btnShow").addEventListener("click", func, false);
}


function func() {
	var now = new Date();
	var year = now.getFullYear();
	var month = now.getMonth();
	var day = now.getDate();
	//alert(year + "." + month + 1 + "." + day); // month�� 0���� �����ϱ� ������ +1�� �ؾߵ�
	
	//�ش� ���� 1���� ���� �����̳�
	var setDate = new Date(year, month, 1);
	var firstDay = setDate.getDate();
	var yoil = setDate.getDay();
	//alert(yoil); // ��:0, ��:1 ~ ��:6
	
	var nalsu = new Array(31,28,31,30,31,30,31,31,30,31,30,31);
	
	//2���� ���� üũ
	if(year % 4 === 0 % year % 100 !== 0 || year % 400 === 0 ){
		nalsu[1] = 28;
	}
	
	makeCalendar(yoil, nalsu[month],year,month+1, day)
	document.getElementById("disp").innerHTML = str;
	
	// ��ư ���̱�
	document.getElementById("etc").style.display = "";
	
}
var str= "";
function makeCalendar(yoil, nalsu, year, month, day) {
	str = "<table border ='0'>";
	str += "<tr><th colspan='7' width='400'>" + year + "��" + month + "��</th></tr>";
	str += "<tr>";
	var week = new Array("��", "��", "ȭ", "��", "��", "��", "��");
	for(var i = 0; i < week.length; i++){
		str += "<th>" + week[i] + "</th>";
	}
	str += "</tr>";
	
	// �� �� ä���
	var no = 1;
	var currentCell = 0;
	var ju = Math.ceil((nalsu + yoil) / 7);
	//alert("�̹����� " + ju + " �� ���� ��ӵ˴ϴ�");
	for(var r=0; r < ju; r++){
		str += "<tr style='text-align:center'>";
		for(var col=0; col < 7; col++){
			if(currentCell < yoil || no > nalsu){
				str += "<td>&nbsp;</td>";
				currentCell++;
			}else{
				str += "<td>" + no + "</td>";
				no++;
			}
			
		}
		str += "<td>&nbsp;</td>";
		
		str += "</tr>";
	}
	
	str += "</table>";
}

//--------------

function func1() {
	var now = new Date();
	var year = now.getFullYear();
	var month = now.getMonth();
	var day = now.getDate();
	//alert(year + "." + month + 1 + "." + day); // month�� 0���� �����ϱ� ������ +1�� �ؾߵ�
	
	//�ش� ���� 1���� ���� �����̳�
	var setDate = new Date(year, month, 1);
	var firstDay = setDate.getDate();
	var yoil = setDate.getDay();
	//alert(yoil); // ��:0, ��:1 ~ ��:6
	
	var nalsu = new Array(31,28,31,30,31,30,31,31,30,31,30,31);
	
	//2���� ���� üũ
	if(year % 4 === 0 % year % 100 !== 0 || year % 400 === 0 ){
		nalsu[1] = 28;
	}
	
	makeCalendar(yoil, nalsu[month],year,month+1, day)
	document.getElementById("disp").innerHTML = str;
	
	// ��ư ���̱�
	document.getElementById("etc").style.display = "";
	
}
var str= "";
function makeCalendar(yoil, nalsu, year, month, day) {
	str = "<table border ='0'>";
	str += "<tr><th colspan='7' width='400'>" + year + "��" + month + "��</th></tr>";
	str += "<tr>";
	var week = new Array("��", "��", "ȭ", "��", "��", "��", "��");
	for(var i = 0; i < week.length; i++){
		str += "<th>" + week[i] + "</th>";
	}
	str += "</tr>";
	
	// �� �� ä���
	var no = 1;
	var currentCell = 0;
	var ju = Math.ceil((nalsu + yoil) / 7);
	//alert("�̹����� " + ju + " �� ���� ��ӵ˴ϴ�");
	for(var r=0; r < ju; r++){
		str += "<tr style='text-align:center'>";
		for(var col=0; col < 7; col++){
			if(currentCell < yoil || no > nalsu){
				str += "<td>&nbsp;</td>";
				currentCell++;
			}else{
				str += "<td>" + no + "</td>";
				no++;
			}
			
		}
		str += "<td>&nbsp;</td>";
		
		str += "</tr>";
	}
	
	str += "</table>";
}

</script>

</head>
<body>
	<br>
	<div id="disp"></div>
	<br>

</body>
</html>