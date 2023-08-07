<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
  <html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <link rel="stylesheet" href="/resources/css/myinfo_page_layer.css">
  </head>
  <body>
    <div class="container">
      <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
      <section>
        <div class="membership_area1">
          <h1 class="membership_text1">Remember Movie</h1>
          <h3 class="membership_text2">회원 상세 정보</h3>
          <form action="/member/update.do" method="post">
            <div class="membership_area2">
              <ul>
                <li>
                  <label for="id">아이디 : </label>
                  <input class="id_box" type="text" name="member-id" value="${member.memberId }"readonly>
                </li>
                <li>
                  <label for="pw">비밀번호 : </label>
                  <input class="pw_box1" type="password" name="member-pw" placeholder=" 비밀번호를 입력해주세요">
                </li>
                <li>
                  <label for="name">이름 : </label>
                  <input class="name_box" type="text" name="member-name" value="${member.memberName }"readonly>
                </li>
                <li>
                  <label for="gender">성별 : </label>
                  <input class="gender_box" type="gender" name="member-gender" value="${member.memberGender }"readonly>
                  <c:if test="${member.memberGender eq 'M' }"></c:if>
                  <c:if test="${member.memberGender eq 'F' }"></c:if>
                </li>
                <li>
                  <label for="email">이메일 : </label>
                  <input class="email_box" type="email" name="member-email" value="${member.memberEmail }">
                </li>
                <li>
                  <label for="nick_name">닉네임 : </label>
                  <input class="nick_name_box" type="text" name="member-nickname" value="${member.memberNickname }">
                </li>
              </ul>
            </div>
            <input class="membership_button" type="submit" value="수정하기">
            <div class="deleteBtn">
            <a href="javascript:void(0)" onclick="checkDelete();">탈퇴하기</a>
            </div>
          </form>
          <script>
          	// "/member/delete.do?memberId=${sessionScope.memberId}"
          	function checkDelete(){
          		const memberId = '${sessionScope.memberId}';
          		if(confirm("탈퇴하시겠습니까?")){
          			location.href = "/member/delete.do?memberId=" + memberId;
          		}
          	}
          </script>
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