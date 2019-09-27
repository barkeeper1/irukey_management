<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/css/jquery-ui.min.css">
<script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
<script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<script src="${ contextPath }/js/bootstrap-datepicker.kr.js" charset="UTF-8"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="${ contextPath }/main.pr">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
	      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
	        	사이트 현황
	      </a>
	      <div class="dropdown-menu">
	        <a class="dropdown-item" href="${ contextPath }/siteDetail.pr">Link 1</a>
	        <a class="dropdown-item" href="#">Link 2</a>
	        <a class="dropdown-item" href="#">Link 3</a>
	      </div>
  	  </li>
  	  <li class="nav-item">
        <a class="nav-link" href="${contextPath}/maintenanceList.pr">유지보수내역</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${ contextPath }/managerDetail.pr">담당자 정보</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${contextPath}/writeNew.pr">신규 작성</a>
       </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <button class="btn btn-success" type="button" onclick="location.href='${contextPath}/login.pr'">로그인</button>
      <button class="btn btn-warning" type="button" style="margin-left:5px; color:white;" onclick="location.href='${contextPath}/adminPage.pr'">관리자페이지</button>
    </form>
  </div>  
</nav>

</body>
