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
	<h5>모바일 관련 기능 수정/삭제</h5>
	<div style="float:right">
		<button class="btn btn-link" id="update">선택삭제</button>
		<button class="btn btn-link" id="update">완료</button>
	</div>
	<table id="mobile" class="table table-bordered infoTable" style="text-align:center; margin:auto;">
		<colgroup>
			<col width="5%">
			<col width="20%">
			<col width="55%">
			<col width="20%">
		</colgroup>
		<tbody id="list">
			<tr>
				<th><input type="checkbox" class="checkbox" id="all"></th>
				<th>기능명</th>
				<th>설명</th>
				<th>비고</th>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" name="check"></td>
				<td>모바일 자동로그인</td>
				<td><textarea class="form-control"></textarea></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" name="check"></td>
				<td>QR코드 자동로그인</td>
				<td><textarea class="form-control"></textarea></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" name="check"></td>
				<td>코드음성 TTS</td>
				<td><textarea class="form-control"></textarea></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" name="check"></td>
				<td>계정명 변경불가</td>
				<td><textarea class="form-control"></textarea></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" name="check"></td>
				<td>ApptoAPP</td>
				<td><textarea class="form-control"></textarea></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" name="check"></td>
				<td>모바일 자동로그인</td>
				<td><textarea class="form-control"></textarea></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" name="check"></td>
				<td>WebtoAPP</td>
				<td><textarea class="form-control"></textarea></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" name="check"></td>
				<td>ID/PWD 계정등록</td>
				<td><textarea class="form-control"></textarea></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" name="check"></td>
				<td>QR코드 계정등록</td>
				<td><textarea class="form-control"></textarea></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" name="check"></td>
				<td>OTID 코드 출력</td>
				<td><textarea class="form-control"></textarea></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" name="check"></td>
				<td>계정 리스트 건너뛰기</td>
				<td><textarea class="form-control"></textarea></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" name="check"></td>
				<td>1분 자동 종료</td>
				<td><textarea class="form-control"></textarea></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" name="check"></td>
				<td>구글 지문인증 API</td>
				<td><textarea class="form-control"></textarea></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" name="check"></td>
				<td>계정재등록 확인 푸시기능</td>
				<td><textarea class="form-control"></textarea></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" name="check"></td>
				<td>인증확인 푸시기능</td>
				<td><textarea class="form-control"></textarea></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" name="check"></td>
				<td>QR코드 인식 라이브러리</td>
				<td><textarea class="form-control"></textarea></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" name="check"></td>
				<td>중국단말기 지원</td>
				<td><textarea class="form-control"></textarea></td>
				<td></td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="4"><button class="btn btn-dark" id="add">추가하기</button></td>
			</tr>
		</tfoot>
	</table>
</div>
<div class="jumbotron text-center" style="margin-bottom:0; margin-top:20px;">
  <p>Footer</p>
</div>


<script>
$(function(){
	$("#add").click(function(){
		var $tr = $("<tr>");
		var $td = $("<td>");
		var $td1 = $("<td>");
		var $td2 = $("<td>");
		var $td3 = $("<td>");
		var $textarea = $("<textarea class='form-control'></textarea>");
		var $input1 = $("<input type='text' class='form-control'>")
		var $input2 = $("<input type='text' class='form-control'>")
		$td1.append($input1);
		$td2.append($textarea);
		$td3.append($input2);
		$tr.append($td);
		$tr.append($td1);
		$tr.append($td2);
		$tr.append($td3);

		$("#list").append($tr);
	});

	$(document).on("click", "#all", function(){
		if($(this).prop("checked")){
			$("input[name='check']").each(function(){
				$(this).prop("checked", true);
			});
		}else {
			$("input[name='check']").each(function(){
				$(this).prop("checked", false);
			});
		}
	});
});
</script>
</html>



















