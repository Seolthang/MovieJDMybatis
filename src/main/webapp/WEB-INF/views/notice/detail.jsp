<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie 커뮤니티</title>
    <link rel="stylesheet" href="/resources/css/comunity_page_reading_layer.css">
  </head>
  <body>
    <div class="container">
      <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
      <section>
        <div class="board_write_wrap">
          <table class="board_write">
            <caption class="caption_txt">Movie 커뮤니티</caption>
            <thead>
              <tr>
                <th id="title">제목</th>
                <th id="title_write">${notice.noticeSubject }</th>
              </tr>
            </thead>
            <tbody>
              <th id="detail">내용</th>
              <td id="detail_write"><br>${notice.noticeContent }</td>
            </tbody>
          </table>
          <div>
          	<a href="/notice/list.do">목록</a>
            <a href="/notice/modify.do?noticeNo=${notice.noticeNo }">수정</a>
            <a href="javascript:void(0)" onclick="deleteCheck();" >삭제</a>
            <script>
            	const deleteCheck = () => {
            		const noticeNo = '${notice.noticeNo}';
            		if(confirm("정말 삭제하시겠습니까?")){
            			location.href = "/notice/delete.do?noticeNo="+noticeNo;
            		}
            	}
            </script>
          </div>
<!--           <div class="write"> -->
<!--             <th><input id="comment" type="text" placeholder="댓글을 입력하세요."></a></th> -->
<!--             <a href="#">댓글등록</a> -->
<!--           </div> -->
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