<%@ page import="com.yunsu1021.boardproject2.dto.BoardDTO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>partAdd</title>
    <style>
    </style>
    <!-- CSS -->
    <link href="${path}/resources/css/setting.css" rel="stylesheet" type="text/css">
    <link href="${path}/resources/css/common.css" rel="stylesheet" type="text/css">
    <link href="${path}/resources/css/common_dark.css" rel="stylesheet" type="text/css">
    <link href="${path}/resources/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="${path}/resources/css/line-awesome.css" rel="stylesheet" type="text/css">
    <link href="${path}/resources/css/scrollbar.css" rel="stylesheet" type="text/css">
    <link href="${path}/resources/css/daterangepicker.css" rel="stylesheet" type="text/css">
    <!-- jquery -->
    <script src="${path}/resources/js/jquery-2.1.3.min.js"></script>
    <!-- javascript(캘린더) -->
    <script src="${path}/resources/assets/vendors/general/moment/min/moment.min.js" type="text/javascript"></script>
    <script src="${path}/resources/assets/vendors/general/bootstrap-daterangepicker/daterangepicker.js"
            type="text/javascript"></script>
    <script src="${path}/resources/assets/app/custom/general/crud/forms/widgets/bootstrap-daterangepicker.js"
            type="text/javascript"></script>

    <link rel="shortcut icon" href="./resources/images/favicon.ico"/>


