<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/FrameLayout.css" rel="stylesheet" type="text/css">
<link href="resources/css/Clock.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var monthNames = [ "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" ];
		var dayNames = [ "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" ];
		
		var newDate = new Date();
		newDate.setDate(newDate.getDate());
		$('#Date').html(dayNames[newDate.getDay()] + " " + newDate.getDate() + ' ' + monthNames[newDate.getMonth()] + ' ' + newDate.getFullYear());
		
		setInterval(function() {
			var seconds = new Date().getSeconds();
			
			$("#sec").html(( seconds < 10 ? "0" : "") + seconds);
		}, 1000);
		
		setInterval(function() {
			var minutes = new Date().getMinutes();
			
			$("#min").html(( minutes < 10 ? "0" : "") + minutes);
		}, 1000);
		
		setInterval(function() {
			var hours = new Date().getHours();
			
			$("#hours").html(( hours < 10 ? "0" : "") + hours);
		}, 1000);
		
		$("#feeDate").change(function(){
			$("#FindFeeForm").submit();
		});
		
		$("#fee-launcher").click(function () {
			var selectedPage = $('#selectFeeInputPage option:selected').val();

			if(selectedPage == "0"){ alert("요금 종류를 선택해주세요."); }
			if(selectedPage == "1"){
				$("#FindFeeForm").attr("action", "GeneralFeeInput");
				$("#FindFeeForm").submit();
			}
			if(selectedPage == "2"){
				$("#FindFeeForm").attr("action", "OneDayFeeInput");
				$("#FindFeeForm").submit();
			}
			if(selectedPage == "3"){
				$("#FindFeeForm").attr("action", "MonthFeeInput");
				$("#FindFeeForm").submit();
			}
			if(selectedPage == "4"){
				$("#FindFeeForm").attr("action", "LessonFeeInput");
				$("#FindFeeForm").submit();
			}
		});
		
		$("#enterBtn").click(function(){
			var feeType = $("#specifyFeeInputPage").val();
			if(feeType == 1){
				$("#FindFeeForm").attr("action", "InsertGeneralFeeToDB");
				$("#FindFeeForm").submit();	
			}
			if(feeType == 2){
				$("#FindFeeForm").attr("action", "InsertOnedayFeeToDB");
				$("#FindFeeForm").submit();	
			}
			if(feeType == 3){
				$("#FindFeeForm").attr("action", "InsertMonthFeeToDB");
				$("#FindFeeForm").submit();	
			}
		});
		
	});
</script>
</head>
<body>
	<div class="defaultPage" align="center">
		<form id="FindFeeForm" action="FindFeeList">
			<div>
				<table class="outLineTable">
					<tr>
						<td>
							<label style="font-size: 20px;">요금 입력 내역</label>
							<input type="date" id="feeDate" name="feeDate">
						</td>
						<td class="container" style="width:300px;">
							<ul id="numbers">
								<li id="Date"></li>
								<li id="hours"></li>
								<li id="point">:</li>
								<li id="min"></li>
								<li id="point">:</li>
								<li id="sec"></li>
							</ul>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<div style="overflow: auto; width: 590px; height: 280px; background: #E1E1E1;">
								<div class="divHeadScroll" style="width: 100%;">
									<table class="dataSheet" width="100%">
										<colgroup>
											<col style="width:50px;"/>
					                        <col style="width:50px;"/>
					                        <col style="width:50px;"/>
					                        <col style="width:80px;"/>
					                        <col style="width:70px;"/>
										</colgroup>
										<tr class="theadTr">
											<td>요금 종류</td>
											<td>금액</td>
											<td>이름</td>
											<td>결제일</td>
											<td>비고</td>
										</tr>
									</table>
								</div>
								<div id="divBodyScroll" style="width: 100%;">
									<table class="dataSheet" border="1">
											<colgroup>
												<col style="width:96px;"/>
						                        <col style="width:96px;"/>
						                        <col style="width:94px;"/>
						                        <col style="width:156px;"/>
						                        <col style="width:136px;"/>
											</colgroup>
											<c:choose>
												<c:when test="${ dateFeeList eq null or dateFeeList eq 'null' or dateFeeList eq ''}">
													<tr>
														<td colspan="5" style="width: 590px;">검색된 데이터가 없습니다.</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="feeItems" items="${ dateFeeList }">
														<tr>
															<td>${ feeItems.fee_type }</td>
															<td>${ feeItems.fee_amount }</td>
															<td>${ feeItems.name }<input type="hidden" value="${ feeItems.member_code }"></td>
															<td>${ feeItems.fee_date }</td>
															<td>${ feeItems.note }</td>
														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose>
									</table>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<table>
								<tr class="situationSheet">
									<td colspan="4" align="left">
										<label style="font-size: 20px;">요금 입력</label>
									</td>
								</tr>
								<tr>
									<td>
										<label>요금 종류:</label>
									</td>
									<td>
										<select id="selectFeeInputPage" name="selectFeeInputPage">
											<option value="0" selected="selected">종류를 선택하세요.</option>
											<option value="1">일반</option>
											<option value="2">일 회원</option>
											<option value="3">월 회원</option>
											<!-- <option value="4">레슨 등록</option> -->
										</select>
									</td>
									<td>
										<label>요금:</label>
										<input type="text" name="costInput" placeholder="${ specifyInput.calFee }"><label>원</label>
									</td>
									<td>
										<input type="button" id="fee-launcher" value="세부 정보 입력">
									</td>
								</tr>
								<tr>
									<td colspan="4" align="left">
										<label>비고:</label>
									</td>
								</tr>
								<tr>
									<td colspan="4" align="left">
										<textarea name="noteInput" style="width: 575px;"></textarea>	
									</td>
								</tr>
								<!-- <tr>
									<td colspan="4">
										<input type="text" style="width: 575px; background-color: #606060;" readonly="readonly">
									</td>
								</tr> -->
								<tr>
									<td colspan="4">
										<input type="button" id="enterBtn" value="입력">
										<a href="MainFeeInputFrame.do"><input type="button" id="initBtn" value="초기화"></a>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<input type="hidden" name="specifyMemberCode" value="${ specifyInput.memberCode }">
				<input type="hidden" id="specifyFeeInputPage" name="specifyFeeInputPage" value="${ specifyInput.feeInputPage }">
				<input type="hidden" name="specifyPlayTime" value="${ specifyInput.playTime }">
				<input type="hidden" name="specifyTableNum" value="${ specifyInput.tableNum }">
				<input type="hidden" name="specifyStatus" value="${ specifyInput.status }">
			</div>
		</form>
	</div>
</body>
</html>