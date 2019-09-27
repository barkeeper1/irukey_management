<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	th {
		vertical-align:middle !important;
		text-align:center !important;
	}
	td{
		vertical-align:middle !important;
		margin:auto;
		text-align:center;
	}
	#footer {

    position:absolute;

    bottom:0;

    width:100%;

    height:70px;   

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
		<h5>담당자 정보</h5>
		<table class="table">
			<thead>
				<tr>
					<th>사이트명</th>
					<th>담당자명</th>
					<th>직급</th>
					<th>연락처</th>
					<th>이메일</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
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
</div>
<div class="jumbotron text-center" id="footer" style="margin-bottom:0">
  <p>Footer</p>
</div>
</body>
</html>