package com.pingPong.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.pingPong.domain.BootrackDto;
import com.pingPong.domain.CoachDto;
import com.pingPong.domain.FeeDto;
import com.pingPong.domain.LockerDto;
import com.pingPong.domain.MemberDto;
import com.pingPong.persistence.PingPongDAO;

@Service
public class PingPongServiceImpl implements PingPongService {

	@Inject
	private PingPongDAO dao;

	@Override
	public int checkLoginId(String id) throws Exception {
		return dao.loginIdDao(id);
	}

	@Override
	public int checkLoginPwd(String pwd) throws Exception {
		return dao.loginPwdDao(pwd);
	}

	@Override
	public MemberDto checkLogin(Map<String, String> map) throws Exception {
		return dao.loginDao(map);
	}

	@Override
	public String readLoginName(Map<String, String> map) throws Exception {
		return dao.loginNameDao(map);
	}

	@Override
	public void registerAccount(MemberDto dto) throws Exception {
		dao.joinApplyAccountDao(dto);
	}

	@Override
	public List<MemberDto> findMonthAndMember(String memberName) throws Exception {
		return dao.findMonthAndMemberDao(memberName);
	}

	@Override
	public List<MemberDto> findLessonAndMember(String coachName) throws Exception {
		return dao.findLessonAndMemberDao(coachName);
	}

	@Override
	public List<MemberDto> getConfirmList() throws Exception {
		return dao.getConfirmListDao();
	}

	@Override
	public List<MemberDto> getAccountList() throws Exception {
		return dao.getAccountListDao();
	}

	@Override
	public List<MemberDto> searchAccountList(String selectedId) throws Exception {
		return dao.searchAccountListDao(selectedId);
	}

	@Override
	public List<BootrackDto> getBootrackList() throws Exception {
		return dao.getBootrackList();
	}

	@Override
	public void managerConfirm(Map<String, String> map) throws Exception {
		dao.managerConfirmDao(map);
	}

	@Override
	public void coachConfirm(Map<String, String> map) throws Exception {
		dao.coachConfirmDao(map);
	}

	@Override
	public void memberConfirm(String memberCode) throws Exception {
		dao.memberConfirmDao(memberCode);
	}

	@Override
	public void accountUpdate(Map<String, String> map) throws Exception {
		dao.accountUpdateDao(map);
	}

	@Override
	public void bootrackUpdate(Map<String, String> map) throws Exception {
		dao.bootrackUpdateDao(map);
	}

	@Override
	public void memberUpdate(Map<String, String> map) throws Exception {
		dao.memberUpdateDao(map);
	}

	@Override
	public List<Map> searchAccountListByNameForBootrack(String memberName) throws Exception {
		return dao.searchAccountListByNameForBootrackDao(memberName);
	}

	@Override
	public List<Map> searchAccountListByNameForCoach(String memberName) throws Exception {
		return dao.searchAccountListByNameForCoachDao(memberName);
	}

	@Override
	public List<LockerDto> getLockerList() throws Exception {
		return dao.getLockerList();
	}

	@Override
	public List<Map> searchAccountListByNameForLocker(String memberName) throws Exception {
		return dao.searchAccountListByNameForLockerDao(memberName);
	}

	@Override
	public void lockerUpdateForMember(Map<String, String> map) throws Exception {
		dao.lockerUpdateForMemberDao(map);
	}

	@Override
	public void insertCoach(Map<String, String> map) throws Exception {
		dao.insertCoachDao(map);
	}

	@Override
	public void checkCoachStatus() throws Exception {
		dao.checkCoachStatusDao();
	}

	@Override
	public List<CoachDto> searchCoachByMemberId(String memberCode) throws Exception {
		return dao.searchCoachByMemberIdDao(memberCode);
	}

	@Override
	public void editCoach(Map<String, String> map) throws Exception {
		dao.editCoachDao(map);
	}

	@Override
	public List<FeeDto> monthMemberFeeData(String sendedId) throws Exception {
		return dao.monthMemberFeeDataDao(sendedId);
	}

	@Override
	public void monthMemberFeeUpdate(Map<String, String> map) throws Exception {
		dao.monthMemberFeeUpdateDao(map);
	}

	@Override
	public List<MemberDto> singleSearchMonthMember(Map<String, String> map) throws Exception {
		return dao.singleSearchMonthMemberDao(map);
	}

	@Override
	public List<MemberDto> singleSearchTotalMember(Map<String, String> map) throws Exception {
		return dao.singleSearchTotalMemberDao(map);
	}

	@Override
	public List<CoachDto> singleSearchCoachMember(Map<String, String> map) throws Exception {
		return dao.singleSearchCoachMemberDao(map);
	}

	@Override
	public List<FeeDto> FeeList() throws Exception {
		return dao.FeeListDao();
	}

	@Override
	public String getMonthMemberName(String memberCode) throws Exception {
		return dao.getMonthMemberNameDao(memberCode);
	}

	@Override
	public List<FeeDto> singleSearchFeeList(Map<String, String> map) throws Exception {
		return dao.singleSearchFeeListDao(map);
	}

	@Override
	public void feeUpdate(Map<String, String> map) throws Exception {
		dao.feeUpdateDao(map);
	}

	@Override
	public void deleteCoach(String memberCode) throws Exception {
		dao.deleteCoach(memberCode);
	}

	@Override
	public void changeCoachStat(String memberCode) throws Exception {
		dao.changeCoachStat(memberCode);
	}

	@Override
	public void deleteMonthMember(String memberCode) throws Exception {
		dao.deleteMonthMember(memberCode);
	}

	@Override
	public void deleteAccount(String memberCode) throws Exception {
		dao.deleteAccount(memberCode);
	}

	@Override
	public List<FeeDto> getDateFeeList(String searchFeeDate) throws Exception {
		return dao.getDateFeeList(searchFeeDate);
	}

	@Override
	public List<FeeDto> getFeeList() throws Exception {
		return dao.getFeeList();
	}

	@Override
	public void insertGeneralFee(Map<String, String> data) throws Exception {
		dao.insertGeneralFeeDao(data);
	}

	@Override
	public void insertOneDayFee(Map<String, String> data) throws Exception {
		dao.insertOneDayFeeDao(data);
	}

	@Override
	public void insertMonthFee(Map<String, String> data) throws Exception {
		dao.insertMonthFeeDao(data);
	}

	@Override
	public String getPrevFeeCode() throws Exception {
		return dao.getPrevFeeCode();
	}

	@Override
	public int checkMonthMember(String memberCode) throws Exception {
		return dao.checkMonthMemberDao(memberCode);
	}

	@Override
	public void updateMonthMember(Map<String, String> monthInfo) throws Exception {
		dao.updateMonthMemberDao(monthInfo);
	}

	@Override
	public void insertNewMonthMember(Map<String, String> monthInfo) throws Exception {
		dao.insertNewMonthMemberDao(monthInfo);
	}

	@Override
	public List<CoachDto> findLessonAndCoach(String coachName) throws Exception {
		return dao.findLessonAndCoachDao(coachName);
	}

	@Override
	public List<MemberDto> defaultTotalMember() throws Exception {
		return dao.defaultTotalMember();
	}

	@Override
	public List<MemberDto> defaultMonthMember() throws Exception {
		return dao.defaultMonthMember();
	}

	@Override
	public List<CoachDto> defaultTotalCoach() throws Exception {
		return dao.defaultTotalCoach();
	}

}