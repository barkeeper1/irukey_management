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
	.table-bordered th {
		background-color:lightgray;
		text-align:center !important;
		vertical-align:middle !important;
	}
	td{
		vertical-align:middle !important;
	}
	.title{
		background-color:white;
	}
	.board > tr {
		cursor:pointer;
	}
</style>
</head>
<body>
<jsp:include page="../menubar.jsp"/>
<div class="container" style="margin-top:30px">
	<h2 id="title">OOO프로젝트</h2>
	<a href="#">http://www.ooo.com</a>
	<div class="row" style="margin-top:30px;">
		<h5 class="col-sm-10">구성도</h5>
		<button class="btn btn-link" onclick="location.href='${contextPath}/updateSite.pr'">수정</button>
		<button class="btn btn-link">삭제</button>
		<div style="width:100%; height:600px;" class="border"></div>
		
		<div class="btn-group col-sm" style="margin:10px;">
			<button id="baseInfo" type="button" class="btn btn-outline-secondary col-sm-3">기본정보</button>
			<button id="serverInfo" type="button" class="btn btn-outline-secondary col-sm-3">서버정보</button>
			<button id="webInfo" type="button" class="btn btn-outline-secondary col-sm-3">웹기능관련</button>
			<button id="mobileInfo" type="button" class="btn btn-outline-secondary col-sm-3">모바일 기능정보</button>
			<button id="otherInfo" type="button" class="btn btn-outline-secondary col-sm-3">기타</button>
		</div>
		<table id="baseTable" class="table table-bordered infoTable" style="text-align:center; display:none">
			<colgroup>
				<col width="20%">
				<col width="20%">
				<col width="20%">
				<col width="20%">
			</colgroup>
			<tr>
				<th>고객사명</th>
				<td colspan="3">OOOOOO</td>
			</tr>
			<tr>
				<th>담당자</th>
				<td colspan="3">이지현&nbsp; 외  &nbsp;<a href="#" data-toggle="modal" data-target="#myModal2">5</a>명
			</tr>
			<tr>
				<th>담당자 연락처</th>
				<td>010-0000-0000</td>
				<th>담당자 이메일</th>
				<td>asd@asd.com</td>
			</tr>
			<tr>
				<th>프로젝트 시작일</th>
				<td><input type="text" class="form-control datepicker" name="startDate" value="2019/01/01"></td>
				<th>프로젝트 종료일</th>
				<td><input type="text" class="form-control datepicker" name="endDate" value="2019/01/01"></td>
			</tr>
			<tr>
				<th>유지보수 기간</th>
				<td colspan="3"><input type="text" class="form-control datepicker" name="repairDate" value="2019/01/01"></td>
			</tr>

			
			<tr>
				<th>기타 정보</th>
				<td colspan="3"><textarea class="form-control"></textarea></td>
			</tr>
		</table>
		
		<table id="webTable" class="table table-bordered infoTable" style="text-align:center; display:none">
			<colgroup>
				<col width="20%">
				<col width="20%">
				<col width="20%">
				<col width="20%">
			</colgroup>
			<tr>
				<th>사이트명</th>
				<td colspan="3">OOOOO</td>
			</tr>
			<tr>
				<th>관리도구</th>
				<td>O</td>
				<th>웹소켓</th>
				<td>O</td>
			</tr>
			<tr>
				<th>내부git 소스유무</th>
				<td>O</td>
				<th>소스관리 형태</th>
				<td>내부서버 관리</td>
			</tr>
			<tr>
				<th>DB정보</th>
				<td colspan="3"></td>
			</tr>
			<tr>
				<th>추가기능</th>
				<td colspan="3"></td>
			</tr>
			<tr>
				<th>기타 정보</th>
				<td colspan="3"></td>
			</tr>
		</table>
		
		<table id="serverTable" class="table table-bordered infoTable" style="text-align:center; display:none">
			<colgroup>
				<col width="20%">
				<col width="20%">
				<col width="20%">
				<col width="20%">
			</colgroup>
			<tr>
				<th colspan="4" class="title">서버장비 정보</th>
			</tr>
			<tr>
				<th>서버 모델명</th>
				<td colspan="3">DELL</td>
			</tr>
			<tr>
				<th>OS</th>
				<td colspan="3">CentOS7 64bit</td>
			</tr>
			<tr>
				<th>IP/Hostname</th>
				<td colspan="3">123.456.789</td>
			</tr>
			<tr>
				<th>계정정보</th>
				<td colspan="3">-U root -P 123456</td>
			</tr>
			<tr>
				<th>CPU</th>
				<td>intel</td>
				<th>RAM</th>
				<td>32G</td>
			</tr>
			<tr>
				<th colspan="4" class="title">운영환경 정보</th>
			</tr>
			<tr>
				<th>Irukey 버전</th>
				<td>1.5</td>
				<th>Irukey Root</th>
				<td>/etc/innoaus.grid</td>
			</tr>
			<tr>
				<th>Apache 버전 및 위치</th>
				<td>apache 2.4.41</td>
				<th>Tomcat 버전 및 위치</th>
				<td>Tomcat v8.5</td>
			</tr>
			<tr>
				<th>JDK 버전</th>
				<td>openJDK 1.8</td>
				<th>Database</th>
				<td>postgresql</td>
			</tr>
			<tr>
				<th colspan="4" class="title">로그 정보</th>
			</tr>
			<tr>
				<th>Apache 로그위치</th>
				<td><input type="text" class="form-control"></td>
				<th>Tomcat 로그위치</th>
				<td><input type="text" class="form-control"></td>
			</tr>
			<tr>
				<th>innoaus.grid로그위치</th>
				<td colspan="3"><input type="text" class="form-control"></td>
			</tr>
			<tr>
				<th>기타 정보</th>
				<td colspan="3"><textarea class="form-control"></textarea></td>
			</tr>
		</table>
		
		<table id="mobileTable" class="table table-bordered infoTable" style="text-align:center; display:none">
			<colgroup>
					<col width="50%">
					<col width="50%">
			</colgroup>
			<tr>
				<th>기능명</th>
				<th>기능 유무</th>
			</tr>
			<tr>
				<td>모바일 자동로그인</td>
				<td>O</td>
			</tr>
			<tr>
				<td>QR코드 자동로그인</td>
				<td>O</td>
			</tr>
			<tr>
				<td>코드음성 TTS</td>
				<td>O</td>
			</tr>
			<tr>
				<td>계정명 변경불가</td>
				<td>O</td>
			</tr>
			<tr>
				<td>ApptoAPP</td>
				<td>O</td>
			</tr>
			<tr>
				<td>모바일 자동로그인</td>
				<td>O</td>
			</tr>
			<tr>
				<td>WebtoAPP</td>
				<td>O</td>
			</tr>
			<tr>
				<td>ID/PWD 계정등록</td>
				<td>O</td>
			</tr>
			<tr>
				<td>QR코드 계정등록</td>
				<td>O</td>
			</tr>
			<tr>
				<td>OTID 코드 출력</td>
				<td>O</td>
			</tr>
			<tr>
				<td>계정 리스트 건너뛰기</td>
				<td>O</td>
			</tr>
			<tr>
				<td>1분 자동 종료</td>
				<td>O</td>
			</tr>
			<tr>
				<td>구글 지문인증 API</td>
				<td>O</td>
			</tr>
			<tr>
				<td>계정재등록 확인 푸시기능</td>
				<td>O</td>
			</tr>
			<tr>
				<td>인증확인 푸시기능</td>
				<td>O</td>
			</tr>
			<tr>
				<td>QR코드 인식 라이브러리</td>
				<td>O</td>
			</tr>
			<tr>
				<td>중국단말기 지원</td>
				<td>O</td>
			</tr>
		</table>
		<table id="otherTable" class="table table-bordered infoTable" style="text-align:center;display:none;">
			<colgroup>
				<col width="20%">
				<col width="80%">
			</colgroup>
			<thead>
				<tr>
					<th>항목명</th>
					<th>내용</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>기타사항</td>
					<td>기타사항</td>
				</tr>
			</tbody>
		</table>
		<button class="btn btn-dark" type="button" data-toggle="collapse" data-target="#downloadContents">다운로드</button>
		<div class="collapse col-sm-12" id="downloadContents" style="background:bagie">
			<label>파일명.txt</label> <button class="btn btn-link">다운로드</button>
		</div>
	</div>
