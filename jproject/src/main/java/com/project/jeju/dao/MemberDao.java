package com.project.jeju.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project.jeju.model.MemberBean;

@Repository
public class MemberDao {

	@Autowired
	private SqlSession sqlSession;

	
	// 아이디 중복 체크
//	@Transactional
	public int checkMemberId(String id) throws Exception {
// 		getSession();
		int re = -1; // 사용 가능한 ID
		MemberBean mb = sqlSession.selectOne("memberns.idlogin", id);
		if (mb != null)
			re = 1; // 중복ID
		return re;
	}

	// 이메일 중복 검사
	public int check_email(String email) throws Exception {
		return sqlSession.selectOne("email_check", email);

	}

     // 닉네임 중복 체크 
	public int checkMemberNick(String nickname) throws Exception {
//		 		getSession();
		int re = -1; // 사용 가능한 닉네임
		MemberBean mb = sqlSession.selectOne("memberns.nicklogin", nickname);
		if (mb != null)
			re = 1; // 중복 닉네임
		return re;

	}

	// 이름 중복 검사
	public int checkMemberName(String name) throws Exception {
		return sqlSession.selectOne("name_check", name);
	}
	
	
    // 회원가입 저장	
// @Transactional	
	public int insertMember(MemberBean mb) throws Exception {
//		getSession();
		return sqlSession.insert("memberns.insertMember", mb);
	}

	// 로그인 인증 체크
// @Transactional	
	public MemberBean userCheck(String id) throws Exception {
//			getSession();
			return sqlSession.selectOne("memberns.idlogin", id);
	}

	// 비밀번호 검색
//@Transactional
	public MemberBean findpwd(MemberBean mb) throws Exception {
//		getSession();
		return sqlSession.selectOne("pwdFind", mb);
	}

   // 회원수정
//@Transactional
	public int updateMember(MemberBean mb) throws Exception {
//     	getSession();
	    return sqlSession.update("memberns.updateMember", mb);
	}
	    
   // 회원삭제 
//@Transactional
	public void deleteMember(MemberBean mb) throws Exception {
//		getSession();
		sqlSession.update("memberDel", mb);	    
  	}	
  
	
	
}
	


