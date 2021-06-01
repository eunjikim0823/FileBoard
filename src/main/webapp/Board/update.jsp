<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

   	<!-- HEADER -->
	 <%@include file ="/Common/header.jsp" %>

	<!--=== Content Part ===-->
    <div class="container content-sm">
    <div class="col-md-10 col-md-offset-1">
	    <div class="headline">
	    	<h2>게시판</h2>
	    </div>
    </div>
    <form method="post" action="Board/update.do" id="updateform" >
	    <div class="row">
	    	<div class="col-md-10 col-md-offset-1">
				<table class="table" style="text-align: center;">
					<thead >
						<tr class="active">
								<th colspan="3"	style="background-color: #eeeeee; text-align: center;"><font color="black" size="5pt">공지사항 수정하기</font></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="width: 20%;"><font color="black" size="3pt">글제목</font></td>
							<td><input type="text" id="notice_title" name="notice_title" value="${notice.notice_title}" class="form-control"></td>
						</tr>
						<tr>
							 <td><font color="black" size="3pt">내용</font></td>
							 <td><textarea id="notice_content" name="notice_content" class="form-control" rows="50" cols="50">${notice.notice_content}</textarea></td>
						</tr>
					</tbody>
					<input type="hidden" name="notice_number" value="${notice.notice_number}">
				</table>

	            <div class="col-md-2 col-md-offset-8">
	                <input type="button" onclick="noticeUpdateValidation()" class="btn-u btn-block btn-u-green" value="수정하기 ">
	            </div>
	            <div class="col-md-2">
	                <input type="button" class="btn-u btn-block btn-u-green" value="목록" onclick="location.href='${pageContext.request.contextPath}/notice/list.do' ">
			 	</div>
            </div>
		</div>
	</form>
    </div><!--/container content-sm-->
    <!-- End Content Part -->

    <!--===========================

  	   Footer 하단시작이요오

    =============================-->
    <div id="footer-v2" class="footer-v2">
        <div class="footer">
            <div class="container">
                <div class="row">
                    <!-- About -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <a class="logo" href="${pageContext.request.contextPath}/main.do">
                		<img src="${pageContext.request.contextPath}/assets/logoimg/MainLogo.png" alt="Logo" width="180">
            			</a>
                        <p class="margin-bottom-20"><p>Study from Anywhere!<br> 원하는 곳에서 스터디 하세요.<br>
                        	GatherStudy는 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 GatherStudy는 공간 거래정보 및 거래에 대해 책임지지 않습니다.</p>
                    </div>
                    <!-- End About -->

                    <!-- Link List -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="headline"><h2 class="heading-sm">Useful Links</h2></div>
                        <ul class="list-unstyled link-list">
                            <li><a href="${pageContext.request.contextPath}/main.do">HOME</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="${pageContext.request.contextPath}/notice/list.do">공지 사항</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="${pageContext.request.contextPath}/cafe/list.do">카페 구경하기</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="${pageContext.request.contextPath}/findMember/list.do">멤버 구하기</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="${pageContext.request.contextPath}/help/list.do">도움말</a><i class="fa fa-angle-right"></i></li>
                        </ul>
                    </div>
                    <!-- End Link List -->

                    <!-- Blog Tweets -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="latest-tweets">
                            <div class="headline"><h2 class="heading-sm">Latest Tweets</h2></div>
                            <div class="latest-tweets-inner">
                                <i class="fa fa-twitter"></i>
                                <p>
                                    <a href="#">@htmlstream</a>
                                    예약이 간편해서 좋았습니다.
                                    <a href="#">http://t.co/sBav7dm</a>
                                    <small class="twitter-time">2 hours ago</small>
                                </p>
                            </div>
                            <div class="latest-tweets-inner">
                                <i class="fa fa-twitter"></i>
                                <p>
                                    <a href="#">@user</a>
                                    후기가 좋았고 스터디원을 구하기 편했습니다.
                                    <a href="#">http://t.co/sBav7dm</a>
                                    <small class="twitter-time">4 hours ago</small>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- End Latest Tweets -->

                    <!-- Address -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="headline"><h2 class="heading-sm">Contact Us</h2></div>
                        <address class="md-margin-bottom-40">
                            <i class="fa fa-home"></i>서울특별시 강남구 테헤란로11 세경빌딩 3층 <br />
                            <i class="fa fa-phone"></i>Phone: 010 1234 5678 <br />
                            <i class="fa fa-globe"></i>Website: <a href="#">www.GatherStudy.com</a> <br />
                            <i class="fa fa-envelope"></i>Email: <a href="GatherStudy@naver.com">GatherStudy@naver.com</a>
                        </address>
                    </div>
                    <!-- End Address -->
                </div>
            </div>
        </div><!--/footer-->

        <div class="copyright">
            <div class="container">
                <p class="text-center">2015 &copy; All Rights Reserved. Unify Theme by <a target="_blank" href="https://twitter.com/htmlstream">Htmlstream</a></p>
            </div>
        </div><!--/copyright-->
    </div>
    <!--=======================

     				Footer 하단끝끝

	========================-->
</div><!--/wrapper-->


<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
    });

    function noticeUpdateValidation(){
    	var title = $("#notice_title").val();
    	var content = $("#notice_content").val();

    	if(!title){
    		alert("글 제목은 필수로 입력하셔야 입니다.");
    		$("#notice_title").focus();
    	}else if(!content){
    		alert("글 내용은 필수로 입력하셔야 합니다.");
    		$("#notice_content").focus();
    	}else {
    		noticeUpdate();
    	}
    }

    function noticeUpdate(){
    	$.ajax({
    		url : "${pageContext.request.contextPath}/notice/update.do",
    		type:'POST',
    		data :  $("#updateform").serialize(),
    		success:function(data){
    			if(data == "success"){
    				alert("공지사항이 수정되었습니다.^^");
    				location.href = "${pageContext.request.contextPath}/notice/list.do"
    			}
    			return false;
    		}
    	})
    }
</script>


</body>


	<!-- FOOTER -->
	<%@include file ="/Common/footer.jsp" %>

