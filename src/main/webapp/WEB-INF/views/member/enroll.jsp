<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="/resources/css/membership_page_layer.css">
  </head>
  <body>
    <div class="container">
      <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
      <section>
        <div class="membership_area1">
          <h1 class="membership_text1">Remember Movie</h1>
          <h3 class="membership_text2">회원가입 페이지</h3>
          <form action="/member/enroll.do" method="post">
            <div class="membership_area2">
              <ul>
                <li>
                  <label for="id">아이디 : </label>
                  <input class="id_box" type="text" name="member-id" placeholder=" 아이디를 입력해주세요">
                </li>
                <li>
                  <label for="pw">비밀번호 : </label>
                  <input class="pw_box1" type="password" name="member-pw" placeholder=" 비밀번호를 입력해주세요">
                </li>
                <li>
                  <label for="name">이름 : </label>
                  <input class="name_box" type="text" name="member-name" placeholder=" 이름을 입력해주세요">
                </li>
                <li>
                  <label for="gender">성별 : </label>
                  <input class="gender_box" type="radio" name="member-gender" value="M"> 남자 
                  <input class="gender_box" type="radio" name="member-gender" value="F"> 여자 
                </li>
                <li>
                  <label for="email">이메일 : </label>
                  <input class="email_box" type="email" name="member-email" placeholder=" 이메일을 입력해주세요">
                </li>
                <li>
                  <label for="nick_name">닉네임 : </label>
                  <input class="nick_name_box" type="text" name="member-nickname" placeholder=" 닉네임을 입력해주세요">
                </li>
              </ul>
            </div>
            <input class="membership_button" type="submit" value="회원가입">
            <input class="close_button" type="reset" value="취소">
          </form>
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