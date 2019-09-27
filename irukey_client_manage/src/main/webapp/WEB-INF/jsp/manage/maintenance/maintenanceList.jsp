<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#footer {

    position:absolute;

    bottom:0;

    width:100%;

    height:70px;   

	}
	tbody > tr {
		cursor:pointer;
	}
	.page-item > a{
		color:black !important;
	}
</style>
</head>
<body>
<jsp:include page="../menubar.jsp"/>
<div class="container" style="margin-top:30px">
	<div class="row">
		<select class="form-control" style="margin:5px;">
			<option>-----사이트명-----</option>
		</select>
		<table class="table" style="text-align:center;">
			<thead>
				<tr>
					<th>글번호</th>
					<th>사이트명</th>
					<th>담당자명</th>
					<th>작성일</th>
					<th>유형</th>
				</tr>
			</thead>
			<tbody>
				<tr onclick="location.href='${contextPath}/maintenanceDetail.pr'">
					<td>1</td>
					<td>OOOO</td>
					<td>이지현</td>
					<td>2019-09-05</td>
					<td>정기점검</td>
				</tr>
			</tbody>
		</table>
	</div>
	<ul class="pagination justify-content-center">
	  <li class="page-item"><a class="page-link" href="#">Previous</a></li>
	  <li class="page-item"><a class="page-link" href="#">1</a></li>
	  <li class="page-item"><a class="page-link" href="#">2</a></li>
	  <li class="page-item"><a class="page-link" href="#">3</a></li>
	  <li class="page-item"><a class="page-link" href="#">Next</a></li>
	</ul>	
	<button class="btn btn-dark" style="margin:5px; float:right;">작성하기</button>
</div>
<div class="jumbotron text-center" id="footer" style="margin-bottom:0">
  <p>Footer</p>
</div>
</body>
<script>
	
</script>
</html>