</head>
<body>
<div class="container">
    <!-- ------Side Menu 왼쪽 사이드메뉴 영역 시작------ -->


    <!--    사이드메뉴 접힘 버튼 시작  -->
    <input id="side-toggle" type="checkbox">
    <label for="side-toggle" class="btn_side-toggle">
        <span class="fa fa-angle-double-left"></span>
        <div class="toggle-menu">
            <ul class="menu">

                <li><span class="fa fa-sitemap">
                      <span class="txtview">조직관리</span></span>
                </li>
            </ul>
        </div>
    </label>
    <!--    사이드메뉴 접힘 버튼 끝  -->
    <!-- 사이드메뉴 시작 -->
    <div class="side_menu w-kms">
        <!--  로고 영역 시작  -->
        <div class="side_logo">
            <a href="#">
                <img alt="로고" src="./resources/images/simbol.png" style="height: 24px;"></a>
        </div>
        <!--  로고 영역 끝  -->
        <!-- KMS Search **Start** -->
        <div class="main-search mgt20">
            <input type="text" placeholder="KMS Search ...">
            <button class="btn_main-search">
                <span class="fa fa-search"></span>
            </button>
        </div>
        <!-- KMS Search **End** -->
        <!--  드롭다운 메뉴 시작  -->
        <ul class="menu">

            <li><a href="#"><span class="fa fa-sitemap"></span>조직관리</a>
                <ul class="sub">
                    <li><a href="partAdd">부서 관리</a></li>
                </ul>
            </li>
        </ul>
        <button type="button" class="btn_logout">
            <span class="fa fa-sign-out-alt" onclick="location.href='./login'"> </span>로그아웃
        </button>
        <!--  로그아웃 버튼 끝  -->
    </div>
    <!--  사이드메뉴 끝  -->
    <!-- ------Side Menu 왼쪽 사이드메뉴 영역 끝------ -->

    <!-- ------오른쪽 컨텐츠 영역 시작------ -->
    <section class="contents-area">
        <!--  ------상단 바 영역 시작------  -->
        <!--  상단 바 영역 시작  -->
        <div class="top-bar one">
            <div class="top-left">
            </div>
            <div class="top-right">
                <!-- 기타 링크 영역 -->
                <div class="dp_flex">
                    <!-- *Light,Dark Toggle* Start -->
                    <label class="toggle_lnd" onclick="toggleLnD()">
                        <input type="checkbox" class="ck_lnd">
                        <span>Light<span class="la la-sun-o mgl2"></span></span>
                        <span>Dark<span class="fa fa-moon mgl2"></span></span>
                    </label>
                    <!-- *Light,Dark Toggle* End -->
                </div>
                <div class="login-ment mgl24 mgr8">
                    <span class="fontb mgr4">전경아님</span><span>로그인</span>
                </div>

                <!-- ###### 드랍박스 메뉴 영역 -- START  ###### -->
                <div class="top-with_drop">
                    <!-- 드랍박스 메뉴 --Start-- -->
                    <label>
                        <input type="checkbox" class="btn_chat_drop">
                        <span class="fa fa-angle-down"></span>
                        <!-- dropdown_menu -Start- -->
                        <div class="dropdown_menu" style="right: 0;">
                            <ul>
                                <li>
                                    <a onclick="modalInfoOpen()"><span
                                            class="fa fa-info-circle"></span><span>내 정보</span></a>
                                </li>
                                <li>
                                    <a><span class="fa fa-cog"></span><span>상담설정</span></a>
                                </li>
                            </ul>
                        </div>
                        <!-- dropdown_menu -End- -->
                    </label>
                    <!-- 채팅상담 - 드랍박스 메뉴 --End-- -->
                </div>
                <!-- ###### 드랍박스 메뉴 영역 -- END ###### -->
            </div>
        </div>
        <!--  상단 바 영역 끝  -->
        <!--  ------상단 바 영역 끝------  -->
        <!--  ############### 컨텐츠 시작 ###############  -->


        <div class="contents">

            <!-- ------------------- Contents area Start -------------------- -->
            <div class="con-area he100p">
                <!--  컨텐츠박스 영역 -- 시작  -->
                <div class="con-box-area w100">
                    <div class="con-box_top">
                        <span>조직정보 - [부서] 관리</span>
                        <button class="con-box_top-btn w100x fr" onclick="partAddPop()">
                            <span class="fa fa-plus mgr4"></span>
                            <span>등록</span>
                        </button>
                    </div>
                    <div class="con-box">
                        <div class="search-area w100">
                      <span class="title_icon fl mgt2 mgr8">
                        <span class="fa fa-sitemap"></span>
                      </span>
                            <span class="txt_result fl fontb">
                          총 <span class="tix_point">
                                ${totalCount}
                            </span>부서
                      </span>
                            <div class="fr">

                                <form action="/" method="post">

                                    <select class="w120x mgr8 fl" name="searchStatus" title="팀상태">
                                        <option style="width: 100%" selected value="">팀 상태</option>
                                        <option value="Y">사용중</option>
                                        <option value="N">업무종료</option>
                                    </select>
                                    <select class="w120x mgr8 fl" name="searchArray" title="정렬">
                                        <option style="width: 100%" selected value="">정렬</option>
                                        <option value="ASC">오름차순</option>
                                        <option value="DESC">내림차순</option>
                                    </select>
                                    <input type="text" class="w200x mgr8 fl" placeholder="검색할 부서명을 입력하세요" name="searchTitle"
                                           value="">
                                    <button type="submit" class="btn-st1 w60x he36x mgr8 fl">
                                        <span>검색</span>
                                        <span class="fa fa-search"></span>
                                    </button>
                                    <input type="hidden" value="${MaxPost}" name="MaxPost">
                                    <input type="hidden" value="${limitStartNum}" name="limitStartNum">
                                </form>
                            </div>
                        </div>

                        <!-- 검색영역 끝 -->
                        <!-- 테이블 시작 -->
                        <div class="list-area round">
                            <table class="con-list last-noline w100">
                                <thead>
                                <tr>
                                    <th>No</th>
                                    <th>부서명</th>
                                    <th>정렬</th>
                                    <th>사용유무</th>
                                    <th>등록자</th>
                                    <th>등록일시</th>
                                    <th>비고</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="board" items="${boardList}" varStatus="status">
                                    <tr>
                                        <td>${status.count}</td>
                                        <td onclick="partModPop(${board.board_no})">${board.board_title}</td>
                                        <td>${board.board_arry}</td>
                                        <c:choose>
                                            <c:when test="${board.board_status.equals('Y')}">
                                                <td>사용중</td>
                                            </c:when>
                                            <c:when test="${board.board_status.equals('N')}">
                                                <td>업무종료</td>
                                            </c:when>
                                        </c:choose>
                                        <td>${board.board_regi_ster}</td>
                                        <td>${board.board_regi_Date}</td>
                                        <td>${board.board_info}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- 테이블 끝 -->
                        <!--  페이징 시작   -->
                        <div class="paging">
                            <ul>
                                <li class="page_first">
                                    <span class="fa fa-angle-double-left"></span></li>
                                <li class="page_prev">
                                    <span class="fa fa-angle-left"></span></li>
                                <li class="num_this">
                                    <span>1</span></li>
                                <li class="num">
                                    <span>2</span></li>
                                <li class="num">
                                    <span>3</span></li>
                                <li class="num">
                                    <span>4</span></li>
                                <li class="num">
                                    <span>5</span></li>
                                <li class="page_next">
                                    <span class="fa fa-angle-right"></span></li>
                                <li class="page_last">
                                    <span class="fa fa-angle-double-right"></span></li>
                            </ul>
                        </div>
                        <!--   페이징 끝  -->
                    </div>
                </div>
                <!--  컨텐츠박스 영역 -- 끝  -->
            </div>
            <!--  ------------------- Contents area End  ------------------- -->
        </div>
        <!--  모달팝업용 black dim  -->
        <div class="dim"></div>
        <!--  ====== 모달팝업 1 Start ====== -->
        <section class="modal" style="width: 440px;">
            <!--  컨텐츠 박스 시작 -->
            <div class="con-box-area">
                <!--  상단 제목 시작  -->
                <div class="con-box_top">
                    <span>[부서] 등록</span>
                    <button class="con-box_top-btn w90x fr" onclick="partAddPopClose()">
                        <span class="fa fa-times mgr4"></span>
                        <span>닫기</span>
                    </button>
                </div>
                <!--  상단 제목 끝  -->
                <!--  내용 시작   -->
                <div class="con-box">
                    <form action="/insertDept" method="post">
                        <table class="table-ver2 w100">
                            <tr>
                                <th>부서명<span class="tix_point">*</span></th>
                                <th>정렬<span class="tix_point"></span></th>
                            </tr>
                            <tr>
                                <td>
                                    <input name="board_title" type="text" class="w100" style="width: calc(100% - 74px);"
                                           placeholder="부서명을 입력해주세요">
                                </td>
                                <td>
                                    <input name="board_arry" type="text" class="w100" placeholder="정렬값을 입력해주세요[0~100]">
                                </td>
                            </tr>
                            <tr>
                                <th>사용유무<span class="tix_point">*</span></th>
                                <th>등록자<span class="tix_point">*</span></th>
                            </tr>
                            <tr>
                                <td>
                                    <select class="w100" name="board_status">
                                        <option value="Y" selected>사용중</option>
                                        <option value="N">업무종료</option>
                                    </select>
                                </td>
                                <td>
                                    <input name="board_regi_ster" type="text" class="w100"
                                           style="width: calc(100% - 74px);" placeholder="등록자를 입력해주세요">
                                </td>
                            </tr>
                            <tr>
                                <th colspan="2">비고</th>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <textarea name="board_info" class="w100" style="height: 72px"></textarea>
                                </td>
                            </tr>
                        </table>
                </div>
                <!--  내용 끝   -->
                <!--  하단 영역 시작  -->
                <div class="con-box_bottom">
                     <span class="fl">
                         <span class="tix_point">*</span>
                         <span>항목은 필수항목입니다.</span>
                     </span>
                    <button class="btn-st1 w60x fr mgl8">등록</button>
                    <button class="btn-st5 w60x fr" onclick="partAddPopClose()">닫기</button>
                </div>
                </form>
                <!--  하단 영역 끝  -->
            </div>
            <!--  컨텐츠 박스 끝  -->
        </section>
        <section class="modal2" style="width: 440px;">
            <!--  컨텐츠 박스 시작 -->
            <div class="con-box-area">
                <!--  상단 제목 시작  -->
                <div class="con-box_top">
                    <span>[부서] 수정</span>
                    <button class="con-box_top-btn w90x fr" onclick="partModPopClose()">
                        <span class="fa fa-times mgr4"></span>
                        <span>닫기</span>
                    </button>
                </div>
                <!--  상단 제목 끝  -->
                <!--  내용 시작   -->
                <form action="/updateDept" method="post">
                    <div class="con-box">
                        <table class="table-ver2 infor w100">

                            <tr>
                                <th>부서명<span class="tix_point">*</span></th>
                                <th>정렬<span class="tix_point"></span></th>
                            </tr>
                            <tr>
                                <td>
                                    <input id="boardTitle" name="board_title" type="text" class="w100"
                                           style="width: calc(100% - 74px);"
                                           placeholder="부서명을 입력해주세요">
                                    <input type="hidden" id="boardNo" name="board_no">
                                </td>
                                <td>
                                    <input id="boardArry" name="board_arry" type="text" class="w100">
                                </td>
                            </tr>
                            <tr>
                                <th>사용유무<span class="tix_point">*</span></th>
                                <th>등록자<span class="tix_point">*</span></th>
                            </tr>
                            <tr>
                                <td>
                                    <select class="w100" name="board_status" id="boardStatus">
                                        <option value="Y" selected>사용중</option>
                                        <option value="N">업무종료</option>
                                    </select>
                                </td>
                                <td>
                                    <input name="board_regi_ster" type="text" class="w100"
                                           style="width: calc(100% - 74px);" id="boardRegister">
                                </td>
                            </tr>
                            <tr>
                                <th colspan="2">비고</th>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <textarea id="boardInfo" name="board_info" class="w100"
                                              style="height: 72px"></textarea>
                                </td>
                            </tr>
                        </table>
                        </table>
                    </div>
                    <!--  내용 끝   -->
                    <!--  하단 영역 시작  -->
                    <div class="con-box_bottom">
                     <span class="fl">
                         <span class="tix_point">*</span>
                         <span>항목은 필수항목입니다.</span>
                     </span>
                        <button type="submit" class="btn-st1 w60x fr mgl8">수정</button>
                        <button class="btn-st5 w60x fr" onclick="partModPopClose()">닫기</button>
                    </div>
                </form>
                <!--  하단 영역 끝  -->
            </div>
            <!--  컨텐츠 박스 끝  -->
        </section>
        <!--  ====== 모달팝업 2 End ====== -->

        <script type="text/javascript">
            /** 모달 팝업*/
            const modal = document.querySelector('.modal');   // 모달
            const modal2 = document.querySelector('.modal2');   // 모달2
            const dim = document.querySelector('.dim');   // black 배경

            function partAddPop() {
                modal.style.display = 'block';
                dim.style.display = 'block';
            }

            function partAddPopClose() {
                modal.style.display = 'none';
                dim.style.display = 'none';
            }

            function partModPop(boardNo) {
                modal2.style.display = 'block';
                dim.style.display = 'block';

                /*   // board_no와 board_title 값을 설정
                   $("#board_no").val(boardNo);
                   $("#boardTitle").val(boardTitle);*/

                getDept(boardNo);
            }


            function partModPopClose() {
                modal2.style.display = 'none';
                dim.style.display = 'none';
            }
        </script>

        <script>

            function getDept(boardNo) {
                $.ajax({
                    type: "post",
                    url: "/getDeptData",
                    data: {"board_no": boardNo},
                    cache: false,
                    dataType: "json",
                    success: function (res) {
                        console.log("getDept : " + res.board_title);
                        console.log("getDept : " + res.board_no);
                        $("#boardNo").val(res.board_no);
                        $("#boardTitle").val(res.board_title);
                        $("#boardArry").val(res.board_arry);
                        $("#boardStatus").val(res.board_status);
                        $("#boardRegister").val(res.board_regi_ster);
                        $("#boardInfo").val(res.board_info);
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        console.log("통신 실패." + errorThrown);
                    }
                })
            }

        </script>
    </section>
    <!-- ------오른쪽 컨텐츠 영역 끝------ -->
