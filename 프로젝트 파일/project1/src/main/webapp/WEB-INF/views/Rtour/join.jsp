<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>[ 회원 가입 ]</title>
</head>
<body>

	<h2>[ 회원 가입 ]</h2>
	
	<form action="join_ok.jsp" method="post">
		
		아이디:<input type="text" name="mem_id"><br/>
		비밀번호:<input type="password" name="mem_passwd"><br/>
		이름:<input type="text" name="mem_name"><br/>
		나이:<input type="text" name="mem_age"><br/>
		전화번호:
		<select name="mem_tel">
			<option>010</option>
			<option>02</option>
			<option>031</option>
			<option>051</option>
		</select>
		- <input type="text" name="mem_tel2" size="5">
		- <input type="text" name="mem_tel3" size="5">
		
		<br/>
		<input type="radio" name="mem_gen" value="m" checked>남자
		<input type="radio" name="mem_gen" value="f">여자
		<br/>
		이메일:<input type="email" name="mem_email">
		
		<input type="submit" value="가입">
		
	</form>

</body>

</html>