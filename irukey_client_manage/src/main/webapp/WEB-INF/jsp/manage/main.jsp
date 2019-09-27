<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
#footer {

    position:absolute;

    bottom:0;

    width:100%;

    height:70px;   

	}
</style>
</head>
<body>
	<jsp:include page="menubar.jsp"/>
	<div class="jumbotron text-center" style="margin-bottom:0">
	  <h1>아이루키 사이트 현황</h1>
	  <button type="button" class="btn btn-success btn-lg" style="margin-top:20px;" onclick="location.href='${contextPath}/writeNew.pr'">작성하기</button> 
	</div>
	<div class="container" style="margin-top:50px;">
		<div class="row">
			
			<div class="col-sm-6">
				<table class="table">
					<tr>
						<th>사이트명</th>
						<th>프로젝트 시작일</th>
						<th>프로젝트 종료일</th>
						<th>유지보수 종료일</th>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>
			<div class="col-sm-6">
				<table class="table">
					<tr>
						<th>담당자명</th>
						<th>담당거래처</th>
						<th>직급</th>
						<th>직무</th>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
<div class="jumbotron text-center" id="footer" style="margin-bottom:0">
  <p>Footer</p>
</div>
</body>
</html>
