<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko" xmlns:c="http://java.sun.com/JSP/Page"xmlns:fmt="http://java.sun.com/JSP/Page">
<head>
    <meta charset="UTF-8">
    <title>메인</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="../../../resources/css/mypage/mypage.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script type="text/javascript" src="../../../../resources/js/common/sidebar.js"></script>
    <script type="text/javascript" src="../../../resources/js/mypage/mypage.js"></script>
</head>
<body data-member-class="${member_class}">
<section class="header">
    <div class="logo">
        <i class="ri-menu-line icon icon-0 menu"></i>
        <h2>J<span>eans👖</span></h2><h5><span style="color:#5073FB">청</span>춘은 <span style="color:#5073FB">바</span>로
        <span style="color:#5073FB">지</span>금!</h5>
    </div>
    <div class="search--notification--profile">
        <div class="notification--profile">
            <a href="/message/messageList">
                <div class="picon chat">
                    <i class="ri-mail-line" ></i>
                </div>
            </a>
            <div class="picon profile">
                <span>${member_class} ${member_name}님 오늘도 파이팅하세요🙂</span>
            </div>
        </div>
    </div>
</section>
<section class="main">
    <div class="sidebar">
        <ul class="sidebar--items">
            <li>
                <a  href="/main1">
                    <span class="icon icon-1"><i  style="color:white;" class="ri-home-4-line"></i></span>
                    <span class="sidebar--item">홈</span>
                </a>
            </li>
            <li>
                <a href="/noticeList">
                    <span class="icon icon-2"><i class="ri-megaphone-line"></i></span>
                    <span class="sidebar--item">공지사항</span>
                </a>
            </li>
            <li>
                <a class="sideBoard1" href="/board1/list">
                    <span class="icon icon-3"><i class="ri-draft-line"></i></span>
                    <span class="sidebar--item" style="white-space: nowrap;">1반</span>
                </a>
            </li>
            <li>
                <a class="sideBoard2" href="/board2/list">
                    <span class="icon icon-4"><i class="ri-draft-line"></i></span>
                    <span class="sidebar--item">2반</span>
                </a>
            </li>
            <li>
                <a class="sideBoard3" href="/board3/list">
                    <span class="icon icon-5"><i class="ri-draft-line"></i></span>
                    <span class="sidebar--item">3반</span>
                </a>
            </li>
            <li>
                <a class="sideBoard4" href="/board4/list">
                    <span class="icon icon-6"><i class="ri-draft-line"></i></span>
                    <span class="sidebar--item">4반</span>
                </a>
            </li>
            <li>
                <a href="/question/list">
                    <span class="icon icon-7"><i class="ri-questionnaire-line"></i></span>
                    <span class="sidebar--item">QnA</span>
                </a>
            </li>
            <c:if test="${member_type == '관리자'}">
                <li>
                    <a href="/admin/memberList">
                        <span class="icon icon-10"><i class="ri-admin-line"></i></span>
                        <span class="sidebar--item">Admin</span>
                    </a>
                </li>
            </c:if>
        </ul>
        <ul class="sidebar--bottom-items">
            <li>
                <a href="#"  id="active--link">
                    <span class="icon icon-8"><i class="ri-user-3-line" style="color;white;"></i></span>
                    <span class="sidebar--item">마이페이지</span>
                </a>
            </li>
            <li>
                <a href="/logout">
                    <span class="icon icon-9"><i class="ri-logout-box-r-line"></i></span>
                    <span class="sidebar--item">로그아웃</span>
                </a>
            </li>
        </ul>
    </div>
    <div class="main--content">
        <div class="title-box">
            <div class="title">
                나의 현황
            </div>
        </div>
        <div class="mypage-list">
            <div class="outer-gird">
                <div class="mypage-board1">
                    <div class="b-outer-gird1">
                        <div class="list-boxtitle1">개인정보</div>
                        <div class="b-list1">
                            <div class="list-id">
                                <p><strong>ID:</strong>
                                    <span>${member.member_id}</span></p>
                            </div>
                            <div class="list-pw">
                                <p><strong>PW:</strong>
                                    <span>${member.member_pw}</span></p>
                            </div>
                            <div class="list-day">
                                <p><strong>Day:</strong><span><fmt:formatDate value="${member.member_day}" pattern="yyyy-MM-dd"/></span></p>
                            </div>
                            <div class="list-phon">
                                <p><strong>Phon_Number:</strong><span>${member.member_phone}</span></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mypage-board2">
                    <div class="b-outer-gird2">
                        <div class="list-boxtitle2">내가 작성한 글</div>
                            <div class="b-list2">
                                <c:forEach items="${board}" var="board">
                                    <div class="boardlist">
                                    <a href="/board1/detail/${board.board1_no}" class="class1">${board.board1_title}</a>
                                    <a href="/board1/detail/${board.board2_no}" class="class1">${board.board2_title}</a>
                                    <a href="/board1/detail/${board.board3_no}" class="class1">${board.board3_title}</a>
                                    <a href="/board1/detail/${board.board4_no}" class="class1">${board.board4_title}</a>
                                    </div>
                                </c:forEach>
                            </div>
                    </div>
                </div>
                <div class="calendar">
                    <div class="c-outer-gird">
                        <div class="calendar-header">
                            <button id="prev-month"><i class="fa-solid fa-angle-left fa-xl"></i></button>
                            <h2 id="month-year">2023년 8월</h2>
                            <button id="next-month"><i class="fa-solid fa-angle-left fa-rotate-180 fa-xl"></i></button>
                        </div>
                        <div class="calendar-board">
                            <div class="calendar-grid" id="calendar-grid">
                            </div>
                        </div>
                    </div>
                </div>
                <div id="modal" class="modal">
                    <div class="modal-content">
                        <div class="modal-title">출석 체크</div>
                        <button id="attendance-button">출석</button>
                    </div>
                </div>
                <!-- 모달과 관련된 코드는 그대로 둡니다 -->

                <div class="event-form">
                    <div class="c-outer-gird2">
                        <h3>일정 추가</h3>
                        <div class="c-title">
                            <!-- 일정 입력 폼 -->
                                <input type="date" name="date" id="event-date">
                                <input type="text" name="title" id="event-title" placeholder="일정 제목">
                                <button class="add-event-button">일정 추가</button>
                        </div>
                        <!-- 일정 목록 추가 -->
                        <div class="event-list">
                            <h4>일정 목록</h4>
                            <ul>
                                <c:forEach items="${eventList}" var="eventList">
                                    <li><c:out value="${eventList.mypage_regdate} - ${eventList.mypage_content}" /></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
