<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="now" class="java.util.Date" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../include/IncludeDefault.jsp" %>
	
	<link rel="stylesheet" href="./style/reservation.css" />    
    <script src="./js/reservation.js"></script>
</head>
<body>
	<c:import url="/include/header.do"/>
	<section class="location">      <!-- background-color: #f8f8fa; -->
		<div>
			<span><i class="fas fa-home"></i></span>
			<span>></span>
			<span>예매</span>
			<span>></span>
			<span>상영시간표</span>
		</div>
	</section>
	<div class="content">
      <div class="reserv_title">
        <div>인원/좌석 선택</div>
      </div>
      <div class="reserv_info">
        <div class="reserv_movie">
          <img src="./images/poster/${reservations.moviePoster }">
          <div>
            <div class="reserv_info_title">
              <img src="./images/icon/age_${reservations.movieLimitAge}.png">
              <div>${reservations.movieTitle }</div>
            </div>
            <div class="reserv_info_dateTime">
              <div>${reservations.date }</div>
              <span>|</span>
              <div>${reservations.startTime }~${reservations.endTime }</div>
            </div>
            <div class="reserv_info_location">
              <div>${reservations.cinemaTitle }</div>
              <span>.</span>
              <div>${reservations.theaterTitle }</div>
            </div>
          </div>
        </div>
        <div class="reserv_porson">
          <div>성인</div>
          <div class="reserv_count">
            <div><i class="fas fa-minus"></i></div>
            <div>0</div>
            <div><i class="fas fa-plus"></i></div>
          </div>
          <div>청소년</div>
          <div class="reserv_count">
            <div><i class="fas fa-minus"></i></div>
            <div>0</div>
            <div><i class="fas fa-plus"></i></div>
          </div>
        </div>
      </div>
      <div class="reserv_screen">
        <div class="reserv_screen_info">좌석 선택 후 결제하기 버튼을 클릭하세요.</div>
        <div class="reserv_screen_front">
          <p>S</p>
          <p>C</p>
          <p>R</p>
          <p>E</p>
          <p>E</p>
          <p>N</p>
        </div>
        <div class="reserv_seat">
        <c:set var="alhpa" value="A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z"/>
        <c:set var="array" value="${fn:split(alhpa,',')}" />
        <c:forEach begin="1" end="${reservations.theaterSeatY }" varStatus="status">
        	<div>
        		<div>${array[status.index - 1]}</div>
        		<c:forEach begin="1" end="${reservations.theaterSeatX }" varStatus="status">	
		        	<div>${status.index }</div>
		        </c:forEach>
        	</div>
        </c:forEach>
        </div>
        <div class="reserv_seat_info">
          <span class="active"></span>
          <div>선택좌석</div>
          <span></span>
          <div>선택가능</div>
          <span></span>
          <div>예매완료</div>
          <span></span>
          <div>선택불가</div>
        </div>
      </div>
      <div class="reserv_pay">
        <div>
          <span>총 합계</span>
          <div>9,000</div>
          <span>원</span>
        </div>
        <div>
          결제하기
        </div>
      </div>
    </div>
	<c:import url="/include/footer.do"/>
</body>
</html>