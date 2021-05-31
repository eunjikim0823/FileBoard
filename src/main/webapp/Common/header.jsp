<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다;
              어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->

	<!-- 부트스트랩/글씨체 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


    <!-- 자바스크립트 라이브러리 -->
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
   <!--  <script src="js/bootstrap.min.js"></script> -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

    <!-- CSS 파일   -->
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Header.css">

   <title>홈꾸미기</title>

  	<!-- 헤더영역------------------------------------------------- -->

	    	<div class="container">
				<ul class="nav nav-tabs col-md-8 col-sm-8">
					<li class="icon"><a href="${pageContext.request.contextPath}/View/Content/Main.jsp"><img src="${pageContext.request.contextPath}/picture/home.png" class="img-rounded img-responsive" width="50" height="50"></a></li>
					<li class="contents"><h2><a href="${pageContext.request.contextPath}/View/Content/Content_list.do">홈꾸집들이 컨텐츠</a></h2></li>
					<li class="free_board"><h2><a href="${pageContext.request.contextPath}/View/Board/list.do">커뮤니티</a></h2></li>
					<li class="store"><h2><a href="${pageContext.request.contextPath}/View/shopping/index2.jsp">스토어</a></h2></li>
			   	</ul>
			   		 <!--검색창-->
			 	<div class="col-md-4 col-sm-4">
       				<table class="top"width="130" height="40">
            			<tr>
            			<td><a href="${pageContext.request.contextPath}/View//Join/login.jsp" class="text-danger">로그인</a></td>
            			 <td><a href="${pageContext.request.contextPath}/View//Join/join.jsp" class="text-danger">회원가입</a></td>
            			 </tr>
      				</table>

		             <form class="navbar-form navbar-right search " role="search">
		                 <div class="form-group">
		                    <input type="text" class="form-control" placeholder="item name search">
		                 </div>
		                    <button type="button" class="btn btn-default">
		                    <span style="color:red"><i class="fa fa-search" aria-hidden="true"></i></span>
		                    </button>
		             </form>
		    	</div>
			</div><!-- class="container"-->
	<!-- /헤더영역 -->

 </head>

