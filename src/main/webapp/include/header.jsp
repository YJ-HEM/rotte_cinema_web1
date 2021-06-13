<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
    <nav>
        <ul>
            <li><img src="images/icon/menu_icon.png">
                <img src="images/icon/search_icon.png"></li>
            <li class="nav-over"><a href="">영화</a>
                <ul>
                    <li>전체영화</li>
                    <li>큐레이션</li>
                </ul>
            </li>
            <li class="nav-over"><a href="">예매</a>
                <ul>
                    <li>빠른예매</li>
                    <li>상영 시간표</li>
                </ul>
            </li>
            <li><img class="logo_w_blue" src="images/icon/rt_logo_w_blue.png"></li>
            <li class="nav-over"><a href="">이벤트</a>
                <ul>
                    <li>전체 이벤트</li>
                    <li>진행 이벤트</li>
                </ul>
            </li>
            <li class="nav-over"><a href="">시설안내</a>
                <ul>
                    <li>회사 소개</li>
                    <li>오시는 길</li>
                </ul>
            </li>
            <li><img src="images/icon/calendar_icon.png">
            <img src="images/icon/user_icon.png"></li>
            
        </ul>
        <div class="nav-bg"></div>
    </nav>
</header>

<script>
    $(document).ready(function(){
    $('.nav-over').mouseenter(function() {
        $('.nav-bg').addClass('active');});

    $('.nav-over').mouseleave(function() {
        $('.nav-bg').removeClass('active');});
});
</script>