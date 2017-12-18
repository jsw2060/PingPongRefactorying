package com.pingPong.service;

import java.util.List;
import java.util.Map;

import com.pingPong.domain.BootrackDto;
import com.pingPong.domain.CoachDto;
import com.pingPong.domain.FeeDto;
import com.pingPong.domain.LockerDto;
import com.pingPong.domain.MemberDto;

//import org.zerock.domain.BoardVO;

public interface PingPongService {
	
	// confirm Id when someone request login
	public int checkLoginId(String id) throws Exception;
	
	// confirm password when someone request password
	public int checkLoginPwd(String pwd) throws Exception;
	
	// confirm login data when someone request login
	public MemberDto checkLogin(Map<String, String> map) throws Exception;
	
	// inform a name who login successed
	public String readLoginName(Map<String, String> map) throws Exception;
	
	// request join and create an account
	public void registerAccount(MemberDto dto) throws Exception;
	
	// find members who joined as a monthmember or just a member
	public List<MemberDto> findMonthAndMember(String memberName) throws Exception;
	
	// find members who registered a lesson or just a member
	public List<MemberDto> findLessonAndMember(String coachName) throws Exception;
	
	// get list of member
	public List<MemberDto> getConfirmList() throws Exception;
	
	// get list of waiting confirm
	public List<MemberDto> getAccountList() throws Exception;
	
	// search accountList by member_code
	public List<MemberDto> searchAccountList(String selectedId) throws Exception;
	
	// get list of bootrack
	public List<BootrackDto> getBootrackList() throws Exception;
	
	// give an authorization to be a manager
	public void managerConfirm(Map<String, String> map) throws Exception;
	
	// give an authorization to be a coach
	public void coachConfirm(Map<String, String> map) throws Exception;
	
	// give an authorization to be a member
	public void memberConfirm(String memberCode) throws Exception;
	
	// update account
	public void accountUpdate(Map<String, String> map) throws Exception;
	
	// update bootrack
	public void bootrackUpdate(Map<String, String> map) throws Exception;
	
	// update memberInfo
	public void memberUpdate(Map<String, String> map) throws Exception;
	
	// search accountList by member_name for bootrack
	public List<Map> searchAccountListByNameForBootrack(String memberName) throws Exception;
	
	// search accountList by member_name for coach
	public List<Map> searchAccountListByNameForCoach(String memberName) throws Exception;
	
	// get lockerList
	public List<LockerDto> getLockerList() throws Exception;
	
	// search accountList by member_name for locker
	public List<Map> searchAccountListByNameForLocker(String memberName) throws Exception;
	
	// update locker
	public void lockerUpdateForMember(Map<String, String> map) throws Exception;
	
	// update Coach
	public void insertCoach(Map<String, String> map) throws Exception;
	
	// set Coach status
	public void checkCoachStatus() throws Exception;
	
	// getting Coach Info
	public List<CoachDto> searchCoachByMemberId(String memberCode) throws Exception;
	
	// edit Coach
	public void editCoach(Map<String, String> map) throws Exception;
	
	// getting monthMemberFeeData
	public List<FeeDto> monthMemberFeeData(String sendedId) throws Exception;
	
	// update edited monthFee
	public void monthMemberFeeUpdate(Map<String, String> map) throws Exception;
	
	// search monthMember with some conditions
	public List<MemberDto> singleSearchMonthMember(Map<String, String> map) throws Exception;
	
	// search member with some conditions
	public List<MemberDto> singleSearchTotalMember(Map<String, String> map) throws Exception;
	
	// search coach with some conditions
	public List<CoachDto> singleSearchCoachMember(Map<String, String> map) throws Exception;
	
	// getting fee list
	public List<FeeDto> FeeList() throws Exception;
	
	// getting monthmemberName
	public String getMonthMemberName(String memberCode) throws Exception;
	
	// search fee with some conditions
	public List<FeeDto> singleSearchFeeList(Map<String, String> map) throws Exception;
	
	// update edited feeInfo
	public void feeUpdate(Map<String, String> map) throws Exception;
	
	// delete coach
	public void deleteCoach(String memberCode) throws Exception;
	
	// change coachStat
	public void changeCoachStat(String memberCode) throws Exception;
	
	// delete monthMember
	public void deleteMonthMember(String memberCode) throws Exception;
	
	// delete member
	public void deleteAccount(String memberCode) throws Exception;
	
	// get FeeList at a certain day 
	public List<FeeDto> getDateFeeList(String searchFeeDate) throws Exception;
	
	// getting FeeList
	public List<FeeDto> getFeeList() throws Exception;
	
	// inserting FeeInfo for general customer
	public void insertGeneralFee(Map<String, String> data) throws Exception;
	
	// inserting FeeInfo for oneDay
	public void insertOneDayFee(Map<String, String> data) throws Exception;
	
	// inserting FeeInfo for monthly member
	public void insertMonthFee(Map<String, String> data) throws Exception;
	
	public String getPrevFeeCode() throws Exception;
	public int checkMonthMember(String memberCode) throws Exception;
	public void updateMonthMember(Map<String, String> monthInfo) throws Exception;
	public void insertNewMonthMember(Map<String, String> monthInfo) throws Exception;
	public List<CoachDto> findLessonAndCoach(String coachName) throws Exception;
	public List<MemberDto> defaultTotalMember() throws Exception;
	public List<MemberDto> defaultMonthMember() throws Exception;
	public List<CoachDto> defaultTotalCoach() throws Exception;
	
}
