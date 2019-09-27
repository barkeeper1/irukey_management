<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.btn{
		margin:3px;
	}
	h5{
		margin:3px;
	}
	
	#footer {

    position:absolute;

    bottom:0;

    width:100%;

    height:70px;   

	}
</style>
</head>
<body>
<jsp:include page="../menubar.jsp"/>
<div class="container" style="margin-top:30px;">
	<div class="row">
		<div class="col-sm-12">
			<button class="btn btn-info col-sm-3" id="createUser">계정추가</button>
			<label class="col-sm-8">새로운 계정을 추가합니다.</label>
			<button class="btn btn-info col-sm-3" id="deleteUser">계정삭제</button>
			<label class="col-sm-8">기존 계정들 중 선택하여 삭제합니다.</label>
			<button class="btn btn-info col-sm-3" id="addMobile">모바일 기능 리스트</button>
			<label class="col-sm-8">사이트현황 모바일기능 리스트를 불러옵니다.</label>
		</div>
	</div>
	<h5 class="col-sm-12" style="margin-top:20px;">최근 활동</h5>
	<div class="media border p-3">
	    <div class="media-body">
	      <h5>이지현 <small style="float:right;">2019-09-09</small></h5>
	      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>      
	    </div>
    </div>
  	 <div class="media border p-3">
	    <div class="media-body">
	      <h5>이지현 <small style="float:right;">2019-09-09</small></h5>
	      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>      
	    </div>
    </div>
</div>	
<div class="jumbotron text-center" id="footer" style="margin-bottom:0; margin-top:20px;">
  <p>Footer</p>
</div>
</body>
<script>
$(function(){
	$(document).on("click", "#addMobile", function(){
		location.href="${contextPath}/addMobile.pr";
	});
	$(document).on("click", "#createUser", function(){
		location.href="${contextPath}/createUser.pr";
	});
	$(document).on("click", "#deleteUser", function(){
		location.href="${contextPath}/deleteUser.pr";
	});
});
</script>
</html>
































