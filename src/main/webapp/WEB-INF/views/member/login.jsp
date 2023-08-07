<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
  <html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지</title>
    <link rel="stylesheet" href="/resources/css/login_page_layer.css">
  </head>
  <body>
    <div class="container">
      <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
      <section>
        <div class="login_area">
          <h1 class="login_text">Remember Movie</h1>
          <form action="/member/login.do" method="post">
	          <p><input class="id_box" type="text" name="member-id" placeholder=" USER_NAME"></p>
	          <p><input class="pw_box" type="password" name="member-pw" placeholder=" USER_PASSWORD"></p>
	          <input class="login_button" type="submit" value="로그인">
          </form>
        </div>
        <div class="find_area">
          <p><a class="find_page" href="/member/find_id_page.html">아이디 찾기</a>  |  <a class="find_page" href="/member/find_pw_page.html">비밀번호 찾기</a></p>
          <p><a class="find_page" href="/member/enroll.do">회원가입</a></p>
        </div>
      </section>
      <footer>
        <p>
          Remember movie. 서울특별시 강북구 수유동 <br>
          대표 : 강정대 사업자등록번호 : 001-01-00001 <br>
          대표번호 : 02-999-9999 팩스번호 : 02-888-8888 홈페이지 : Remember movie.com <br>
          Copyright Remember movie. All Rights Reserved
        </p> 
      </footer>
    </div>
  </body>
</html>