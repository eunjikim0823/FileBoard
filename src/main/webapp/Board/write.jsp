<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	 <!-- HEADER -->
	 <%@include file ="/Common/header.jsp" %>

	<!--=== Content Part ===-->
    <div class="container content-sm">
	    <div class="col-md-10 col-md-offset-1">
		    <div class="headline">
		   		<h2>글쓰기</h2>
		    </div>
	    </div>

	    <form method="post" action="Board/write.do" id="registerform" >
	    <div class="row">
	    	<div class="col-md-10 col-md-offset-1">
					<table class="table" style="text-align: center;">
					<thead >
						<tr class="active">
							<th colspan="3"	style="background-color: #eeeeee; text-align: center;"><font color="black" size="5pt">게시판 작성하기</font></th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td style="width: 20%;"><font color="black" size="3pt">글제목</font></td>
							<td><input type="text" id="title" name="title" class="form-control"></td>
						</tr>

						<tr>
							 <td><font color="black" size="3pt">내용</font></td>
							 <td><textarea id="content" name="content" class="form-control" rows="50" cols="50"></textarea></td>
						</tr>
					</tbody>
			</table>
			<input type="hidden" name="admin_id" value="${sessionScope.login.id}">

			 <div class="col-md-2 col-md-offset-6">
			    	<input type="button" onclick="boardResgisterValidation()" class="btn-u btn-block btn-u-green" value="작성 하기 ">
			 </div>
			 <div class="col-md-2">
			         <input type="reset" class="btn-u btn-block btn-u-green" value="초기화">
			  </div>
			  <div class="col-md-2">
				   	 <input type="button" class="btn-u btn-block btn-u-green" value="목록" onclick="location.href='${pageContext.request.contextPath}/Board/list.do' ">
			  </div>
			</div>
		</div>
		</form>
    </div><!--/container content-sm-->
    <!-- End Content Part -->

</div><!--/wrapper-->




<script type="text/javascript">

    function boardResgisterValidation(){
    	var title = $("#title").val();
    	var content = $("#content").val();

    	if(!title){
    		alert("글 제목은 필수로 입력하셔야 입니다.");
    		$("#title").focus();
    	}else if(!content){
    		alert("글 내용은 필수로 입력하셔야 합니다.");
    		$("#content").focus();
    	}else {
    		boardRegister();
    	}
    }

    function boardRegister(){
    	$.ajax({
    		url : "${pageContext.request.contextPath}/Board/write.do",
    		type:'POST',
    		data :  $("#registerform").serialize(),
    		success:function(data){
    			if(data == "success"){
    				alert("게시물이 등록되었습니다.");
    				location.href = "${pageContext.request.contextPath}/Board/list.do"
    			}
    			return false;
    		}
    	})
    }
</script>

</body>



	<!-- FOOTER -->
	<%@include file ="/Common/footer.jsp" %>



