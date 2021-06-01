<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	 <!-- HEADER -->
	 <%@include file ="/Common/header.jsp" %>



	<!--=== Content Part ===-->
    <div class="container content-sm">
    <div class="col-md-10 col-md-offset-1">
    <div class="headline"><h2>게시판</h2></div>
    </div>
    <div class="row">
    	<div class="col-md-10 col-md-offset-1">
			<table class="table" style="text-align: center;">
				<thead >
					<tr class="active">
							<th colspan="3"	style="background-color: #eeeeee; text-align: center;"><font color="black" size="5pt">게시판 보기</font></th>
					</tr>
				</thead>
					<tbody>
						<tr>
							<td style="width: 20%;"><font color="black" size="3pt">글제목</font></td>
							<td colspan="2"><font color="black" size="3pt">${Board.title}</font></td>
						</tr>

						<tr>
							<td><font color="black" size="3pt">작성일</font></td>
							<td colspan="2"><font color="black" size="3pt">${Board.sysdate}</font></td>
						</tr>
						<tr>
							<td><font color="black" size="3pt">내용</font></td>
							<td colspan="2" style="min-height: 200px; text-align: left;"><p style="white-space: pre-line;"><font color="black" size="3pt" >${Board.content}</font></p></td>
						</tr>
					</tbody>
			</table>

			<div class="col-md-2 col-md-offset-6">
				<input type="button" class="btn-u btn-block btn-u-green" value="목록" onclick="location.href='${pageContext.request.contextPath}/Board/list.do' ">
			</div>
			<c:if test="${!empty sessionScope.loginAdmin}">
				<div class="col-md-2">
					<input type="button" class="btn-u btn-block btn-u-green" value="수정" onclick="location.href='${pageContext.request.contextPath}/Board/update.do?num=${Board.number}' ">
				</div>
				<div class="col-md-2">
					<input type="button" class="btn-u btn-block btn-u-green" value="삭제" onclick="del(${Board.num})">
				</div>
			</c:if>

		</div>
	</div>
   </div><!--/container content-sm-->


<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
    });

	function del(num) {
		var chk = confirm("정말 삭제하시겠습니까?");
		if (chk) {
			location.href='${pageContext.request.contextPath}/Board/delete.do?num='num;
		}
	}

</script>

</body>

	<!-- FOOTER -->
	<%@include file ="/Common/footer.jsp" %>

