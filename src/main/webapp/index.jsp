<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>메인 페이지</title>
        <link rel="stylesheet" href="/resources/css/main_page_layout.css">
    </head>
    <body>
        <div class="container">
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <section class="section-main1">
                <video width="1200" height="600" muted controls poster="/resources/image/trailer_img_1.jpg">
                    <source src="/resources/video/parasite_trailer.mp4">
                </video>
            </section>
            <section class="section-main2">
                <p><h3 class="main_txt">금주의 Movie Pick</h3></p>
                    <a href="/info/posterInfo.jsp" class="poster_name">
                        <img src="/resources/image/poster_1.jpg" alt="기생충" class="poster">
                        <p class="poster_name_txt">기생충</p>
                    </a>
                    <a href="#" class="poster_name">
                        <img src="/resources/image/poster_2.jpg" alt="나비효과" class="poster">
                        <p class="poster_name_txt">나비효과</p>
                    </a>
                    <a href="#" class="poster_name">
                        <img src="/resources/image/poster_3.jpg" alt="다만,널 사랑하고 있어" class="poster">
                        <p class="poster_name_txt">다만,널 사랑하고 있어</p>
                    </a>
                    <a href="#" class="poster_name">
                        <img src="/resources/image/poster_4.jpg" alt="대부" class="poster">
                        <p class="poster_name_txt">대부</p>
                    </a>
                    <a href="#" class="poster_name">
                        <img src="/resources/image/poster_5.jpg" alt="매드맥스" class="poster">
                        <p class="poster_name_txt">매드맥스</p>
                    </a>
                    <a href="#" class="poster_name">
                        <img src="/resources/image/poster_6.jpg" alt="타이타닉" class="poster">
                        <p class="poster_name_txt">타이타닉</p>
                    </a>
                    <a href="#" class="poster_name">
                        <img src="/resources/image/poster_9.jpg" alt="셜록:유령신부" class="poster">
                        <p class="poster_name_txt">셜록:유령신부</p>
                    </a>
                    <a href="#" class="poster_name">
                        <img src="/resources/image/poster_8.jpg" alt="조제,호랑이 그리고 물고기들" class="poster">
                        <p class="poster_name_txt">조제,호랑이 그리고 물고기들</p>
                    </a>
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