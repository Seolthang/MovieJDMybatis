package com.kh.movie.member.model.service;

import org.apache.ibatis.session.SqlSession;

import com.kh.movie.common.SqlSessionTemplate;
import com.kh.movie.member.model.dao.MemberDAO;
import com.kh.movie.member.model.vo.Member;


public class MemberService {

	private MemberDAO mDao;

	public MemberService() {
		mDao = new MemberDAO();
	}

	public int insertMember(Member member) {
		// 연결 생성
		SqlSession session = SqlSessionTemplate.getSqlSession();
		// DAO 호출
		int result = mDao.insertMember(session, member);
		if (result > 0) {
			// 성공 -> commit
			session.commit();
		} else {
			// 실패 -> rollback
			session.rollback();
		}
		session.close();
		return result;
	}

	public int updateMember(Member member) {
		// 연결 생성
		SqlSession session = SqlSessionTemplate.getSqlSession();
		// DAO 호출
		int result = mDao.updateMember(session, member);
		if (result > 0) {
			// 성공 -> commit
			session.commit();
		} else {
			// 실패 -> rollback
			session.rollback();
		}
		session.close();
		return result;
	}

	public int deleteMember(String memberId) {
		// 연결 생성
		SqlSession session = SqlSessionTemplate.getSqlSession();
		// DAO 호출
		int result = mDao.deleteMember(session, memberId);
		if (result > 0) {
			// 성공 -> commit
			session.commit();
		} else {
			// 실패 -> rollback
			session.rollback();
		}
		session.close();
		return result;
	}

	public Member selectCheckLogin(Member member) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		Member mOne = mDao.selectCheckLogin(session, member);
		session.close();
		return mOne;
	}

	public Member selectOneById(String memberId) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		Member member = mDao.selectOneById(session, memberId);
		session.close();
		return member;
	}

}
