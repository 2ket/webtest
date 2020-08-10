<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="${root}/css/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${root}/css/admin/notice_list.css">
</head>
<body>
<form action="#" method="POST" onsubmit="">
	<div id="admin_container">
		<h3 class="text-success">[공지사항]</h3>
		<span class="badge badge-success">관리자</span>
		<table>
				<tr>
					<th>1</th>
					<th>2</th>
					<th>3</th>
					<th>4</th>
					<th>5</th>
				</tr>
				
				<tr>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
			    </tr>
				
				<tr class="table-success">
			      <th scope="row">Success</th>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
    			</tr>
    			
    			<tr>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
			    </tr>
    			
    			<tr class="table-success">
			      <th scope="row">Success</th>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
    			</tr>
				
				<tr>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
			    </tr>
				
				<tr class="table-success">
			      <th scope="row">Success</th>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
    			</tr>
    			
    			<tr>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
			    </tr>
				
				<tr class="table-success">
			      <th scope="row">Success</th>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
			      <td>Column content</td>
    			</tr>
		</table>

		<button class="btn btn-success" type="button" style = "margin-top: 5px;">글작성</button>
	</div>
</form>
</body>
</html>