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
<script type="text/javascript">
function createXHR(){
	if(window.XMLHttpRequest){
		return new XMLHttpRequest;
	}else{
		return new ActiveXObject("Microsoft.XMLHTTP");
	}
}

var xhr=null;

function sendRequest(method, url, param, callback){	//넘어온 값 : post, xhr.txt, msg, fromServer()
	var httpMethod=method.toUpperCase();
	var httpUrl=url;
	var httpParam=(param==null || param=="") ? null : param
	if(httpMethod=="GET" && httpParam != null){
		httpUrl +="?"+httpParam;
	}
	
	//alert(httpMethod+", "+httpUrl+", "+httpParam);
	xhr=createXHR();
	xhr.open(httpMethod, httpUrl, true);
	//xhr.setRequestHeader~는 POST일때만 적용되고 GET이면 점프한다
	//xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");
	xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");
	xhr.setRequestHeader("Authorization", "KakaoAK 18514d37ace0e69349e647543ecf89f8");
	xhr.send(httpMethod=="POST" ? httpParam : null);
	xhr.onreadystatechange=callback;
	
}



	var arr=new Array();
	function toServer(){
		var addr=document.getElementById("addr").value;
		//arr.push(addr);
		
		var url="https://dapi.kakao.com/v2/local/search/address.json";
		var param="query="+addr;
		
		//alert(url+", "+param);
		sendRequest("POST", url, param, fromServer);
	}
 	function fromServer(){
		//arr.push(xhr.readyState+","+xhr.status);
		if(xhr.readyState==4 && xhr.status==200){
			//arr.push(xhr.responseText);
			processJson();
		}
		//alert(arr);
	}
 	function processJson(){
		var obj=JSON.parse(xhr.responseText);
		var y=obj.documents[0].y;
		var x=obj.documents[0].x;
		
		
		//arr.push(x+", "+y);
		//alert(arr);
		
		var map=document.getElementById("map");
		map.innerHTML+="주소";
		map.innerHTML+=y+" "+x;
		
	}
	
	
</script>
</head>
<body>
	<div class="container" id="sales_list">
		<h3>매물 글쓰기</h3>
		<form>
		<div class="row align-items-center justify-content-between">
			<div class="col-md-8">
				<div class="btn-group btn-group-toggle mb-3" data-toggle="buttons">
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
				<div class="input-group mb-3 align-items-center">
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
				  <input type="text" class="form-control" id="addr" aria-describedby="inputGroup-sizing-sm">
				  <div class="input-group-append">
				    <button class="btn btn-outline-secondary" type="button" id="button-addon2" aria-describedby="inputGroup-sizing-sm" onclick="toServer()">검색</button>
				  </div>
				</div>
				
				<div id="map"></div>
				
			</div>
			<div class="col-md-3">
				<div class="input-group input-group-sm mb-2">
					<div class="input-group-prepend">
				    	<span class="input-group-text" id="inputGroup-sizing-sm">가격  (원)</span>
					</div>
					<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
				</div>
				<div class="input-group input-group-sm mb-2">
					<div class="input-group-prepend">
				    	<span class="input-group-text" id="inputGroup-sizing-sm">면적(m<sup>2</sup>)</span>
					</div>
					<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
				</div>
				<div class="input-group input-group-sm mb-2">
					<div class="input-group-prepend">
				    	<span class="input-group-text" id="inputGroup-sizing-sm">준공년도</span>
					</div>
					<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
				</div>
			</div>
			
		</div>
		<div class="form-group">
		    <label for="exampleFormControlTextarea1">내용</label>
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="14"></textarea>
		</div>
		<div class="input-group mb-3">
		  <div class="custom-file">
		    <input type="file" class="custom-file-input" id="inputGroupFile02">
		    <label class="custom-file-label" for="inputGroupFile02" aria-describedby="inputGroupFileAddon02">Choose file</label>
		  </div>
		  <div class="input-group-append">
		    <span class="input-group-text" id="inputGroupFileAddon02">Upload</span>
		  </div>
		</div>
		
		
		<div class="float-right">
			<button type="submit" class="btn btn-warning">작성</button>
			<button type="button" class="btn btn-light">취소</button>
		</div>
		</form>
	</div>	

</body>
</html>