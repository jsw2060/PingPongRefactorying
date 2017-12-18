package com.pingPong.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.pingPong.domain.BootrackDto;
import com.pingPong.domain.CoachDto;
import com.pingPong.domain.FeeDto;
import com.pingPong.domain.LockerDto;
import com.pingPong.domain.MemberDto;

@Repository
public class PingPongDAOImpl implements PingPongDAO{

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.pingPong.mapper.PingPongMapper";

	@Override
	public int loginIdDao(String id) throws Exception {
		return session.selectOne(namespace + ".loginIdDao", id);
	}

	@Override
	public int loginPwdDao(String pwd) throws Exception {
		return session.selectOne(namespace + ".loginPwdDao", pwd);
	}

	@Override
	public MemberDto loginDao(Map<String, String> map) throws Exception {
		return session.selectOne(namespace + ".loginDao", map);
	}

	@Override
	public String loginNameDao(Map<String, String> map) throws Exception {
		return session.selectOne(namespace + ".loginNameDao", map);
	}

	@Override
	public void joinApplyAccountDao(MemberDto dto) throws Exception {
		session.selectOne(namespace + ".joinApplyAccountDao", dto);
	}

	@Override
	public List<MemberDto> findMonthAndMemberDao(String memberName) throws Exception {
		return session.selectList(namespace + ".findMonthAndMemberDao", memberName);
	}

	@Override
	public List<MemberDto> findLessonAndMemberDao(String coachName) throws Exception {
		return session.selectList(namespace + ".findLessonAndMemberDao", coachName);
	}

	@Override
	public List<MemberDto> getConfirmListDao() throws Exception {
		return session.selectList(namespace + ".getConfirmListDao");
	}

	@Override
	public List<MemberDto> getAccountListDao() throws Exception {
		return session.selectList(namespace + ".getAccountListDao");
	}

	@Override
	public List<MemberDto> searchAccountListDao(String selectedId) throws Exception {
		return session.selectList(namespace + ".searchAccountListDao", selectedId);
	}

	@Override
	public List<BootrackDto> getBootrackList() throws Exception {
		return session.selectList(namespace + ".getBootrackList");
	}

	@Override
	public void managerConfirmDao(Map<String, String> map) throws Exception {
		session.selectOne(namespace + ".managerConfirmDao", map);
	}

	@Override
	public void coachConfirmDao(Map<String, String> map) throws Exception {
		session.selectOne(namespace + ".coachConfirmDao", map);
	}

	@Override
	public void memberConfirmDao(String memberCode) throws Exception {
		session.selectOne(namespace + ".memberConfirmDao", memberCode);
	}

	@Override
	public void accountUpdateDao(Map<String, String> map) throws Exception {
		session.selectOne(namespace + ".accountUpdateDao", map);
	}

	@Override
	public void bootrackUpdateDao(Map<String, String> map) throws Exception {
		session.selectOne(namespace + ".bootrackUpdateDao", map);
	}

	@Override
	public void memberUpdateDao(Map<String, String> map) throws Exception {
		session.selectOne(namespace + ".memberUpdateDao", map);
	}

	@Override
	public List<Map> searchAccountListByNameForBootrackDao(String memberName) throws Exception {
		return session.selectList(namespace + ".searchAccountListByNameForBootrackDao", memberName);
	}

	@Override
	public List<Map> searchAccountListByNameForCoachDao(String memberName) throws Exception {
		return session.selectList(namespace + ".searchAccountListByNameForCoachDao", memberName);
	}

	@Override
	public List<LockerDto> getLockerList() throws Exception {
		return session.selectList(namespace + ".getLockerList");
	}

	@Override
	public List<Map> searchAccountListByNameForLockerDao(String memberName) throws Exception {
		return session.selectList(namespace + ".searchAccountListByNameForLockerDao", memberName);
	}

	@Override
	public void lockerUpdateForMemberDao(Map<String, String> map) throws Exception {
		session.selectOne(namespace + ".lockerUpdateForMemberDao", map);
	}

	@Override
	public void insertCoachDao(Map<String, String> map) throws Exception {
		session.selectOne(namespace + ".insertCoachDao", map);
	}

	@Override
	public void checkCoachStatusDao() throws Exception {
		session.selectOne(namespace + ".checkCoachStatusDao");
	}

	@Override
	public List<CoachDto> searchCoachByMemberIdDao(String memberCode) throws Exception {
		return session.selectList(namespace + ".searchCoachByMemberIdDao", memberCode);
	}

