<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String mem_id = request.getParameter("mem_id");
	String mem_name = request.getParameter("mem_name");
	String mem_passwd = request.getParameter("mem_passwd");
	String mem_age = request.getParameter("mem_age");
	String mem_tel1 = request.getParameter("mem_tel1");
	String mem_tel2 = request.getParameter("mem_tel2");
	String mem_tel3 = request.getParameter("mem_tel3");
	String mem_gender = request.getParameter("mem_gender");
	String mem_email = request.getParameter("mem_email");
	
	// 1.변수선언
	String url = "여기";
	String mem_id = "JSP";
	String mem_passwd = "JSP";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String sql = "insert into members values(?, ?, ?, ?, ?, ?, ?)";
	
	try{
		// 1. 드라이버 로드
		Class.forName("여기");
		
		// 2. conn 생성
		conn = DriverManager.getConnection(url, mem_id, mem_passwd);
		
		// 3. pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, mem_id);
		pstmt.setString(2, mem_name);
		pstmt.setString(3, mem_passwd);
		pstmt.setString(4, mem_age);
		pstmt.setString(5, mem_tel1);
		pstmt.setString(6, mem_tel2);
		pstmt.setString(7, mem_tel3);
		pstmt.setString(8, mem_gender);
		pstmt.setString(9, mem_email);
		
		// 4. sql문 실행
		int result = pstmt.executeUpdate();
		
		if(result == 1){ // 성공
			response.sendRedirect("join_succes.jsp");
		} else{ // 실패
			response.sendRedirect("join_fail.jsp");
		}
		
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
%>