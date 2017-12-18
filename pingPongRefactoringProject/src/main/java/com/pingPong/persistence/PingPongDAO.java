package com.pingPong.persistence;

import java.util.List;
import java.util.Map;

import com.pingPong.domain.BootrackDto;
import com.pingPong.domain.CoachDto;
import com.pingPong.domain.FeeDto;
import com.pingPong.domain.LockerDto;
import com.pingPong.domain.MemberDto;



public interface PingPongDAO {
	
	// confirm Id when someone request login
	public int loginIdDao(String id) throws Exception;
	
	// confirm password when someone request password
	public int loginPwdDao(String pwd) throws Exception;
	
	// confirm login data when someone request login
	public MemberDto loginDao(Map<String, String> map) throws Exception;
	
	// inform a name who login successed
	public String loginNameDao(Map<String, String> map) throws Exception;
	
	// request join and create an account
	public void joinApplyAccountDao(MemberDto dto) throws Exception;
	
	// find members who joined as a monthmember or just a member
	public List<MemberDto> findMonthAndMemberDao(String memberName) throws Exception;
	
	// find members who registered a lesson or just a member
	public List<MemberDto> findLessonAndMemberDao(String coachName) throws Exception;
	
	// get list of member
	public List<MemberDto> getConfirmListDao() throws Exception;
	
	// get list of waiting confirm
	public List<MemberDto> getAccountListDao() throws Exception;
	
	// search accountList by member_code
	public List<MemberDto> searchAccountListDao(String selectedId) throws Exception;
	
	// get list of bootrack
	public List<BootrackDto> getBootrackList() throws Exception;
	
	// give an authorization to be a manager
	public void managerConfirmDao(Map<String, String> map) throws Exception;
	
	// give an authorization to be a coach
	public void coachConfirmDao(Map<String, String> map) throws Exception;
	
	// give an authorization to be a member
	public void memberConfirmDao(String memberCode) throws Exception;
	
	// update account
	public void accountUpdateDao(Map<String, String> map) throws Exception;
	
	// update bootrack
	public void bootrackUpdateDao(Map<String, String> map) throws Exception;
	
	// update memberInfo
	public void memberUpdateDao(Map<String, String> map) throws Exception;
	
	// search accountList by member_name for bootrack
	public List<Map> searchAccountListByNameForBootrackDao(String memberName) throws Exception;
	
	// search accountList by member_name for coach
	public List<Map> searchAccountListByNameForCoachDao(String memberName) throws Exception;
	
	// get lockerList
	public List<LockerDto> getLockerList() throws Exception;
	
	// search accountList by member_name for locker
	public List<Map> searchAccountListByNameForLockerDao(String memberName) throws Exception;
	
	// update locker
	public void lockerUpdateForMemberDao(Map<String, String> map) throws Exception;
	
	// update Coach
	public void insertCoachDao(Map<String, String> map) throws Exception;
	
	// set Coach status
	public void checkCoachStatusDao() throws Exception;
	
	// getting Coach Info
	public List<CoachDto> searchCoachByMemberIdDao(String memberCode) throws Exception;
	
	// edit Coach
	public void editCoachDao(Map<String, String> map) throws Exception;
	
	// getting monthMemberFeeData
	public List<FeeDto> monthMemberFeeDataDao(String sendedId) throws Exception;
	
	// update edited monthFee
	public void monthMemberFeeUpdateDao(Map<String, String> map) throws Exception;
	
	// search monthMember with some conditions
	public List<MemberDto> singleSearchMonthMemberDao(Map<String, String> map) throws Exception;
	
	// search member with some conditions
	public List<MemberDto> singleSearchTotalMemberDao(Map<String, String> map) throws Exception;
	
	// search coach with some conditions
	public List<CoachDto> singleSearchCoachMemberDao(Map<String, String> map) throws Exception;
	
	// getting fee list
	public List<FeeDto> FeeListDao() throws Exception;
	
	// getting monthmemberName
	public String getMonthMemberNameDao(String memberCode) throws Exception;
	
	// search fee with some conditions
	public List<FeeDto> singleSearchFeeListDao(Map<String, String> map) throws Exception;
	
	// update edited feeInfo
	public void feeUpdateDao(Map<String, String> map) throws Exception;
	
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
	public void insertGeneralFeeDao(Map<String, String> data) throws Exception;
	
	// inserting FeeInfo for oneDay
	public void insertOneDayFeeDao(Map<String, String> data) throws Exception;
	
	// inserting FeeInfo for monthly member
	public void insertMonthFeeDao(Map<String, String> data) throws Exception;
	
	public String getPrevFeeCode() throws Exception;
	public int checkMonthMemberDao(String memberCode) throws Exception;
	public void updateMonthMemberDao(Map<String, String> monthInfo) throws Exception;
	public void insertNewMonthMemberDao(Map<String, String> monthInfo) throws Exception;
	public List<CoachDto> findLessonAndCoachDao(String coachName) throws Exception;
	public List<MemberDto> defaultTotalMember() throws Exception;
	public List<MemberDto> defaultMonthMember() throws Exception;
	public List<CoachDto> defaultTotalCoach() throws Exception;
	
}