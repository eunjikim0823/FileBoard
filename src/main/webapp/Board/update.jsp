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
								<th colspan="3"	style="background-color: #eeeeee; text-align: center;"><font color="black" size="5pt">수정하기</font></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="width: 20%;"><font color="black" size="3pt">글제목</font></td>
							<td><input type="text" id="title" name="title" value="${Board.title}" class="form-control"></td>
						</tr>
						<tr>
							 <td><font color="black" size="3pt">내용</font></td>
							 <td><textarea id="content" name="content" class="form-control" rows="50" cols="50">${Board.content}</textarea></td>
						</tr>
					</tbody>
					<input type="hidden" name="number" value="${Boardnumber}">
				</table>

	            <div class="col-md-2 col-md-offset-8">
	                <input type="button" onclick="boardUpdateValidation()" class="btn-u btn-block btn-u-green" value="수정하기 ">
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
    jQuery(document).ready(function() {
      	App.init();
    });

    function boardUpdateValidation(){
    	var title = $("#title").val();
    	var content = $("#content").val();

    	if(!title){
    		alert("글 제목은 필수로 입력하셔야 입니다.");
    		$("#title").focus();
    	}else if(!content){
    		alert("글 내용은 필수로 입력하셔야 합니다.");
    		$("#content").focus();
    	}else {
    		boardUpdate();
    	}
    }

    function boardUpdate(){
    	$.ajax({
    		url : "${pageContext.request.contextPath}/Board/update.do",
    		type:'POST',
    		data :  $("#updateform").serialize(),
    		success:function(data){
    			if(data == "success"){
    				alert("게시물이 수정되었습니다");
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

