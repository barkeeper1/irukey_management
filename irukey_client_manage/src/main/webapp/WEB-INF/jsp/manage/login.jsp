<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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
		<div class="border row col-sm-8" style="height:400px;">
		  	<form action="" class="col-sm-12">
				<h3 align="center" class="col-sm-12" style="margin-top:50px;">Login</h3>
		  		<div class="form-gorup col-sm-12">
		  			<label for="userid">ID : </label>
		  			<input type="text" class="form-control" id="userid" name="userid">
		  		</div>
		  		<div class="form-gorup col-sm-12">
		  			<label for="userpwd">Password : </label>
		  			<input type="password" class="form-control" id="userpwd" name="userpwd">
		  		</div>
		  		<div class="form-group col-sm-12" style="margin-top:20px;">
		  			<button class="btn btn-dark" type="submit">Login</button>
		  			<button class="btn btn-secondary" type="button" onclick="location.href='${contextPath}/joinForm.pr'">Join</button>
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