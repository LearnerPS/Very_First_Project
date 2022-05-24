<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>[ 마이 페이지 ]</title>
</head>
<body>
	
	<h1>[ 마이 페이지 ]</h1>
	<br>
	<label>
		아이디 : ${ vo.mem_id }
	</label>
	<br>
	<label>
		성명 : ${ vo.mem_name }
	</label>
	<br>
	<label>
		나이 : ${ vo.mem_age }
	</label>
	<br>
	<label>
		성별 : ${ vo.mem_gen }
	</label>
	<br>
	<label>
		전화번호 : ${ vo.mem_tel }
	</label>
	<br>
	<label>
		이메일 : ${ vo.mem_email }
	</label>
	<br>
	<br>
	
	<div>
		<a href="Rtour/edit">[ 정보  수정 ]</a>
	</div>
	
	
		
		
		
	
</body>
</html>