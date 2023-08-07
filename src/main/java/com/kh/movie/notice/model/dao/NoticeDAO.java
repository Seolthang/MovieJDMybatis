package com.kh.movie.notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.kh.movie.notice.model.vo.Notice;

public class NoticeDAO {

	public int insertNotice(SqlSession session, Notice notice) {
		// JDBC랑 다르게 1줄이면 코드 끝
		// insert를 할거면 session에서 insert() 메소드 호출 후
		// mapper.xml의 name값(NoticeMapper)과 쿼리문의 id값(insertNotice)을 호출
		// 한 줄 쓰고 끝나는게 아니라 notice-mapper.xml을 만들고 태그를 이용해서 쿼리문 작성해주고
		// mapper.xml을 사용한다고 mybatis-config.xml에 신고/등록 해야함.
		int result = session.insert("NoticeMapper.insertNotice", notice);
		return result;
	}

	public int updateNotice(SqlSession session, Notice notice) {
		int result = session.update("NoticeMapper.updateNotice", notice);
		return result;
	}

	public int deleteNoticeByNo(SqlSession session, int noticeNo) {
		int result = session.delete("NoticeMapper.deleteNoticeByNo", noticeNo);
		return result;
	}

	public List<Notice> selectNoticeList(SqlSession session, int currentPage) {
		// JDBC랑 다르게 1줄이면 코드 끝
		// select를 할거면 session에서 selectList, selectOne 메소드 중에서 필요에 맞게 호출
		// mapper.xml의 name값(NoticeMapper)과 쿼리문의 id값(selectNoticeList)을 호출
		// 넘겨주는 값(매개변수)은 없으므로 name.id값 만 selectList()메소드의 전달값으로 넘겨줌
		// mapper.xml에서는 select이기 때문에 rsetToNotice에 해당하는 ResultMap을 작성 해줘야함.
		
		/*
		 * RowBounds는 왜 쓰는가? 쿼리문을 변경하지 않고도 페이징을 처리할 수 있게 해주는 클래스
		 * RowBounds의 동작은 offset값과 limit값을 이용해서 동작한다.
		 * limit값은 한 페이지당 보여주고 싶은 게시물의 갯수
		 * offset값은 시작값, 변하는 값
		 * 1페이지에서는 0*10부터 시작해서 10개를 가져오고 1 ~ 10
		 * 2페이지에서는 1*10부터 시작해서 ...			11 ~ 20
		 * 3페이지에서는 2*10부터 시작해서 ...			21 ~ 30
		 */
		int limit = 8;
		int offset = (currentPage-1)*limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Notice> nList = session.selectList("NoticeMapper.selectNoticeList", null, rowBounds);
		return nList;
	}

	public Notice selectOneByNo(SqlSession session, int noticeNo) {
		Notice notice = session.selectOne("NoticeMapper.selectOneByNo", noticeNo);
		return notice;
	}
	
	public String generatePageNavi(SqlSession session, int currentPage) {
		// 전체 게시물의 갯수
		int totalCount = getTotalCount(session); // 전체 게시물의 개수
		int recordCountPerPage = 8; //1페이지에서 보여줄 게시물의 수
		int naviTotalCount = 0; // 범위의 개수 (네비게이터의 수)
		if(totalCount % recordCountPerPage > 0) {
			naviTotalCount = totalCount / recordCountPerPage + 1;
		}else {
			naviTotalCount = totalCount / recordCountPerPage;
		}
		int naviCountPerPage = 5; // 페이지를 5개까지만 보여준다.
		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage -1;
		if(endNavi > naviTotalCount) {
			endNavi = naviTotalCount;
		}
		boolean needPrev = true;
		boolean needNext = true;
		if(startNavi == 1) {
			needPrev = false;
		}
		if(endNavi == naviTotalCount) {
			needNext = false;
		}
		StringBuilder result = new StringBuilder();
		if(needPrev) {
			result.append("<a href='/notice/list.do?currentPage="+(startNavi-1)+"'>[<]&nbsp;&nbsp;</a>");
		}
		for(int i = startNavi; i <= endNavi; i++) {
			result.append("<a href='/notice/list.do?currentPage="+i+"'>"+i+"</a>&nbsp;&nbsp;");
		}
		if(needNext) {
			result.append("<a href='/notice/list.do?currentPage="+(endNavi+1)+"'>[>]</a>");
		}
		return result.toString();
	}
	
	private int getTotalCount(SqlSession session) {
		int totalCount = session.selectOne("NoticeMapper.getTotalCount");
		return totalCount;
	}
}