</div>
<!-- 탭메뉴 설정 js -->
<script>

    const tabList = document.querySelectorAll('.tab_area .list li');
    const contents = document.querySelectorAll('.tab_area .cont_area .cont')
    let activeCont = ''; // 현재 활성화 된 컨텐츠 (기본:#tab1 활성화)

    for (var i = 0; i < tabList.length; i++) {
        tabList[i].querySelector('.btn').addEventListener('click', function (e) {
            e.preventDefault();
            for (var j = 0; j < tabList.length; j++) {
                // 나머지 버튼 클래스 제거
                tabList[j].classList.remove('is_on');
                // 나머지 컨텐츠 display:none 처리
                contents[j].style.display = 'none';
            }
            // 버튼 관련 이벤트
            this.parentNode.classList.add('is_on');
            // 버튼 클릭시 컨텐츠 전환
            activeCont = this.getAttribute('href');
            document.querySelector(activeCont).style.display = 'block';
        });
    }

</script>
<!--  ############### 컨텐츠 끝 ###############  -->

<script>// Light,Dark 토글
function toggleLnD() {
    if ($(".ck_lnd").prop('checked')) {
        $('.container').addClass("dark");
        $('body').addClass("dark");
    } else {
        $('.container').removeClass("dark");
        $('body').removeClass("dark");
    }
}
</script>
<!-- 캘린더 rangeCalender.js-->
<script src="${path}/resources/js/rangeCalender.js" type="text/javascript"></script>
<!-- 사이드메뉴 leftMenu.js-->
<script src="${path}/resources/js/leftMenu.js" type="text/javascript"></script>
</body>
</html>
