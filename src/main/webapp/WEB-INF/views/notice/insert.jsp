<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티</title>
    <link rel="stylesheet" href="/resources/css/comunity_page_write_layer.css">
  </head>
  <body>
    <div class="container">
      <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
      <section>
        <div class="board_write_wrap">
          <table class="board_write">
            <caption class="caption_txt">Movie 커뮤니티</caption>
            <form action="/notice/insert.do" method="post">
            <thead>
              <tr>
                <th id="title">제목</th>
                <th id="title_write"><input id="title_area" type="text" name="noticeSubject" placeholder="제목을 입력해주세요."></th>
              </tr>
            </thead>
            <tbody>
              <th id="">내용</th>
              <th id="detail_write"><textarea id="" name="noticeContent" rows="20" cols="108" placeholder="내용을 입력해주세요."></textarea></th>
            </tbody>
          </table>
          <div class="write">
            <input type="submit" value="등록" name="submit">
            <input type="reset" value="초기화"name="reset">
<!--             <a href="/community/comunity_page.html">취소</a> -->
          </div>
          </form>
          </div>
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