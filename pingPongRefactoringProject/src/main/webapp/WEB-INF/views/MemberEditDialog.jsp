<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
// selecting sex
function selection(num) {
	if(num == 0) {
		document.getElementById("userFemale").removeAttribute("checked");
		document.getElementById("userMale").setAttribute("checked", "checked");
		document.getElementById("updateSex").setAttribute("value", "0");
	} else {
		document.getElementById("userMale").removeAttribute("checked");
		document.getElementById("userFemale").setAttribute("checked", "checked");
		document.getElementById("updateSex").setAttribute("value", "1");
	}
}

function validation(names) {
	var temp = document.getElementById(names).value;
	if("" == temp || null == temp) {
		var previousName = names.replace("update", "user");
		document.getElementById(names).value = document.getElementById(previousName).value;
		console.log("��  " + document.getElementById(previousName));
	}
}

$(document).ready(function(){
	$("#userName").on("change", function() {
		$("#updateName").attr('value', $(this).val());
	});
	
	$("#userTel").on("change", function() {
		$("#updateTel").attr('value', $(this).val());
	});
	
	$("#userAge").on("change", function() {
		$("#updateAge").attr('value', $(this).val());
	});
	
	$("#userBday").on("change", function() {
		$("#updateBday").attr('value', $(this).val());
	});
	
	$("#userAddr").on("change", function() {
		$("#updateAddr").attr('value', $(this).val());
	});
	
	$("#userEmail").on("change", function() {
		$("#updateEmail").attr('value', $(this).val());
	});
	
	// style selection
	$("#chooseStyle").on("change", function() {

		var that = $(this);
		console.log("that.val", that.val());

		switch(that.val()) {
		
		case '0':	
		
			$("#penholder").removeAttr('selected');
			$("#shakehand").removeAttr('selected');
			$("#chinese").removeAttr('selected');
			$("#notUse").attr('selected', true);
			
			document.getElementById("updateStyle").value = '0';
			break;
		case '1': 
			
			$("#shakehand").removeAttr('selected');
			$("#notUse").removeAttr('selected');
			$("#chinese").removeAttr('selected');
			$("#penholder").attr('selected', true);
			
			document.getElementById("updateStyle").value = '1';
			break;
		case '2': 
			
			$("#penholder").removeAttr('selected');
			$("#notUse").removeAttr('selected');
			$("#chinese").removeAttr('selected');
			$("#shakehand").attr('selected', true);
			
			document.getElementById("updateStyle").value = '2';
			break;
		case '3':
			$("#penholder").removeAttr('selected');
			$("#notUse").removeAttr('selected');
			$("#shakehand").removeAttr('selected');
			$("#chinese").attr('selected', true);
			
			document.getElementById("updateStyle").value = '3';
			break;
		default: 
			alert("check logic!!");
			break;	
		}
	});
	
	// grade selection
	$("#chooseGrade").on("change", function() {

		var that = $(this);
		console.log("that.val", that.val());

		switch(that.val()) {
		
		case '0':	
		
			$("#one").removeAttr('selected');
			$("#two").removeAttr('selected');
			$("#three").removeAttr('selected');
			$("#four").removeAttr('selected');
			$("#five").removeAttr('selected');
			$("#six").removeAttr('selected');
			$("#seven").removeAttr('selected');
			$("#eight").removeAttr('selected');
			$("#notUse").attr('selected', true);
			
			document.getElementById("updateGrade").value = '0';
			break;
		case '1': 
			
			$("#notUse").removeAttr('selected');
			$("#two").removeAttr('selected');
			$("#three").removeAttr('selected');
			$("#four").removeAttr('selected');
			$("#five").removeAttr('selected');
			$("#six").removeAttr('selected');
			$("#seven").removeAttr('selected');
			$("#eight").removeAttr('selected');
			$("#one").attr('selected', true);
			
			document.getElementById("updateGrade").value = '1';
			break;
		case '2': 
			
			$("#one").removeAttr('selected');
			$("#notUse").removeAttr('selected');
			$("#three").removeAttr('selected');
			$("#four").removeAttr('selected');
			$("#five").removeAttr('selected');
			$("#six").removeAttr('selected');
			$("#seven").removeAttr('selected');
			$("#eight").removeAttr('selected');
			$("#two").attr('selected', true);
			
			document.getElementById("updateGrade").value = '2';
			break;
		case '3':
			$("#one").removeAttr('selected');
			$("#two").removeAttr('selected');
			$("#notUse").removeAttr('selected');
			$("#four").removeAttr('selected');
			$("#five").removeAttr('selected');
			$("#six").removeAttr('selected');
			$("#seven").removeAttr('selected');
			$("#eight").removeAttr('selected');
			$("#three").attr('selected', true);
			
			document.getElementById("updateGrade").value = '3';
			break;
		case '4':
			$("#one").removeAttr('selected');
			$("#two").removeAttr('selected');
			$("#three").removeAttr('selected');
			$("#notUse").removeAttr('selected');
			$("#five").removeAttr('selected');
			$("#six").removeAttr('selected');
			$("#seven").removeAttr('selected');
			$("#eight").removeAttr('selected');
			$("#four").attr('selected', true);
			
			document.getElementById("updateGrade").value = '4';
			break;
		case '5':
			$("#one").removeAttr('selected');
			$("#two").removeAttr('selected');
			$("#three").removeAttr('selected');
			$("#four").removeAttr('selected');
			$("#notUse").removeAttr('selected');
			$("#six").removeAttr('selected');
			$("#seven").removeAttr('selected');
			$("#eight").removeAttr('selected');
			$("#five").attr('selected', true);
			
			document.getElementById("updateGrade").value = '5';
			break;
		case '6':
			$("#one").removeAttr('selected');
			$("#two").removeAttr('selected');
			$("#three").removeAttr('selected');
			$("#four").removeAttr('selected');
			$("#five").removeAttr('selected');
			$("#notUse").removeAttr('selected');
			$("#seven").removeAttr('selected');
			$("#eight").removeAttr('selected');
			$("#six").attr('selected', true);
			
			document.getElementById("updateGrade").value = '6';
			break;
		case '7':
			$("#one").removeAttr('selected');
			$("#two").removeAttr('selected');
			$("#three").removeAttr('selected');
			$("#four").removeAttr('selected');
			$("#five").removeAttr('selected');
			$("#six").removeAttr('selected');
			$("#notUse").removeAttr('selected');
			$("#eight").removeAttr('selected');
			$("#seven").attr('selected', true);
			
			document.getElementById("updateGrade").value = '7';
			break;
		case '8':
			$("#one").removeAttr('selected');
			$("#two").removeAttr('selected');
			$("#three").removeAttr('selected');
			$("#four").removeAttr('selected');
			$("#five").removeAttr('selected');
			$("#six").removeAttr('selected');
			$("#seven").removeAttr('selected');
			$("#notUse").removeAttr('selected');
			$("#eight").attr('selected', true);
			
			document.getElementById("updateGrade").value = '8';
			break;
		default: 
			alert("check logic!!");
			break;		
		}
	
	});
	
	$("#userRegDay").on("change", function() {
		$("#updateRegDay").attr('value', $(this).val());
	});
	
	$("#userNote").on("change", function() {
		$("#updateNote").attr('value', $(this).val());
	});
	
	$("#enterBtn").on("click", function() {
		console.log("ȸ�� ����");
		validation("updateName");
		validation("updateSex");
		validation("updateTel");
		validation("updateAge");
		validation("updateBday");
		validation("updateAddr");
		validation("updateEmail");
		validation("updateStyle");
		validation("updateGrade");
		validation("updateRegDay");
		validation("updateNote");
		
		$("#MemberEditForm").submit();
	});
});
</script>
</head>
<body>
	<div align="center">
	<form id="MemberEditForm" action="MemberUpdate">
		<div style="text-align: center;">
			<h1>ȸ�� ���� ����</h1>
		</div>
		<div>
			<table width="500" border="1">
				<tr>
					<td width="100" align="center">*�̸�: </td>
					<td align="center" colspan="2">
						<input type="hidden" name="userCode" value="${memberId }">
						<input type="text" style="width: 120px;" name="userName" id="userName" value="${memberName }">
					</td>
					<td width="100" align="center">*����: </td>
					<td align="center" width="150">
						<input type="hidden" id="userSex" value="${memberSex }">
						<c:choose>
							<c:when test="${memberSex == 1}">
								<input type="radio" class="radioInput" id="userMale" name="userMale" onchange="selection(0)" value="0">����
								&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" class="radioInput" id="userFemale" name="userFemale" onchange="selection(1)" value="1" checked="checked">����
							</c:when>
							<c:otherwise>
								<input type="radio" class="radioInput" id="userMale" name="userMale" onchange="selection(0)" value="0" checked="checked">����
								&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" class="radioInput" id="userFemale" name="userFemale" onchange="selection(1)" value="1" >����
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
				<tr>
					<td width="100" align="center">*��ȭ��ȣ: </td>
					<td align="center" colspan="4">
						<input type="tel" style="width: 380px;" id="userTel" name="userTel" placeholder="${memberTel }" maxlength="11" value="${memberTel }">
					</td>
				</tr>
				<tr>
					<td width="100" align="center">����: </td>
					<td align="center" colspan="4">
						<input type="text" style="width: 380px;" id="userAge" name="userAge" value="${memberAge }">					
					</td>
				</tr>
				<tr>
					<td width="100" align="center">����: </td>
					<td align="center" colspan="4">
						<input type="date" style="width: 380px;" id="userBday" name="userBday" value="${memberBday }">
					</td>
				</tr>
				<tr>
					<td width="100" align="center">�ּ�: </td>
					<td align="center" colspan="4">
						<input type="text" style="width: 380px;" id="userAddr" name="userAddr" value="${memberAddr }">
					</td>
				</tr>
				<tr>
					<td width="100" align="center">�̸���: </td>
					<td align="center" colspan="4">
						<input style="width: 380px;" type="email" id="userEmail" name="userEmail" value="${memberEmail }">
					</td>
				</tr>
				<tr>
					<td width="100" align="center">����: </td>
					<td align="center">
						<input type="hidden" id="userStyle" value="${memberStyle}">
						<select id="chooseStyle" name="chooseStyle" style="width: 120px;">
							<c:choose>
								<c:when test="${memberStyle eq 1 }">
									<option id="notUse" value="0">-- ���� --</option>
									<option id="penholder" value="1" selected="selected">��Ȧ��</option>
									<option id="shakehand" value="2">����ũ�ڵ�</option>
									<option id="chinese" value="3">�߱��� ��Ȧ��</option>
								</c:when>
								<c:when test="${memberStyle eq 2 }">
									<option id="notUse" value="0">-- ���� --</option>
									<option id="penholder" value="1">��Ȧ��</option>
									<option id="shakehand" value="2" selected="selected">����ũ�ڵ�</option>
									<option id="chinese" value="3">�߱��� ��Ȧ��</option>
								</c:when>
								<c:when test="${memberStyle eq 3 }">
									<option id="notUse" value="0">-- ���� --</option>
									<option id="penholder" value="1">��Ȧ��</option>
									<option id="shakehand" value="2">����ũ�ڵ�</option>
									<option id="chinese" value="3" selected="selected">�߱��� ��Ȧ��</option>
								</c:when>
								<c:otherwise>
									<option id="notUse" value="0" selected="selected">-- ���� --</option>
									<option id="penholder" value="1">��Ȧ��</option>
									<option id="shakehand" value="2">����ũ�ڵ�</option>
									<option id="chinese" value="3">�߱��� ��Ȧ��</option>
								</c:otherwise>
							</c:choose>
						</select>
					</td>
					<td width="100" align="center" colspan="2">�μ�: </td>
					<td align="center">
						<input type="hidden" id="userGrade" value="${memberGrade}">
						<select id="chooseGrade" name="chooseGrade" style="width: 120px;">
							<c:choose>
								<c:when test="${memberGrade == 1 }">
									<option id="notUse" value="0">-- �μ� --</option>
									<option id="one" value="1" selected="selected">0��</option>
									<option id="two" value="2">1��</option>
									<option id="three" value="3">2��</option>
									<option id="four" value="4">3��</option>
									<option id="five" value="5">4��</option>
									<option id="six" value="6">5��</option>
									<option id="seven" value="7">6��</option>
									<option id="eight" value="8">7��</option>
								</c:when>
								<c:when test="${memberGrade == 1 }">
									<option id="notUse" value="0">-- �μ� --</option>
									<option id="one" value="1" selected="selected">0��</option>
									<option id="two" value="2">1��</option>
									<option id="three" value="3">2��</option>
									<option id="four" value="4">3��</option>
									<option id="five" value="5">4��</option>
									<option id="six" value="6">5��</option>
									<option id="seven" value="7">6��</option>
									<option id="eight" value="8">7��</option>
								</c:when>
								<c:when test="${memberGrade == 2 }">
									<option id="notUse" value="0">-- �μ� --</option>
									<option id="one" value="1">0��</option>
									<option id="two" value="2" selected="selected">1��</option>
									<option id="three" value="3">2��</option>
									<option id="four" value="4">3��</option>
									<option id="five" value="5">4��</option>
									<option id="six" value="6">5��</option>
									<option id="seven" value="7">6��</option>
									<option id="eight" value="8">7��</option>
								</c:when>
								<c:when test="${memberGrade == 3 }">
									<option id="notUse" value="0">-- �μ� --</option>
									<option id="one" value="1">0��</option>
									<option id="two" value="2">1��</option>
									<option id="three" value="3" selected="selected">2��</option>
									<option id="four" value="4">3��</option>
									<option id="five" value="5">4��</option>
									<option id="six" value="6">5��</option>
									<option id="seven" value="7">6��</option>
									<option id="eight" value="8">7��</option>
								</c:when>
								<c:when test="${memberGrade == 4 }">
									<option id="notUse" value="0">-- �μ� --</option>
									<option id="one" value="1">0��</option>
									<option id="two" value="2">1��</option>
									<option id="three" value="3">2��</option>
									<option id="four" value="4" selected="selected">3��</option>
									<option id="five" value="5">4��</option>
									<option id="six" value="6">5��</option>
									<option id="seven" value="7">6��</option>
									<option id="eight" value="8">7��</option>
								</c:when>
								<c:when test="${memberGrade == 5 }">
									<option id="notUse" value="0">-- �μ� --</option>
									<option id="one" value="1">0��</option>
									<option id="two" value="2">1��</option>
									<option id="three" value="3">2��</option>
									<option id="four" value="4">3��</option>
									<option id="five" value="5" selected="selected">4��</option>
									<option id="six" value="6">5��</option>
									<option id="seven" value="7">6��</option>
									<option id="eight" value="8">7��</option>
								</c:when>
								<c:when test="${memberGrade == 6 }">
									<option id="notUse" value="0">-- �μ� --</option>
									<option id="one" value="1">0��</option>
									<option id="two" value="2">1��</option>
									<option id="three" value="3">2��</option>
									<option id="four" value="4">3��</option>
									<option id="five" value="5">4��</option>
									<option id="six" value="6" selected="selected">5��</option>
									<option id="seven" value="7">6��</option>
									<option id="eight" value="8">7��</option>
								</c:when>
								<c:when test="${memberGrade == 7 }">
									<option id="notUse" value="0">-- �μ� --</option>
									<option id="one" value="1">0��</option>
									<option id="two" value="2">1��</option>
									<option id="three" value="3">2��</option>
									<option id="four" value="4">3��</option>
									<option id="five" value="5">4��</option>
									<option id="six" value="6">5��</option>
									<option id="seven" value="7" selected="selected">6��</option>
									<option id="eight" value="8">7��</option>
								</c:when>
								<c:when test="${memberGrade == 8 }">
									<option id="notUse" value="0">-- �μ� --</option>
									<option id="one" value="1">0��</option>
									<option id="two" value="2">1��</option>
									<option id="three" value="3">2��</option>
									<option id="four" value="4">3��</option>
									<option id="five" value="5">4��</option>
									<option id="six" value="6">5��</option>
									<option id="seven" value="7">6��</option>
									<option id="eight" value="8" selected="selected">7��</option>
								</c:when>
								<c:otherwise>
									<option id="notUse" value="0" selected="selected">-- �μ� --</option>
									<option id="one" value="1">0��</option>
									<option id="two" value="2">1��</option>
									<option id="three" value="3">2��</option>
									<option id="four" value="4">3��</option>
									<option id="five" value="5">4��</option>
									<option id="six" value="6">5��</option>
									<option id="seven" value="7">6��</option>
									<option id="eight" value="8">7��</option>
								</c:otherwise>
							</c:choose>
						</select>
					</td>
				</tr>
				<tr>
					<td width="100" align="center">ȸ�� �����: </td>
					<td align="center" colspan="4">
						<input type="date" style="width: 380px;" id="userRegDay" name="userRegDay" value="${memberRegDay }">
					</td>
				</tr>
				<tr>
					<td width="100" align="center">���: </td>
					<td align="center" colspan="4">
						<textarea id="userNote" style="width: 380px;" name="userNote">${memberNote }</textarea>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="5">
						<p>������ ������ �Է��ϼ���.</p>
					</td>
				</tr>
				<tr>
					<td colspan="5" align="center">
						<input type="hidden" id="updateName" name="updateName" value="">
						<input type="hidden" id="updateSex" name="updateSex" value="">
						<input type="hidden" id="updateTel" name="updateTel" value="">
						<input type="hidden" id="updateAge" name="updateAge" value="">
						<input type="hidden" id="updateBday" name="updateBday" value="">
						<input type="hidden" id="updateAddr" name="updateAddr" value="">
						<input type="hidden" id="updateEmail" name="updateEmail" value="">
						<input type="hidden" id="updateStyle" name="updateStyle" value="">
						<input type="hidden" id="updateGrade" name="updateGrade" value="">
						<input type="hidden" id="updateRegDay" name="updateRegDay" value="">
						<input type="hidden" id="updateNote" name="updateNote" value="">
					
						<input type="button" class="dialogBtn" id="enterBtn" value="���">
						<input type="button" class="dialogBtn" onclick="javascript:history.back()" value="���">
					</td>
				</tr>
			</table>		
		</div>
		</form>
	</div>
</body>
</html>