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
</style>
</head>
<body>
<jsp:include page="menubar.jsp"/>
<div class="container" style="margin-top:30px">
	<div class="row" style="margin-top:70px;">
		<div class="col-sm-2"></div>
		<div class="border row col-sm-8" style="height:100%;">
		  	<form action="" class="col-sm-12">
				<h3 align="center" class="col-sm-12" style="margin-top:50px;">회원추가</h3>
		  		<div class="form-gorup col-sm-12">
		  			<label for="userid">ID : </label>
		  			<input type="text" class="form-control" id="userid" name="userid">
		  		</div>
		  		<div class="form-gorup col-sm-12">
		  			<label for="userpwd">Password : </label>
		  			<input type="password" class="form-control" id="userpwd" name="userpwd">
		  			<label for="userpwd">Password2 : </label>
		  			<input type="password" class="form-control" id="userpwd2" name="userpwd">
		  		</div>
		  		<div class="form-gorup col-sm-12">
		  			<label for="userpwd">Name : </label>
		  			<input type="text" class="form-control" id="username" name="username">
		  		</div>
		  		<div class="form-gorup col-sm-12">
		  			<label for="userpwd">Job : </label>
		  			<input type="text" class="form-control" id="username" name="username">
		  		</div>
		  		<div class="form-gorup col-sm-12">
		  			<label for="userpwd">Tel : </label>
		  			<input type="tel" class="form-control" id="username" name="username">
		  		</div>
		  		<div class="form-group col-sm-12" style="margin-top:20px;">
		  			<button class="btn btn-dark" type="submit">가입하기</button>
		  			<button class="btn btn-secondary" type="button" onclick="history.back()">취소</button>
		  		</div>
	 	 	</form>
	  	</div>
		<div class="col-sm-2"></div>
	</div>
</div>
<div class="jumbotron text-center" id="footer" style="margin-bottom:0">
  <p>Footer</p>
</div>
</body>
</html>