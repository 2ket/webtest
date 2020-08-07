<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root}/css/bootstrap/bootstrap.min.css">
<style type="text/css">
	#main_container{
		background-color:mistyrose;
		padding:200px 580px;
 		
	}
	
	.navbar-form{
		width:700px; 
		
	}
	#main_container>form{
		float:left;
	}
	form>.span2{
		margin: 5px 0;
		width: 600px;
	}
	svg{
		margin-left: 5px;	
		margin-top: -5px;
	}
	.btn{
		margin-top: -5px;
	}
	#main_board{

	    float:left;
	    padding:50px 510px;
		width:100%;
		background-color: aliceblue;
		

	}
	
	#main_board>div{
		float:left;
		height:360px;
		width:350px;
		background-color: orange;
		margin-left: 50px;
	}
	
	#main_board>div{
		float:left;
		border: 1px solid black;
	}
	
	#main_board>div>.title{
		width:100%;
		padding:4px;
		float:left;
		border-bottom: 1px solid black;
		text-align: center;
	}
	
	#main_board>div>.content{
		width:100%;
		float:left;
		background-color: white;
		padding:15px;

	}
</style>
</head>
<body>
	<div id="main_container">
		<form class="navbar-form pull-left">
			<svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
			  <path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
			  <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
		   </svg>
		  <input type="text" class="span2" placeholder="지역명을 검색하세요.">
		  <button type="submit" class="btn btn-warning">검색</button>
		</form>
	</div>
	<div id="main_board">
		<div>
			<div class="title">공지사항</div>
			<div class="content">
				&#9786;공지사항
			</div>
			<div class="content">
				&#9786;공지사항
			</div>
			<div class="content">
				&#9786;공지사항
			</div>
			<div class="content">
				&#9786;공지사항
			</div>
			<div class="content">
				&#9786;공지사항
			</div>
			<div class="content">
				&#9786;공지사항
			</div>
		</div>
		<div>
			<div class="title">최신뉴스</div>
			<div class="content">
				&#9786;최신뉴스
			</div>
			<div class="content">
				&#9786;최신뉴스
			</div>
			<div class="content">
				&#9786;최신뉴스
			</div>
			<div class="content">
				&#9786;최신뉴스
			</div>
			<div class="content">
				&#9786;최신뉴스
			</div>
			<div class="content">
				&#9786;최신뉴스
			</div>
		</div>

	</div>

</body>
</html>