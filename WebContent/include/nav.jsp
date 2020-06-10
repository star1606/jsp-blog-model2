<%@page import="com.cos.blog.model.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
	Users principal = (Users) session.getAttribute("principal");
--%>





<!DOCTYPE html>
<html lang="en">
<head>
<title>Lee blog 제목</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	
<!--밑에 두개는 써머노트 라이브러리임 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous"> 

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>	

<link href="/blog/css/styles.css" rel="stylesheet">		
	
</head>
<body>

	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<a class="navbar-brand" href=/blog/index.jsp>Lee Blog</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">


				<c:choose>
					<c:when test="${empty sessionScope.principal }">
						<li class="nav-item"><a class="nav-link"
							href="/blog/user?cmd=login">로그인</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/blog/user?cmd=join">회원가입</a></li>
					</c:when>
					<c:otherwise>

						<li class="nav-item">
						<a class="nav-link" href="/blog/board?cmd=write">글쓰기</a></li>
						<li class="nav-item">
						<a class="nav-link" href="/blog/user?cmd=update">회원정보</a></li>
						<li class="nav-item">
						<a class="nav-link" href="/blog/user?cmd=logout">로그아웃</a></li>

					</c:otherwise>
				</c:choose>







				<%--   <% if(principal == null) { %>
      <li class="nav-item">
        <a class="nav-link" href="/blog/user?cmd=login">로그인</a> 
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/blog/user?cmd=join">회원가입</a>
        </li>
    	<% } else {%>
    	 <li class="nav-item">
        <a class="nav-link" href="/blog/board?cmd=write">글쓰기</a> 
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/blog/user?cmd=update">회원정보</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="/blog/user?cmd=logout">로그아웃</a> 
      </li>
    	<% } %> --%>
			</ul>
		</div>
	</nav>
	<br>