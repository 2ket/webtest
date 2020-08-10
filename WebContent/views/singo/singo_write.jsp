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
<script type="text/javascript" src="${root }/javascript/jquery-3.5.1.js"></script>
<script type="text/javascript" src="${root }/javascript/bootstrap/bootstrap.min.js"></script>


</head>
<body>
	<div class="container" id="sales_list">
		<br/>
		<h3>신고 글쓰기</h3>
		<br/>

		<form>
		<div class="row align-items-center justify-content-between">
			<div class="col-md">
	
				<div class="input-group mb-4">
					<div class="input-group-prepend">
				    	<span class="input-group-text" id="inputGroup-sizing-sm">제목</span>
				 	</div>
				  <input type="text" class="form-control" placeholder="제목을 입력하세요." aria-label="제목을 입력하세요.">
				</div>
				

				<div class="input-group mb-4">
  					<div class="input-group-prepend">
    					<span class="input-group-text" id="basic-addon1">신고대상 링크</span>
  					</div>
  					<input type="text" class="form-control" placeholder="링크를 입력하세요." aria-label="링크를 입력하세요." aria-describedby="basic-addon1">
				</div>
			</div>

		</div>
		
		
		<div class="input-group">
  			<div class="input-group-prepend">
   				<span class="input-group-text">내 용</span>
  			</div>
  			<textarea class="form-control" aria-label="With textarea" rows="14" placeholder="내용을 입력하세요." aria-label="내용을 입력하세요."></textarea>
		</div>
		
		<br/>
		
		<div class="float-right">
			<button type="submit" class="btn btn-warning">작성</button>
			<button type="button" class="btn btn-light">취소</button>
		</div>
		</form>
	</div>	

</body>
</html>