<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	th {
		background-color:lightgray;
	}
	.title{
		background-color:white;
	}
</style>
</head>
<body>
	<jsp:include page="../menubar.jsp"/>
	<div class="container" align="center" style="margin-top:20px;">
		<h2>시스템 정기점검 결과서</h2>
		<br>
		<h5 align="left"><b>개요</b></h5>
		<table class="table table-bordered">
			<colgroup>
				<col width="20%">
				<col width="30%">
				<col width="20%">
				<col width="30%">
			</colgroup>
			<tr>
				<th>고객사명</th>
				<td colspan="3">OOO</td>
			</tr>
			<tr>
				<th>기술지원 작업명</th>
				<td colspan="3">OOO</td>
			</tr>
			<tr>
				<th>작업요청자</th>
				<td>OOO</td>
				<th>작업요청일</th>
				<td>0000-00-00</td>
			</tr>
			<tr>
				<th>운영담당자</th>
				<td>OOO</td>
				<th>작업종료일</th>
				<td>0000-00-00</td>
			</tr>
			<tr>
				<th>점검유형</th>
				<td>OOO</td>
				<th>유지보수 유형</th>
				<td>유상</td>
			</tr>
			<tr>
				<th>유지보수 만료일</th>
				<td colspan="3">0000-00-00</td>
			</tr>
		</table>
		<h5 align="left"><b>작업내용</b></h5>
		<table class="table table-bordered" style="text-align:center">
			<colgroup>
				<col width="20%">
				<col width="30%">
				<col width="20%">
				<col width="30%">
			</colgroup>
			<tr>
				<th colspan="4" class="title">시스템정보</th>
			</tr>
			<tr>
				<th>어플리케이션</th>
				<td>Irukey</td>
				<th>대상서버명</th>
				<td>OOOO</td>
			</tr>
			<tr>
				<th>OS</th>
				<td colspan="3">OOOO</td>
			</tr>
			<tr>
				<th>대상 장비명(H/W)</th>
				<td colspan="3">OOOO</td>
			</tr>
			<tr>
				<th>유지보수담당자</th>
				<td colspan="3">OOOO</td>
			</tr>
			<tr>
				<th>CPU</th>
				<td>OOOO</td>
				<th>RAM</th>
				<td>32G</td>
			</tr>
			<tr>
				<th colspan="4" class="title">운영환경정보</th>
			</tr>
			<tr>
				<th>제품명</th>
				<td>Irukey</td>
				<th>제품버전</th>
				<td>OOOO</td>
			</tr>
			<tr>
				<th>DB</th>
				<td>OOOO</td>
				<th>DB Source명</th>
				<td>rainpass</td>
			</tr>
			<tr>
				<th>openssl버전</th>
				<td colspan="3">OOOO</td>
			</tr>
			<tr>
				<th>ntp버전</th>
				<td colspan="3">OOOO</td>
			</tr>
			<tr>
				<th>Irukey Root DIR</th>
				<td colspan="3">OOOO</td>
			</tr>
			<tr>
				<th>Application Log</th>
				<td colspan="3">OOOO</td>
			</tr>
			<tr>
				<th>Service Name</th>
				<td colspan="3">OOOO</td>
			</tr>
			<tr>
				<th>HostName/IP WAS</th>
				<td colspan="3">OOOO</td>
			</tr>
			<tr>
				<th>HostName/IP DB</th>
				<td colspan="3">OOOO</td>
			</tr>
			<tr>
				<th>Irukey License</th>
				<td colspan="3">OOOO</td>
			</tr>
			<tr>
				<th colspan="4" class="title">점검결과</th>
			</tr>
			<tr>
				<th>이상유무</th>
				<td colspan="3"></td>
			</tr>
			<tr>
				<th>종합의견</th>
				<td colspan="3"></td>
			</tr>
		</table>
	</div>
	
<div class="jumbotron text-center" id="footer" style="margin-bottom:0; margin-top:50px;">
	<p>Footer</p>
</div>
</body>
</html>




















