<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
	<!-- 헤더 로고 -->
	<a href="/index.jsp"><p class="logo"></p></a>
	<!-- 헤더 메인 -->
	<p class="header-main">
	<h1 class="main">Remember Movie</h1>
	</p>
	<!-- 헤더 우측 리스트 -->
	<ul class="nav">
		<li><a href="/info/introduction.jsp"><h4>소개</h4></a></li>
		<li><a href="/notice/list.do?currentPage=1"><h4>커뮤니티</h4></a></li>
		<c:if test="${sessionScope.memberId ne null }">
		<li><a href="/member/logout.do"><h4>로그아웃</h4></a></li>
		<li><a href="/member/myInfo.do?memberId=${memberId }"><h4>마이페이지</h4></a></li>
		</c:if>
		<c:if test="${memberId eq null }">
		<li><a href="/member/login.do"><h4>로그인</h4></a></li>
		<li><a href="/member/enroll.do"><h4>회원가입</h4></a></li>
		</c:if>
	</ul>
</header>