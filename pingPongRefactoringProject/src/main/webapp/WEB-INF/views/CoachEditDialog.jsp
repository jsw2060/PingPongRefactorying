<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript">
	$(document).ready(function(){
		$("#coachRegDay").on("change", function() {
			document.getElementById("sendRegDay").value = document.getElementById("coachRegDay").value;
		})
		
		$("#coachDay").on("change", function() {
			document.getElementById("sendWorkWeekday").value = document.getElementById("coachDay").value;
		})
		
		$("#coachNote").on("change", function() {
			document.getElementById("sendNote").value = document.getElementById("coachNote").value;
		})
		
		$("#enterBtn").click(function() {
			$("#EditCoachForm").submit();
		});
	});
</script>
</head>
<body>
	<div align="center">
	<form id="EditCoachForm" action="EditCoach">
		<br/>
		<c:forEach var="CoachList" items="${ CoachInfoList }">
		<div style="text-align: center;">
			<h1>��ġ ����</h1>
		</div>
		<div>
			<table width="440" border="1">
				<tr>
					<td width="150" align="center">�����: </td>
					<td>
						<c:set var="tempRegDay" value="${ fn:substring(CoachList.coach_registerdate, 0, 11) }"/>
						<input type="date" style="width: 270px;" id="coachRegDay" name="coachRegDay" value="${ fn:trim(tempRegDay) }">
					</td>
				</tr>
				<tr>
					<td width="150" align="center">��������: </td>
					<td>
						<c:set var="tempWorkWeekday" value="${ fn:split(CoachList.work_weekday, ',') }"/>
						<c:set var="tempTwiceWeekday" value="${ fn:replace(CoachList.work_weekday, ',', '') }"/>
						<input type="text" id="coachDay" name="coachDay" value="${ fn:replace(tempTwiceWeekday, 'false', '') }">
						<input type="hidden" id="coachWorkDay" name="coachWorkDay" value="${ CoachList.work_weekday }">
					</td>
				</tr>
				<tr>
					<td width="150" align="center">*ȸ��: </td>
					<td>
						<input type="text" width="100px" id="searchName" name="searchName" value="${CoachList.name }" readonly="readonly">
						<input type="button" id="searchBtn" value="�˻�" disabled="disabled">
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
									<td>${CoachList.member_code }<input type="hidden" name="sendMemberCode" value="${CoachList.member_code }"></td>
									<td>${CoachList.name }</td>
									<c:choose>
										<c:when test="${CoachList.sex eq 0 }">
											<td>��</td>										
										</c:when>
										<c:otherwise>
											<td>��</td>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${CoachList.coach_status eq 1}">
											<td>O</td>
										</c:when>
										<c:otherwise>
											<td>X</td>
										</c:otherwise>
									</c:choose>
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
						<textarea id="coachNote" style="width: 425px; height: 50px;" name="coachNote">${CoachList.note }</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="hidden" id="sendRegDay" name="sendRegDay" value="">
						<input type="hidden" id="sendWorkWeekday" name="sendWorkWeekday" value="">
						<input type="hidden" id="sendNote" name="sendNote" value="">
					
						<input type="button" class="dialogBtn" id="enterBtn" value="���">
						<input type="button" class="dialogBtn" onclick="javascript:history.back()" value="���">
						<input type="hidden" id="selectedMember" name="selectedMember" value="">
					</td>
				</tr>
			</table>		
		</div>
		</c:forEach>
		</form>
	</div>
</body>
</html>