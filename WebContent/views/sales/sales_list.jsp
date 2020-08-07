<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root }/CSS/bootstrap/bootstrap.min.css">
</head>
<body>
	<div class="container" id="sales_list">
		<h3>매물게시판</h3>
			<div class="btn-group" role="group" aria-label="room_type">
			  <button type="button" class="btn btn-warning">아파트</button>
			  <button type="button" class="btn btn-secondary">원룸</button>
			  <button type="button" class="btn btn-secondary">투룸</button>
			  <button type="button" class="btn btn-secondary">쓰리룸</button>
			  <button type="button" class="btn btn-secondary">오피스텔</button>
			</div>
		<form>
			<br>
			<input type="hidden" value="위에 li값 가져오기" name="sales_type">
			<!-- <input type="text" placeholder="지역명을 입력하세요.">
			<input type="submit" value="검색" class="btn btn-warning"> -->
			
			<div class="input-group mb-3">
				<select class="custom-select col-md-1">
					<option value="">옵션</option>
					<option value="sales">매매</option>
					<option value="rent_year">전세</option>
					<option value="rent_month">월세</option>
				</select>
			  <input type="text" class="form-control col-md-4" placeholder="지역명을 입력하세요." aria-label="지역명을 입력하세요." aria-describedby="button-addon2">
			  <div class="input-group-append">
			    <button class="btn btn-outline-secondary" type="submit" id="button-addon2">검색</button>
			  </div>
			</div>
			
			<input type="range"> <label>가격</label>
			<input type="range"> <label>면적</label>
			<br>
			
			<input type="checkbox" value=""><label>풀옵션</label>
			<input type="checkbox" value=""><label>주차장</label>
			<input type="checkbox" value=""><label>신축</label>
		</form>
		<br>
		<select>
			<option value="">정렬	</option>
			<option value="">가격내림차순</option>
			<option value="">가격오름차순</option>
			<option value="">지수오름순</option>
			<option value="">지수내림순</option>
		</select>
		<br>
		<div class="table">
			<div class="row" id="table_th">
				<div class="col-md-8">제목</div>
				<div class="col-md-1">구분</div>
				<div class="col-md-2">면적</div>
				<div class="col-md-1">가격</div>
			</div>
		<c:forEach begin="0" end="10">	
			<div class="row" id="table_td">
				<div class="col-md-8">프리미엄 럭셔리 인테리어 최고급 샷시 <p>논현신동아파밀리에 105동</p></div>
				<div class="col-md-1">아파트</div>
				<div class="col-md-2">52/35m^2중층/13층</div>
				<div class="col-md-1">전세5억<span>월세</span></div>
			<!-- 	<div class="col-md-2"></div> -->
			</div>
		</c:forEach>
		</div>
		<div class="row col-md-12">
			대충 페이징이 있을 장소 &lt; 1 2 3 4 5 6 7 8 9 10 &gt;
		</div>
		<br>
		<input type="button" value="글쓰기" class="btn btn-warning">
		<br>
	</div>
</body>
</html>