	@Override
	public void editCoachDao(Map<String, String> map) throws Exception {
		session.selectOne(namespace + ".editCoachDao", map);
	}

	@Override
	public List<FeeDto> monthMemberFeeDataDao(String sendedId) throws Exception {
		return session.selectList(namespace + ".monthMemberFeeDataDao", sendedId);
	}

	@Override
	public void monthMemberFeeUpdateDao(Map<String, String> map) throws Exception {
		session.selectOne(namespace + ".monthMemberFeeUpdateDao", map);
	}

	@Override
	public List<MemberDto> singleSearchMonthMemberDao(Map<String, String> map) throws Exception {
		return session.selectList(namespace + ".singleSearchMonthMemberDao", map);
	}

	@Override
	public List<MemberDto> singleSearchTotalMemberDao(Map<String, String> map) throws Exception {
		return session.selectList(namespace + ".singleSearchTotalMemberDao", map);
	}

	@Override
	public List<CoachDto> singleSearchCoachMemberDao(Map<String, String> map) throws Exception {
		return session.selectList(namespace + ".singleSearchCoachMemberDao", map);
	}

	@Override
	public List<FeeDto> FeeListDao() throws Exception {
		return session.selectList(namespace + ".FeeListDao");
	}

	@Override
	public String getMonthMemberNameDao(String memberCode) throws Exception {
		return session.selectOne(namespace + ".getMonthMemberNameDao", memberCode);
	}

	@Override
	public List<FeeDto> singleSearchFeeListDao(Map<String, String> map) throws Exception {
		return session.selectList(namespace + ".singleSearchFeeListDao", map);
	}

	@Override
	public void feeUpdateDao(Map<String, String> map) throws Exception {
		session.selectOne(namespace + ".feeUpdateDao", map);
	}

	@Override
	public void deleteCoach(String memberCode) throws Exception {
		session.selectOne(namespace + ".deleteCoach", memberCode);
	}

	@Override
	public void changeCoachStat(String memberCode) throws Exception {
		session.selectOne(namespace + ".changeCoachStat", memberCode);
	}

	@Override
	public void deleteMonthMember(String memberCode) throws Exception {
		session.selectOne(namespace + ".deleteMonthMember", memberCode);
	}

	@Override
	public void deleteAccount(String memberCode) throws Exception {
		session.selectOne(namespace + ".deleteAccount", memberCode);
	}

	@Override
	public List<FeeDto> getDateFeeList(String searchFeeDate) throws Exception {
		return session.selectList(namespace + ".getDateFeeList", searchFeeDate);
	}

	@Override
	public List<FeeDto> getFeeList() throws Exception {
		return session.selectList(namespace + ".getFeeList");
	}

	@Override
	public void insertGeneralFeeDao(Map<String, String> data) throws Exception {
		session.selectOne(namespace + ".insertGeneralFeeDao", data);
	}

	@Override
	public void insertOneDayFeeDao(Map<String, String> data) throws Exception {
		session.selectOne(namespace + ".insertOneDayFeeDao", data);
	}

	@Override
	public void insertMonthFeeDao(Map<String, String> data) throws Exception {
		session.selectOne(namespace + ".insertMonthFeeDao", data);
	}

	@Override
	public String getPrevFeeCode() throws Exception {
		return session.selectOne(namespace + ".getPrevFeeCode");
	}

	@Override
	public int checkMonthMemberDao(String memberCode) throws Exception {
		return session.selectOne(namespace + ".checkMonthMemberDao", memberCode);
	}

	@Override
	public void updateMonthMemberDao(Map<String, String> monthInfo) throws Exception {
		session.selectOne(namespace + ".updateMonthMemberDao", monthInfo);
	}

	@Override
	public void insertNewMonthMemberDao(Map<String, String> monthInfo) throws Exception {
		session.selectOne(namespace + ".insertNewMonthMemberDao", monthInfo);
	}

	@Override
	public List<CoachDto> findLessonAndCoachDao(String coachName) throws Exception {
		return session.selectList(namespace + ".findLessonAndCoachDao", coachName);
	}

	@Override
	public List<MemberDto> defaultTotalMember() throws Exception {
		return session.selectList(namespace + ".defaultTotalMember");
	}

	@Override
	public List<MemberDto> defaultMonthMember() throws Exception {
		return session.selectList(namespace + ".defaultMonthMember");
	}

	@Override
	public List<CoachDto> defaultTotalCoach() throws Exception {
		return session.selectList(namespace + ".defaultTotalCoach");
	}
}
