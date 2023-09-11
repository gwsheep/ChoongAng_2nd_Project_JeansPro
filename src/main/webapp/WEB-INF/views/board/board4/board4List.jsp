<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns:c="http://java.sun.com/JSP/Page" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>👖4반 게시글 목록</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../../../../resources/css/board/boardList.css">
    <script type="text/javascript" src="../../../../resources/js/board/boardList.js"></script>
    <style>
        body{
         background-color : rgba(243, 249, 216, 0.6);
        }
    </style>
</head>
<body data-member-class="${member_class}" data-category="${category}" data-member-type="${member_type}">
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>

<div class="main--content">
    <div class = "title--container">
        <!-- 같은 반일 경우에만 글쓰기 처리 -->
        <c:if test="${member_class.equals('4반') || member_type.equals('관리자') || member_type.equals('강사님')}">
            <button type="button" class="button" onclick="location.href='/board4/write'">글쓰기</button>
        </c:if>
        <div class="title-content"><h1>👖4반 게시판</h1></div>
    </div>
    <div class="slide-container">
        <div class="slider">
            <input type="radio" name="testimonial" id="t-1"checked>
            <input type="radio" name="testimonial" id="t-2">
            <input type="radio" name="testimonial" id="t-3">
            <input type="radio" name="testimonial" id="t-4">
            <input type="radio" name="testimonial" id="t-5">
            <div class="testimonials">
                <c:if test="${member_class.equals('4반') || member_type.equals('관리자') || member_type.equals('강사님')}">
                    <c:forEach var="tutor" items="${board4DTOBYTutor}" varStatus="loop" begin="0" end="4">
                        <input type="radio" name="testimonial" id="t-${loop.index + 1}">
                        <label class="item"  for="t-${loop.index + 1}">
                            <h2><a href="/board4/detail/${tutor.board4_no}">${tutor.board4_title}</a></h2>
                            <h3>${tutor.board4_content}</h3>
                        </label>
                    </c:forEach>
                </c:if>
            </div>
        </div>
    </div>
    <div class = "box-container">
        <div class="boxes">
            <c:forEach var="board4List" items="${board4List}">
                <div class="box">
                    <div>
                        <!-- 반이 같을 경우에만 조회가능하도록 처리-->
                        <c:if test="${member_class.equals('4반') || member_type.equals('관리자') || member_type.equals('강사님')}">
                            <button type="button" class="box-button" onclick="location.href='/board4/detail/${board4List.board4_no}'">상세</button>
                        </c:if>
                    </div>
                    <div>
                        <h1>${board4List.board4_title}</h1>
                        <p>${board4List.board4_content}</p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>