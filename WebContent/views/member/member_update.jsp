<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root}/css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="${root}/css/member/member_info.css">
<style type="text/css">
	form {
		width: 85%;
		text-align: left;
		display: inline-block;
		padding-top: 15px;
/* 		border: 1px solid red; */
	}
	
	#input-sm {
		width: 40%;
		display: inline-block;
		border: 1px solid black;
		border-radius: 5px;
	}
	
	form .btn-sh {
		width: 100px;
	}
</style>
</head>
<body>
	<div id="content">
		<div class="info">
			<p>회원 정보 수정</p>
			<a href="#" id="a-first">기본 정보 수정</a>
			<a href="#" id="a-second">회원 탈퇴</a>
		</div>
		
		<br>
		
		<form action="#" method="post">
			<div class="form-group row">
				<label for="staticEmail" class="col-sm-2 col-form-label">아이디</label>
				<div class="col-sm-10">
					<input type="text" readonly class="form-control-plaintext" id="staticEmail" value="2sanghoo">
				</div>
			</div>
			
			<div class="form-group row">
				<label for="staticEmail" class="col-sm-2 col-form-label">이름</label>
				<div class="col-sm-10">
					<input type="text" readonly class="form-control-plaintext" id="staticEmail" value="이상후">
				</div>
			</div>
			
			<div class="form-group row">
				<label for="staticEmail" class="col-sm-2 col-form-label">닉네임</label>
				<div class="col-sm-10">
					<input type="text" class="form-control mb-2" id="input-sm">
					<input type="button" class="btn btn-warning" value="중복확인">
				</div>
			</div>
			
			<div class="form-group row">
				<label for="staticEmail" class="col-sm-2 col-form-label">직업</label>
				<div class="col-sm-10">
					<select class="custom-select" style="width: 150px;">
						<option selected>선택하세요</option>
						<option value="1">기사</option>
						<option value="2">도적</option>
						<option value="3">궁수</option>
						<option value="3">마법사</option>
					</select>
				</div>
			</div>
			
			<div class="form-group row">
				<label for="staticEmail" class="col-sm-2 col-form-label">전화번호</label>
				<div class="col-sm-10">
					<select class="custom-select" style="margin-bottom: 8px; width: 150px; display: inline-block;">
						<option selected>010</option>
						<option value="1">011</option>
						<option value="2">016</option>
					</select>
					-
					<input type="text" class="form-control mb-2" style="width: 150px; display: inline-block;">
					-
					<input type="text" class="form-control mb-2" style="width: 150px; display: inline-block;">
					
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="customCheck1">
						<label class="custom-control-label" for="customCheck1">제주살이의 서비스 안내 및 자동 알림을 휴대폰으로 수신하겠습니다.</label>
					</div>
				</div>
			</div>
			
			<div style="width: 100%; text-align: center;">
				<input type="submit" class="btn btn-warning btn-sh" value="확인">
				<input type="button" class="btn btn-warning btn-sh" value="취소">
			</div>
		</form>
	</div>
</body>
</html>