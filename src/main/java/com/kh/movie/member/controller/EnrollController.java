package com.kh.movie.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.movie.member.model.service.MemberService;
import com.kh.movie.member.model.vo.Member;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/member/enroll.do")
public class EnrollController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnrollController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/member/enroll.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String memberId = request.getParameter("member-id");
		String memberPw = request.getParameter("member-pw");
		String memberName = request.getParameter("member-name");
		String memberGender = request.getParameter("member-gender");
		String memberEmail = request.getParameter("member-email");
		String memberNickname = request.getParameter("member-nickname");
		
		Member member = new Member(memberId, memberPw, memberName, memberGender, memberEmail, memberNickname);
		// 서비스 호출
		MemberService service = new MemberService();
		int result = service.insertMember(member);
		if(result > 0) {
			request.setAttribute("msg", "회원가입을 축하합니다");
			request.setAttribute("url", "/index.jsp");
		}else {
			request.setAttribute("url", "/member/register.do");
			request.setAttribute("msg", "회원 등록이 완료되지 않았습니다.");
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
	}
}
