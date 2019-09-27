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
	<h5>유저 리스트</h5>
	<div style="float:right">
		<button class="btn btn-link" id="delete">선택삭제</button>
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
				<th>유저ID</th>
				<th>이름</th>
				<th>직급</th>
			</tr>
		</tbody>
	</table>
</div>
<div class="jumbotron text-center" id="footer" style="margin-bottom:0;">
  <p>Footer</p>
</div>


<script>
$(function(){
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

	$(document).on("click", "#delete", function(){
		if(confirm("정말로 삭제하시겠습니까?")){
			alert("삭제되었습니다");
		}
	});
});
</script>
</html>



















