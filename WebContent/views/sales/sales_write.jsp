<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root }/css/bootstrap/bootstrap.min.css">
</head>
<body>
	<div class="container" id="sales_list">
		<h3>매물 글쓰기</h3>
		<form>
		<div class="col-md-8">
			<div class="btn-group btn-group-toggle" data-toggle="buttons">
				<label class="btn btn-outline-warning">
					<input type="radio" name="room_type" id="APT">아파트
				</label>
				<label class="btn btn-outline-warning">
					<input type="radio" name="room_type" id="ONE">원룸
				</label>
				<label class="btn btn-outline-warning">
					<input type="radio" name="room_type" id="TWO">투룸
				</label>
				<label class="btn btn-outline-warning">
					<input type="radio" name="room_type" id="THREE">쓰리룸
				</label>
				<label class="btn btn-outline-warning">
					<input type="radio" name="room_type" id="OFFICE">오피스텔
				</label>
			</div>
			<div class="input-group mb-3">
				<select class="custom-select col-md-2">
					<option value="">옵션</option>
					<option value="sales">매매</option>
					<option value="rent_year">전세</option>
					<option value="rent_month">월세</option>
				</select>
			  <input type="text" class="form-control" placeholder="제목을 입력하세요." aria-label="제목을 입력하세요.">
			</div>
			
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="풀옵션">
			  <label class="form-check-label" for="inlineCheckbox1">풀옵션</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="주차장">
			  <label class="form-check-label" for="inlineCheckbox2">주차장</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="신축">
			  <label class="form-check-label" for="inlineCheckbox3">CCTV</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="신축">
			  <label class="form-check-label" for="inlineCheckbox3">엘레베이터</label>
			</div>
			
			<div class="input-group input-group-sm mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="inputGroup-sizing-sm">주소찾기</span>
			  </div>
			  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
			  <div class="input-group-append">
			    <button class="btn btn-outline-secondary" type="button" id="button-addon2" aria-describedby="inputGroup-sizing-sm">Button</button>
			  </div>
			</div>
		</div>
		<div class="col-md-4">
		
		</div>
		</form>
	</div>	

</body>
</html>