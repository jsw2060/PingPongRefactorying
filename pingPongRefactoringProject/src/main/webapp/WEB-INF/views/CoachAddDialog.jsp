<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript">
//���� �迭 ����
var week = [false,false,false,false,false,false,false];

var dayCheck = function(obj) {
	var that = $(obj);
	var day = parseInt(that.val()-1);
	console.log("week ", week);
	switch(day) {
	case 0:
		if(false == week[0]) {
			week[0] = '��';
			document.getElementById("mon").style.backgroundColor = "#91D8FA";
			that.val(0);
			that.children().eq(0).text('������ �����ϼ���.');
		} else {
			week[0] = false;
			document.getElementById("mon").style.backgroundColor = "white";
			that.val(0);
			that.children().eq(0).text('������ �����ϼ���.');
		}
		break;
	case 1:
		if(false == week[1]) {
			week[1] = 'ȭ';
			document.getElementById("tue").style.backgroundColor = "#91D8FA";
			that.val(0);
			that.children().eq(0).text('������ �����ϼ���.');
		} else {
			week[1] = false;
			document.getElementById("tue").style.backgroundColor = "white";
			that.val(0);
			that.children().eq(0).text('������ �����ϼ���.');
		}
		break;
	case 2:
		if(false == week[2]) {
			week[2] = '��';
			document.getElementById("wed").style.backgroundColor = "#91D8FA";
			that.val(0);
			that.children().eq(0).text('������ �����ϼ���.');
		} else {
			week[2] = false;
			document.getElementById("wed").style.backgroundColor = "white";
			that.val(0);
			that.children().eq(0).text('������ �����ϼ���.');
		}
		break;
	case 3:
		if(false == week[3]) {
			week[3] = '��';
			document.getElementById("thu").style.backgroundColor = "#91D8FA";
			that.val(0);
			that.children().eq(0).text('������ �����ϼ���.');
		} else {
			week[3] = false;
			document.getElementById("thu").style.backgroundColor = "white";
			that.val(0);
			that.children().eq(0).text('������ �����ϼ���.');
		}
		break;
	case 4:
		if(false == week[4]) {
			week[4] = '��';
			document.getElementById("fri").style.backgroundColor = "#91D8FA";
			that.val(0);
			that.children().eq(0).text('������ �����ϼ���.');
		} else {
			week[4] = false;
			document.getElementById("fri").style.backgroundColor = "white";
			that.val(0);
			that.children().eq(0).text('������ �����ϼ���.');
		}
		break;
	case 5:
		if(false == week[5]) {
			week[5] = '��';
			document.getElementById("sat").style.backgroundColor = "#91D8FA";
			that.val(0);
			that.children().eq(0).text('������ �����ϼ���.');
		} else {
			week[5] = false;
			document.getElementById("sat").style.backgroundColor = "white";
			that.val(0);
			that.children().eq(0).text('������ �����ϼ���.');
		}
		break;
	case 6:
		if(false == week[6]) {
			week[6] = '��';
			document.getElementById("sun").style.backgroundColor = "#91D8FA";
			that.val(0);
			that.children().eq(0).text('������ �����ϼ���.');
		} else {
			week[6] = false;
			document.getElementById("sun").style.backgroundColor = "white";
			that.val(0);
			that.children().eq(0).text('������ �����ϼ���.');
		}
		break;	
	}
	document.getElementById("coachDay").setAttribute("value", week);
	console.log("����� �� ", document.getElementById("coachDay").value);
}

	$(document).ready(function(){
		
		// member searching
		$("#searchBtn").click(function () {
			
			// �˻� ���̺� �ʱ�ȭ
			$("#searchResult").children().remove();
			var searchName = $("#searchName").val();
			
			console.log("�Է°� " + searchName);
			
			jQuery.ajax({
				type:"GET",
				url:"http://localhost:8080/pingPong/CoachSearch.do?searchName=" + searchName + "",
				dataType: "JSON",
				success: function(data) {
					console.log("sending success ");
					console.log(data);
					
					var temp = "";
					var obj_length = Object.keys(data).length;
					var sexTemp = "";
					var statusTemp = "";
					
					if(data != null) {
						for(var idx = 0; idx < obj_length; idx++) {
							if(data[idx].SEX == 0) {
								sexTemp = "M";
							} else {
								sexTemp = "W";
							}
							
							if(data[idx].COACH_STATUS != 1) {
								statusTemp = "X";
							} else {
								statusTemp = "O";
							}
							
							temp = "<td>" + data[idx].MEMBER_CODE + "</td>"
							+ "<td>" + data[idx].NAME + "</td>"
							+ "<td>" + sexTemp + "</td>"
							+ "<td>" + statusTemp + "</td>";
						}
					} else {
						temp = "<td colspan='5'>�����Ͱ� �����ϴ�</td>";
					}
					
					console.log("temp ", temp);
					$("#searchResult").append(temp);
					
				},
				error: function(xhr, option, error) {
					console.log("sending fail");
					console.log("�����ڵ� " + xhr.status);
					console.log(error);
				}
			})
		});
		
		// table selection
		$("#searchResult").click(function() {
			alert("Ŭ��");
			var selectedTr = $(this);
			var selectedTd = selectedTr.children();
			console.log("selectedTd ", selectedTd);
			var indexNum = selectedTd.eq(0).text();
			
			console.log("������� val��");
			console.log(indexNum);
			// store temporary info of selected member
			document.getElementById("selectedMember").value = indexNum;
		});
		
		$("#enterBtn").click(function() {
			$("#AddCoachForm").submit();
		});
	});
</script>
</head>
<body>
	<div align="center">
	<form id="AddCoachForm" action="AddCoach">
		<br/>
		<div style="text-align: center;">
			<h1>��ġ �߰�</h1>
		</div>
		<div>
			<table width="440" border="1">
				<tr>
					<td width="150" align="center">�����: </td>
					<td>
						<input type="date" style="width: 270px;" id="coachRegDay" name="coachRegDay">
					</td>
				</tr>
				<tr>
					<td width="150" align="center">��������: </td>
					<td>
						<select style="width: 275px;" id="lessonDay" name="lessonDay" onchange="dayCheck(this);">
							<option id="notUse" value="0" selected="selected">������ �����ϼ���.</option>
							<option id="mon" value="1" >��</option>
							<option id="tue" value="2">ȭ</option>
							<option id="wed" value="3">��</option>
							<option id="thu" value="4">��</option>
							<option id="fri" value="5">��</option>
							<option id="sat" value="6">��</option>
							<option id="sun" value="7">��</option>
						</select>
						<input type="hidden" id="coachDay" name="coachDay" readonly="readonly">
					</td>
				</tr>
				<tr>
					<td width="150" align="center">*ȸ��: </td>
					<td>
						<input type="text" width="100px" id="searchName" name="searchName" value="${lockerName }">
						<input type="button" id="searchBtn" value="�˻�">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div>
							<table style="background-color: #E1E1E1; text-align: center;" align="center" width="430px;" border="1">
								<tr style="background-color: #DEDEDE;">
									<td>ȸ����ȣ</td>
									<td>�̸�</td>
									<td>����</td>
									<td>��ġ����</td>
								</tr>
								<tr id="searchResult">
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">���:</td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea id="coachNote" style="width: 425px; height: 50px;" name="coachNote"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" class="dialogBtn" id="enterBtn" value="���">
						<input type="button" class="dialogBtn" onclick="javascript:history.back()" value="���">
						<input type="hidden" id="selectedMember" name="selectedMember" value="">
					</td>
				</tr>
			</table>		
		</div>
		</form>
	</div>
</body>
</html>