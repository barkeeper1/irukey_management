<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	td{
		vertical-align:middle !important;
	}
	#footer {

    position:absolute;

    bottom:0;

    width:100%;

    height:70px;   

	}
	th {
		background-color:lightgray;
	}
</style>
</head>
<body>
<jsp:include page="../menubar.jsp"/>
<div class="container" style="margin-top:30px">
	<h5>모바일 관련 기능</h5>
	<div style="float:right">
		<!-- <button class="btn btn-link" id="add" data-toggle="modal" data-target="#myModal">추가</button> -->
		<button class="btn btn-link" id="update">수정/삭제</button>
	</div>
	<table id="mobile" class="table table-bordered infoTable" style="text-align:center;">
		<colgroup>
			<col width="20%">
			<col width="60%">
			<col width="20%">
		</colgroup>
		<tr>
			<th>기능명</th>
			<th>설명</th>
			<th>기능 유무</th>
		</tr>
		<tr>
			<td>모바일 자동로그인</td>
			<td></td>
			<td>O</td>
		</tr>
		<tr>
			<td>QR코드 자동로그인</td>
			<td></td>
			<td>O</td>
		</tr>
		<tr>
			<td>코드음성 TTS</td>
			<td></td>
			<td>O</td>
		</tr>
		<tr>
			<td>계정명 변경불가</td>
			<td></td>
			<td>O</td>
		</tr>
		<tr>
			<td>ApptoAPP</td>
			<td></td>
			<td>O</td>
		</tr>
		<tr>
			<td>모바일 자동로그인</td>
			<td></td>
			<td>O</td>
		</tr>
		<tr>
			<td>WebtoAPP</td>
			<td></td>
			<td>O</td>
		</tr>
		<tr>
			<td>ID/PWD 계정등록</td>
			<td></td>
			<td>O</td>
		</tr>
		<tr>
			<td>QR코드 계정등록</td>
			<td></td>
			<td>O</td>
		</tr>
		<tr>
			<td>OTID 코드 출력</td>
			<td></td>
			<td>O</td>
		</tr>
		<tr>
			<td>계정 리스트 건너뛰기</td>
			<td></td>
			<td>O</td>
		</tr>
		<tr>
			<td>1분 자동 종료</td>
			<td></td>
			<td>O</td>
		</tr>
		<tr>
			<td>구글 지문인증 API</td>
			<td></td>
			<td>O</td>
		</tr>
		<tr>
			<td>계정재등록 확인 푸시기능</td>
			<td></td>
			<td>O</td>
		</tr>
		<tr>
			<td>인증확인 푸시기능</td>
			<td></td>
			<td>O</td>
		</tr>
		<tr>
			<td>QR코드 인식 라이브러리</td>
			<td></td>
			<td>O</td>
		</tr>
		<tr>
			<td>중국단말기 지원</td>
			<td></td>
			<td>O</td>
		</tr>
	</table>
</div>
<div class="jumbotron text-center" style="margin-bottom:0; margin-top:20px;">
  <p>Footer</p>
</div>
<script>
$("#update").click(function(){
	location.href="${contextPath}/updateMobile.pr";
});
</script>
</html>



















