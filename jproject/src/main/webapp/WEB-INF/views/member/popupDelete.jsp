<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:If test="${result > 0 }">
	<script>
	alert("JEJU FRIEND에서 탈퇴되었습니다.")
	location.href="home.do";
	</script>
</c:If>
</body>
</html>