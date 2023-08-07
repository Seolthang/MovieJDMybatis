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
 * Servlet implementation class UpdateController
 */
@WebServlet("/member/update.do")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/member/modify.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String memberId = request.getParameter("member-id");
		String memberPw = request.getParameter("member-pw");
		String memberGender = request.getParameter("member-gender");
		String memberEmail = request.getParameter("member-email");
		String memberNickname = request.getParameter("member-nickname");
		
		MemberService service = new MemberService();
		Member member = new Member(memberId, memberPw, memberGender, memberEmail, memberNickname);
		int result = service.updateMember(member);
		if(result > 0) {
			// 성공하면 메인 페이지
			request.setAttribute("msg", "회원정보 수정 완료");
			response.sendRedirect("/index.jsp");
		}else {
			// 실패하면 에러 페이지
			request.setAttribute("msg", "회원 수정이 완료되지 않았습니다.");
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
	}
}
