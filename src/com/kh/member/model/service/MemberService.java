package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;

public class MemberService {

	
	public Member loginMember(String userId, String userPwd) {
		Connection conn = getConnection();
		
		Member loginUser = new MemberDao().loginMember(conn, userId, userPwd);

		close(conn);
	
		return loginUser;
	}
	
	
	public int insertMember(Member mem, String birth) {
		Connection conn = getConnection();
		
		int result = new MemberDao().insertMember(conn, mem, birth);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	
	
	}
	
	
	public Member selectMember(String userId) {
		Connection conn = getConnection();
		
		Member mem = new MemberDao().selectMember(conn, userId);
		
		close(conn);
		
		return mem;
	}

	
	public Member updateMember(Member m) {
		Connection conn = getConnection();
		
		int result = new MemberDao().updateMember(conn, m);
		
		Member updateMem = null;
		
		if(result > 0) {
			commit(conn);
			updateMem = new MemberDao().selectMember(conn, m.getId());
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return updateMem;
		
	}
	

	public int updatePwdMember(String id, String userPwd, String newPwd) {
		Connection conn = getConnection();
		
		int result = new MemberDao().updatePwdMember(conn, id, userPwd, newPwd);
		
		if(result > 0) {
			commit(conn);
			
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	

	public int deleteMember(String userId, String userPwd) {
		Connection conn = getConnection();
		
		int result = new MemberDao().deleteMember(conn, userId, userPwd);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
	}
	
	public Member findId(String name, String email) {
		Connection conn = getConnection();
		
		Member findIdMem = new MemberDao().findId(conn, name, email);
		
		close(conn);
		
		return findIdMem;
		
		
		}
	

	public Member findPwd(String pId, String pName, String pPhone) {
		
		Connection conn = getConnection();
		
		Member findPwdMem = new MemberDao().findPwd(conn, pId, pName, pPhone);
		
		close(conn);
		
		return findPwdMem;
		
		
	}
	
	
	
	/**
	 * 아이디 중복 체크
	 * @param userId
	 * @return
	 */
	public int idCheck(String userId) {
		
		Connection conn = getConnection();
		
		int result = new MemberDao().idCheck(conn, userId);
		
		close(conn);
		
		return result;
	}
	
	
}