<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>영화 정보</title>
    <link rel="stylesheet" href="/resources/css/poster_info_page_layer.css">
  </head>
  <body>
    <div class="container">
      <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
      <div class="infoMain">
        <section>
          <img class="poster_info" src="/resources/image/poster_1.jpg" alt="기생충">
          <ul class="infomation">
            <li class="information_li"><strong>영화제목</strong></li>
            <li class="information_li"><strong>개봉일</strong></li>
            <li class="information_li"><strong>감독</strong></li>
            <li class="information_li"><strong>출연자</strong></li>
          </ul>
          <ul class="infomation">
            <li class="infomation_li2">기생충</li>
            <li class="infomation_li2">2019년 5월 30일</li>
            <li class="infomation_li2">봉준호</li>
            <li class="infomation_li2">송강호, 이선균, 조여정, 최우식, 박소담, 장혜진, 이정은, 박명훈</li>
          </ul>
        </section>
        <section>
          <p class="movie_info"><strong>전원백수로 살 길 막막하지만 사이는 좋은 기택(송강호) 가족. <br>장남 기우(최우식)에게 명문대생 친구가 연결시켜 준 고액 과외 자리는 모처럼 <br>싹튼 고정수입의 희망이다.<br>
            온 가족의 도움과 기대 속에 박사장(이선균) 집으로 향하는 기우.<br> 글로벌 IT기업 CEO인 박사장의 저택에 도착하자<br> 젊고 아름다운 사모님 연교(조여정)가 기우를 맞이한다.<br>
            그러나 이렇게 시작된 두 가족의 만남 뒤로,<br> 걷잡을 수 없는 사건이 기다리고 있었으니…</strong></p>
        </section>
      </div>
      <footer class="bottom">
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