<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 - 광고쓰기</title>
</head>
<body>

	<!-- ckEditor --> 
	<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
	<!-- 왼쪽 네비 -->
	<%-- <%@ include file="adminnavi.jsp"%> --%>

	<input type="button" onclick="location.href='./admin_notice.do'" value="공지관리">
	<input type="button" onclick="location.href='./admin_ad.do'" value="광고관리">
	&ensp;|&ensp;&nbsp;<input type="button" onclick="location.href='./admin_member.do'" value="회원관리">
	&ensp;|&ensp;&nbsp;<input type="button" onclick="location.href='./admin_with.do'" value="동행관리">
	<input type="button" onclick="location.href='./admin_review.do'" value="리뷰관리">
	<input type="button" onclick="location.href='./admin_qna.do'" value="Q&A관리">
	&ensp;|&ensp;&nbsp;<input type="button" onclick="location.href='./admin_logout.do'" value="로그아웃">
	<hr/>

	<form method="post" action="admin_ad_add_action.do">
		<table align=center border=1>
			<tr>
				<td>광고제목 </td>
				<td><input type="text" id="adsubject" name="adsubject" size="63"></td>
			</tr>	
			<tr>
				<td>광고내용 </td>
				<td><textarea id="adcontent" name="adcontent" rows="100" cols="100"></textarea>
					<script>	// 글쓰기 editor 및 사진 업로드 기능
						CKEDITOR.replace('adcontent',
						{filebrowserUploadUrl:'./admin_image.do'
						});
					</script>
				</td>
			</tr>
			<tr>
				<td colspan=2 align=center> <input type="submit" value="작성완료"> </td>
			</tr>	
		</table>
	</form>
	
</body>
</html>