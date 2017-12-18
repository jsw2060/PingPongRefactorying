<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function () {
	$("#monthFeeAmount").on("change", function(){
		document.getElementById("selectedFeeAmount").value = $("#monthFeeAmount").val();
		console.log("����? " + document.getElementById("selectedFeeAmount").value);
	});
	
	$("#monthFeeDate").on("change", function(){
		document.getElementById("selectedFeeDate").value = $("#monthFeeDate").val();
		console.log("����? " + document.getElementById("selectedFeeDate").value);
	});
	
	$("#monthFeeNote").on("change", function(){
		document.getElementById("selectedFeeNote").value = $("#monthFeeNote").val();
		console.log("����? " + document.getElementById("selectedFeeNote").value);
	});
	$("#enterBtn").on("click", function(){
		$("#MonthMemberUpdateForm").submit();
	});
});
</script>
</head>
<body>
	<div align="center">
	<form id="MonthMemberUpdateForm" action="MonthMemberUpdate">
		<br/>
		<div style="text-align: center;">
			<h1>�� ȸ�� ����</h1>
		</div>
		<div>
			<table width="440" border="1">
				<tr>
					<td width="150" align="center">*�����: </td>
					<td>
						<c:set var="tempRegDay" value="${ fn:substring(memberRegDay, 0, 11) }"/>
						<input type="date" style="width: 270px;" id="registerDate" name="registerDate" value="${ fn:trim(tempRegDay) }">
					</td>
				</tr>
				<tr>
					<td width="150" align="center">ȸ��: </td>
					<td>
						<input type="text" width="100px" id="searchName" name="searchName" value="${memberName }" disabled="disabled">
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
								</tr>
								<tr id="searchResult">
									<td>${memberId }</td>
									<td>${memberName }</td>
									<c:choose>
										<c:when test="${memberSex eq 0}">
											<td>��</td>
										</c:when>
										<c:otherwise>
											<td>��</td>
										</c:otherwise>
									</c:choose>
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">���� ����:</td>
				</tr>
				<tr>
					<td colspan="2">
						<div>
							<c:forEach var="monthFeeList" items="${feeList }">
							<div style="width: 430px; height: 170px; overflow: auto; overflow-y:scroll; overflow-x:hidden;]">
							<table style="background-color: #E1E1E1; text-align: center;" align="center" width="430px;" border="1">
								<tr style="background-color: #DEDEDE;">
									<td>�ݾ�</td>
									<td>������</td>
									<td>���</td>
								</tr>
								<tr id="searchResult">
									<td><input style="width: 110px;" id="monthFeeAmount" name="monthFeeAmount" value="${monthFeeList.fee_amount }"></td>
									<c:set var="tempRegDay" value="${ fn:substring(monthFeeList.fee_date, 0, 11) }"/>
									<td><input style="width: 110px;" id="monthFeeDate" name="monthFeeDate" value="${ fn:trim(tempRegDay) }"></td>
									<td><input style="width: auto;" id="monthFeeNote" name="monthFeeNote" value="${monthFeeList.note }"></td>
								</tr>
							</table>
							</div>
							</c:forEach>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" class="dialogBtn" id="enterBtn" value="����">
						<input type="button" class="dialogBtn" onclick="javascript:history.back()" value="���">
						
						<input type="hidden" id="selectedMember" name="selectedMember" value="${memberId }">
						<input type="hidden" id="selectedFeeAmount" name="selectedFeeAmount" value="">
						<input type="hidden" id="selectedFeeDate" name="selectedFeeDate" value="">
						<input type="hidden" id="selectedFeeNote" name="selectedFeeNote" value="">
					</td>
				</tr>
			</table>		
		</div>
		</form>
	</div>
</body>
</html>