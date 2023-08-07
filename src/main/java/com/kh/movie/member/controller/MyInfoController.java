package com.kh.movie.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.movie.member.model.service.MemberService;
import com.kh.movie.member.model.vo.Member;

/**
 * Servlet implementation class MyInfoController
 */
@WebServlet("/member/myInfo.do")
public class MyInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 페이지 이동 2가지
		// 1. with Data (데이터를 같이 가지고 이동한다) <- DataBase에서 가져온다.
		// 쿼리문 : SELECT * FROM MEMBER_TBL WHERE MEMBER_ID = ?
		MemberService service = new MemberService();
		String memberId = request.getParameter("memberId");
		Member member = service.selectOneById(memberId);
		
		if(member != null) {
			// 멤버가 있으면
			request.setAttribute("member", member);
			request.getRequestDispatcher("/WEB-INF/views/member/myInfo.jsp").forward(request, response);
		}else {
			// 멤버가 없으면
			request.setAttribute("msg", "회원정보가 존재하지 않습니다.");
			request.setAttribute("url", "/index.jsp");
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp");
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