</div>
<div class="jumbotron text-center" style="margin-bottom:0; margin-top:20px;">
  <p>Footer</p>
</div>
	
	<!-- 모달 -->
  <div class="modal fade" id="myModal2">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <div class="modal-header">
          <h4 class="modal-title">세부정보</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <div class="modal-body">
          <table class="table table-borderless" style="text-align:center;">
          	<thead>
          		<tr>
          			<th>이름</th>
          			<th>직급</th>
          			<th>연락처</th>
          			<th>이메일</th>
          		</tr>
          	</thead>
          	<tbody>
          		<tr>
          			<td>홍길동</td>
          			<td>사원</td>
          			<td>010-0000-0000</td>
          			<td>hgd1234@kei.com</td>
          		</tr>
          		<tr>
          			<td>홍길동</td>
          			<td>사원</td>
          			<td>010-0000-0000</td>
          			<td>hgd1234@kei.com</td>
          		</tr>
          		<tr>
          			<td>홍길동</td>
          			<td>사원</td>
          			<td>010-0000-0000</td>
          			<td>hgd1234@kei.com</td>
          		</tr>
          	</tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</body>
<script>
$(function(){
	   $('.datepicker').datepicker({
	        calendarWeeks: false,
	        todayHighlight: true,
	        autoclose: true,
	        format: "yyyy/mm/dd",
	        language: "kr"
	   });
	
	$(".infoTable").hide();
	$("#baseTable").show();

	$(document).on("click", ".btn-outline-secondary", function(){
		$(".infoTable").hide();
		console.log($(this).attr("id"));
		switch($(this).attr("id")) {
			case "baseInfo" : 
				$("#baseTable").show();
				break;
			case "serverInfo" : 
				$("#serverTable").show();
				break;
			case "webInfo" : 
				$("#webTable").show();
				break;
			case "mobileInfo" : 
				$("#mobileTable").show();
				break;
			case "otherInfo" : 
				$("#otherTable").show();
				break;
		}
		
	});

});

</script>
</html>



















