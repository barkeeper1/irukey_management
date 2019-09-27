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
		margin:auto;
		text-align:center;
	}
	/* #footer {

    position:absolute;

    bottom:0;

    width:100%;

    height:70px;   

	} */
	.table-bordered th {
		background-color:lightgray;
		text-align:center !important;
		vertical-align:middle !important;
	}
	.title{
		background-color:white;
	}
	svg{
		width:100%;
		height:600px;
	}
	.btn-group > button {
		width:25%;
	}

</style>
<script type="text/javascript" src="${ contextPath }/js/raphael-2.3.0/raphael.js"></script>
<script type="text/javascript" src="${ contextPath }/js/canvg-master/dist/browser/canvg.js"></script>
<script type="text/javascript" src="${ contextPath }/js/canvas2image-master/canvas2image.js"></script>
<script type="text/javascript" src="${ contextPath }/js/html2canvas.js"></script>
</head>
<body>
<jsp:include page="menubar.jsp"/>
<div class="container" style="margin-top:30px">
		<form action="#">
		<div class="row">
			<h5>구성도</h5>
			<div id="drawing" class="border" style="width:100%; height:600px;"></div>
			<div class="btn-group col-sm-12" id="btns1">
				<button id="server" type="button" class="btn btn-light">서버</button>
				<button id="hub" type="button" class="btn btn-light">허브</button>
				<button id="firewall" type="button" class="btn btn-light">방화벽</button>
				<button id="rectang" type="button" class="btn btn-light">사각형</button>
				<input type="file" id="upload" name="upload" style="display:none;">
			</div>
			<div class="btn-group col-sm-12" id="btns2">
				<button id="drawLine" type="button" class="btn btn-light">직선</button>
				<button id="textBox" type="button" class="btn btn-light">텍스트</button>
				<button id="eraser" type="button" class="btn btn-light">선택요소지우기</button>
				<button id="loadImg" type="button" class="btn btn-light" onclick="uploadImg();">업로드</button>
				<input type="file" id="upload" name="upload" style="display:none;">
			</div>
			<p style="color:red;" class="col-sm-12">*왼클릭은 그리기 우클릭은 취소입니다.</p>
			<br>
		</div>
		<div class="btn-group col-sm-12" style="margin:10px;">
			<button id="baseInfo" type="button" class="btn btn-outline-secondary col-sm-3">기본정보</button>
			<button id="serverInfo" type="button" class="btn btn-outline-secondary col-sm-3">서버정보</button>
			<button id="webInfo" type="button" class="btn btn-outline-secondary col-sm-3">웹기능관련</button>
			<button id="mobileInfo" type="button" class="btn btn-outline-secondary col-sm-3">모바일관련</button>
			<button id="otherInfo" type="button" class="btn btn-outline-secondary col-sm-3">기타</button>
		</div>
	<div class="row" style="margin-top:30px;">
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
				<td><input type="checkbox" class="checkbos" name="mobile" value="mobileAutoLogin"></td>
			</tr>
			<tr>
				<td>QR코드 자동로그인</td>
				<td><input type="checkbox" class="checkbos" name="mobile" value="qrAutoLogin"></td>
			</tr>
			<tr>
				<td>코드음성 TTS</td>
				<td><input type="checkbox" class="checkbos" name="mobile" value="tts"></td>
			</tr>
			<tr>
				<td>계정명 변경불가</td>
				<td><input type="checkbox" class="checkbos" name="mobile" value="falseChangeName"></td>
			</tr>
			<tr>
				<td>ApptoAPP</td>
				<td><input type="checkbox" class="checkbos" name="mobile" value="appToapp"></td>
			</tr>
			<tr>
				<td>WebtoAPP</td>
				<td><input type="checkbox" class="checkbos" name="mobile" value="webToapp"></td>
			</tr>
			<tr>
				<td>ID/PWD 계정등록</td>
				<td><input type="checkbox" class="checkbos" name="mobile" value="idpwdJoin"></td>
			</tr>
			<tr>
				<td>QR코드 계정등록</td>
				<td><input type="checkbox" class="checkbos" name="mobile" value="qrJoin"></td>
			</tr>
			<tr>
				<td>OTID 코드 출력</td>
				<td><input type="checkbox" class="checkbos" name="mobile" value="otidCode"></td>
			</tr>
			<tr>
				<td>계정 리스트 건너뛰기</td>
				<td><input type="checkbox" class="checkbos" name="mobile" value="skipList"></td>
			</tr>
			<tr>
				<td>1분 자동 종료</td>
				<td><input type="checkbox" class="checkbos" name="mobile" value="autoClose"></td>
			</tr>
			<tr>
				<td>구글 지문인증 API</td>
				<td><input type="checkbox" class="checkbos" name="mobile" value="googleAPI"></td>
			</tr>
			<tr>
				<td>계정재등록 확인 푸시기능</td>
				<td><input type="checkbox" class="checkbos" name="mobile" value="rejoinPush"></td>
			</tr>
			<tr>
				<td>인증확인 푸시기능</td>
				<td><input type="checkbox" class="checkbos" name="mobile" value="confirmPush"></td>
			</tr>
			<tr>
				<td>QR코드 인식 라이브러리</td>
				<td><input type="checkbox" class="checkbos" name="mobile" value="qrLib"></td>
			</tr>
			<tr>
				<td>중국단말기 지원</td>
				<td><input type="checkbox" class="checkbos" name="mobile" value="chinaSupport"></td>
			</tr>
		</table>
		<table id="baseTable" class="table table-bordered infoTable" style="text-align:center; display:none">
			<colgroup>
				<col width="25%">
				<col width="25%">
				<col width="25%">
				<col width="25%">
			</colgroup>
			<tr>
				<th>고객사명</th>
				<td colspan="3"><input type="text" class="form-control" name="customerName"></td>
			</tr>
			<tr>
				<th>담당자</th>
				<td colspan="3"><button id="manager" type="button" class="btn btn-dark" data-toggle="modal" data-target="#myModal">추가하기</button></td>
			</tr>
			<tr>
				<th>프로젝트 시작일</th>
				<td><input type="text" class="form-control datepicker" name="startDate"></td>
				<th>프로젝트 종료일</th>
				<td><input type="text" class="form-control datepicker" name="endDate"></td>
			</tr>
			<tr>
				<th>유지보수 기간</th>
				<td colspan="3"><input type="text" class="form-control datepicker" name="repairDate" ></td>
			</tr>
			
			<tr>
				<th>비고</th>
				<td colspan="3"><textarea class="form-control" name="extraBaseInfo"></textarea></td>
			</tr>
		</table>
		<table id="webTable" class="table table-bordered infoTable" style="text-align:center; display:none">
			<colgroup>
				<col width="25%">
				<col width="25%">
				<col width="25%">
				<col width="25%">
			</colgroup>
			<tr>
				<th>사이트명</th>
				<td colspan="3"><input type="text" class="form-control" name="siteName"></td>
			</tr>
			<tr>
				<th>관리도구</th>
				<td><input type="text" class="form-control" name="manageTool"></td>
				<th>웹소켓</th>
				<td><input type="text" class="form-control" name="socket"></td>
			</tr>
			<tr>
				<th>내부git 소스유무</th>
				<td>
					<select class="form-control">
						<option>유</option>
						<option>무</option>		
					</select>
				</td>
				<th>소스관리 형태</th>
				<td><input type="text" class="form-control"></td>
			</tr>
			<tr>
				<th>DB정보</th>
				<td colspan="3"><input type="text" class="form-control" name="dbInfo"></td>
			</tr>
			<tr>
				<th>추가기능</th>
				<td colspan="3"><input type="text" class="form-control" name="addtionnal"></td>
			</tr>
			<tr>
				<th>비고</th>
				<td colspan="3"><textarea class="form-control"></textarea></td>
			</tr>
		</table>
		
		<table id="serverTable" class="table table-bordered infoTable" style="text-align:center; display:none">
			<colgroup>
				<col width="25%">
				<col width="25%">
				<col width="25%">
				<col width="25%">
			</colgroup>
			<tr>
				<td colspan="4" class="title">서버장비 정보</td>
			</tr>
			<tr>
				<th>서버 모델명</th>
				<td colspan="3"><input type="text" class="form-control" name="modelName"></td>
			</tr>
			<tr>
				<th>OS</th>
				<td colspan="3"><input type="text" class="form-control" name="os"></td>
			</tr>
			<tr>
				<th>IP/Hostname</th>
				<td colspan="3"><input type="text" class="form-control" name="ip"></td>
			</tr>
			<tr>
				<th>계정정보</th>
				<td colspan="3"><input type="text" class="form-control" name="account"></td>
			</tr>
			<tr>
				<th>CPU</th>
				<td><input type="text" class="form-control" name="cpu"></td>
				<th>RAM</th>
				<td><input type="text" class="form-control" name="ram"></td>
			</tr>
			<tr>
				<td colspan="4" class="title">운영환경 정보</td>
			</tr>
			<tr>
				<th>Irukey 버전</th>
				<td><input type="text" class="form-control" name="version"></td>
				<th>Irukey Root</th>
				<td><input type="text" class="form-control" name="irukeyRoot"></td>
			</tr>
			<tr>
				<th>Apache 버전 및 위치</th>
				<td><input type="text" class="form-control" name="apache"></td>
				<th>Tomcat 버전 및 위치</th>
				<td><input type="text" class="form-control" name="tomcat"></td>
			</tr>
			<tr>
				<th>JDK 버전</th>
				<td><input type="text" class="form-control" name="jdk"></td>
				<th>Database</th>
				<td><input type="text" class="form-control" name="database"></td>
			</tr>
			<tr>
				<td colspan="4" class="title">로그 정보</td>
			</tr>
			<tr>
				<th>Apache 로그위치</th>
				<td><input type="text" class="form-control" name="apacheLog"></td>
				<th>Tomcat 로그위치</th>
				<td><input type="text" class="form-control" name="tomcatLog"></td>
			</tr>
			<tr>
				<th>innoaus.grid로그위치</th>
				<td colspan="3"><input type="text" class="form-control" name="innoaus"></td>
			</tr>
			<tr>
				<th>비고</th>
				<td colspan="3"><textarea class="form-control"></textarea></td>
			</tr>
		</table>
		<table id="otherTable" class="table table-bordered infoTable" style="text-align:center;display:none;">
			<colgroup>
				<col width="25%">
				<col width="75%">
			</colgroup>
			<thead>
				<tr>
					<th>항목명</th>
					<th>내용</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2">
						<button type="button" class="btn btn-light col-sm-5" id="addOtherInfo"><font size="5">+</font></button>
						<button type="button" class="btn btn-secondary col-sm-5" id="deleteOtherInfo"><font size="5">-</font></button>
					</td>
				</tr>
			</tfoot>
		</table>
		<div class="col-sm-12 fileSection">
			<div class="custom-file">
			    <input type="file" class="custom-file-input" id="file" name="files">
			    <label class="custom-file-label" for="file" id="filename">파일을 선택하세요</label>
		    </div>
	    </div>
		    <button type="button" class="btn btn-block btn-light" id="addNewFile">첨부파일 추가</button>
		    <button type="button" class="btn btn-block btn-secondary" id="deleteFile" style="margin-bottom:10px;">첨부파일 삭제</button>
		    
			<button type="submit" class="btn btn-dark">작성완료</button>&nbsp;&nbsp;
			<button type="button" class="btn btn-secondary" onclick="cancle();">취소</button>
		</div>
	</form>
