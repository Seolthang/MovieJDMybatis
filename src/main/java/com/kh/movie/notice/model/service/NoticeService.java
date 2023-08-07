package com.kh.movie.notice.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kh.movie.common.SqlSessionTemplate;
import com.kh.movie.notice.model.dao.NoticeDAO;
import com.kh.movie.notice.model.vo.Notice;
import com.kh.movie.notice.model.vo.PageData;

public class NoticeService {

	// 서비스에서는 연결생성, DAO 호출 커밋롤백, 연결 해제 해줌
	// DAO호출을 위한 nDao 필드 필요
	private com.kh.movie.notice.model.dao.NoticeDAO nDao;

	public NoticeService() {
		// 필드는 생성자에서 초기화 해줌
		nDao = new NoticeDAO();
	}

	public int insertNotice(Notice notice) {
		// 마이바티스에서는 SqlSession을 이용
		// SqlSessionTemplatedms mybatis-config.xml파일을 참조하여 SqlSession 연결을 생성함
		// 연결공장 빌더가 연결공장을 만들면 연결이 생성됨

		// 연결 생성
		SqlSession session = SqlSessionTemplate.getSqlSession();
		// DAO 호출
		int result = nDao.insertNotice(session, notice);
		if (result > 0) {
			// commit과 rollback은 DML의 경우에만 한다.
			// 성공 -> commit
			session.commit();
		} else {
			// 실패 -> rollback
			session.rollback();
		}
		session.close();
		return result;
	}

	public int updateNotice(Notice notice) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = nDao.updateNotice(session, notice);
		if (result > 0) {
			// commit과 rollback은 DML의 경우에만 한다.
			// 성공 -> commit
			session.commit();
		} else {
			// 실패 -> rollback
			session.rollback();
		}
		session.close();
		return result;
	}

	public int deleteNoticeByNo(int noticeNo) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = nDao.deleteNoticeByNo(session, noticeNo);
		if (result > 0) {
			// commit과 rollback은 DML의 경우에만 한다.
			// 성공 -> commit
			session.commit();
		} else {
			// 실패 -> rollback
			session.rollback();
		}
		session.close();
		return result;
	}

	public PageData selectNoticeList(int currentPage) {
		// 서비스, DAO, mapper.xml 순으로 코딩
		// 서비스는 연결생성, DAO 호출, 연결 해제
		SqlSession session = SqlSessionTemplate.getSqlSession();
		List<Notice> nList = nDao.selectNoticeList(session, currentPage);
		String pageNavi = nDao.generatePageNavi(session, currentPage);
		PageData pd = new PageData(nList, pageNavi);
		session.close();
		return pd;
	}

	public Notice selectOneByNo(int noticeNo) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		Notice notice = nDao.selectOneByNo(session, noticeNo);
		session.close();
		return notice;
	}
}
