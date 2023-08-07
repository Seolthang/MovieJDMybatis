<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
  <html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티</title>
    <link rel="stylesheet" href="/resources/css/comunity_page_layer.css">
  </head>
  <body>
    <div class="container">
      <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
      <section>
        <div class="board_list_wrap">
          <table class="board_list">
            <caption class="caption_txt">Movie 커뮤니티</caption>
            <thead>
              <tr>
                <th>NO.</th>
                <th>제목</th>
                <th>글쓴이</th>
                <th>작성 날짜</th>
                <th>조회수</th>
              </tr>
            </thead>
            <tbody>
            	<c:forEach var="notice" items="${requestScope.nList }">
            	<tr>
            		<td>${notice.noticeNo }</td>
            		<td><a href="/notice/detail.do?noticeNo=${notice.noticeNo }">${notice.noticeSubject }</a></td>
            		<td>${notice.noticeWriter }</td>
            		<td>${notice.noticeDate }</td>
            		<td>${notice.viewCount }</td>
            	</tr>
              	</c:forEach>
            </tbody>
          <tr>
          	<td colspan="5" align="center">
          	${pageNavi }
          	</td>
          </tr>
          </table>
          <div class="write">
            <a href="/notice/insert.do">글쓰기</a>
          </div>
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