</div>
<div class="jumbotron text-center" style="margin-bottom:0; margin-top:20px;">
  <p>Footer</p>
</div>

<div id="myModal" class="modal fade" align="center">
  <div class="modal-dialog">			
    Modal content
    <div class="modal-content" style="width:800px;">
      <div class="modal-header">
        <h4 class="modal-title">담당자 추가</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body row" style="height:100%; width:100%;">
      	<table class="table" align="center" id="managerTable">
      		<colgroup>
      			<col width="20%">
      			<col width="15%">
      			<col width="25%">
      			<col width="30%">
      			<col width="10%">
      		</colgroup>
      		<thead>
      			<tr>
	      			<th>이름</th>
	      			<th>직급</th>
	      			<th>연락처</th>
	      			<th>이메일</th>
	      			<th>총괄</th>
      			</tr>
      		</thead>
      		<tbody>
      			<tr>
      				<td><input type="text" class="form-control" name="managerName"></td>
      				<td><input type="text" class="form-control" name="managerJob"></td>
      				<td><input type="text" class="form-control" name="managerTel"></td>
      				<td><input type="text" class="form-control" name="managerEmail"></td>
      				<td><input type="radio" name="choice" value="0" checked></td>
      			</tr>
      		</tbody>
      		<tfoot>
      			<tr>
      				<td colspan="5">
	      				<button type="button" class="btn btn-light col-sm-5" id="addManager">+</button>
	      				<button type="button" class="btn btn-secondary col-sm-5" id="deleteManager">-</button>
      				</td>
      			</tr>
      		</tfoot>
      	</table>
     </div>
	     <div class="modal-footer">
	     	<button type="button" class="btn btn-dark" id="insertManager" data-dismiss="modal">추가하기</button>
   			<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>		
		</div>
	</div>
	</div>
 </div>
</body>
<script type="text/javascript" src="${ contextPath }/js/writeNewDcm.js"></script>
<script type="text/javascript" src="${ contextPath }/js/drawDiagram.js"></script>
<script type="text/javascript">
    $(function(){
        $('.datepicker').datepicker({
            calendarWeeks: false,
            todayHighlight: true,
            autoclose: true,
            format: "yyyy/mm/dd",
            language: "kr"
        });
    });
    
</script>
</html>










