<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-특강신청</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>

<%@ include file = "../include/nav.jsp" %>
<%@ include file = "../include/floating-left.jsp" %>


	
	
	<!-- 웹버전 -->
	<div class="container-fluid mobile-hidden">
	<div class="row">
		<div class="col-12"><img src="/img/detail_200901_01.jpg"  style="width: 100%;"class="mobile-100-percent"></div>	
	</div>
	<div class="row">
		<div class="col-12"><img src="/img/detail_200901_02.jpg" style="width: 100%;"  class="mobile-100-percent"></div>	
	</div>
	<div class="row">
		<div class="col-12"><img src="/img/detail_200901_03.jpg" style="width: 100%;" class="mobile-100-percent"></div>	
	</div>
	
</div>
   
   
   <!-- 모바일버전 -->
	<div style="text-align: center;">
		<img src="/img/detail_200901_01mo.jpg" alt="합격률" id="mobile-100-percent" class="mobile-show">
   </div>
   
	<div style="text-align: center;">
		<img src="/img/detail_200901_02mo.jpg" alt="합격률" id="mobile-100-percent" class="mobile-show">
   </div>
   <div style="text-align: center;">
		<img src="/img/detail_200901_03mo.jpg" alt="합격률" id="mobile-100-percent" class="mobile-show">
   </div>




<div class="containter-fluid py-5" style="background:url('/img/main-review-bg-img.jpg') no-repeat top; background-color:#171f32;">
	<div class="row sub-row py-5">
		<div class="col-12 text-center mb-5 px-2">
		</div>
		<div class="col-12">
			<img src="/img/main-review-allpass-tit-img.png" class="my-5 mobile-hidden">
			<img src="/img/main-review-allpass-tit-img-m.png" class="mb-2 mobile-show mobile-75-percent">
		</div>
		<div class="col-12">
			<div class="swiper-container" id="sw-main-review-bob">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><a href="/detail/hof.do"><img src="/img/main-review-allpass-001.png" class="mobile-100-percent"></a></div>
					<div class="swiper-slide"><a href="/detail/hof.do"><img src="/img/main-review-allpass-003.png" class="mobile-100-percent"></a></div>
					<div class="swiper-slide"><a href="/detail/hof.do"><img src="/img/main-review-allpass-004.png" class="mobile-100-percent"></a></div>
					<div class="swiper-slide"><a href="/detail/hof.do"><img src="/img/main-review-allpass-005.png" class="mobile-100-percent"></a></div>
					<div class="swiper-slide"><a href="/detail/hof.do"><img src="/img/main-review-allpass-006.png" class="mobile-100-percent"></a></div>
				</div>
			</div>
			<div class="col-12 text-center my-3" id="sw-main-review-bob-pagination"></div>
		</div>
		<div class="col-12">
			<img src="/img/main-review-best-tit-img.png" class="my-5 mobile-hidden">
			<img src="/img/main-review-best-tit-img-m.png" class="mb-2 mobile-show mobile-75-percent">
		</div>
		<div class="col-12">
			<div class="swiper-container" id="sw-main-review-reply">
				<div class="swiper-wrapper">
					<div class="swiper-slide pr-1"><img src="/img/main-review-best-001.png" class="mobile-100-percent"></div>
					<div class="swiper-slide pr-1"><img src="/img/main-review-best-002.png" class="mobile-100-percent"></div>
					<div class="swiper-slide pr-1"><img src="/img/main-review-best-003.png" class="mobile-100-percent"></div>
					<div class="swiper-slide pr-1"><img src="/img/main-review-best-004.png" class="mobile-100-percent"></div>
					<div class="swiper-slide pr-1"><img src="/img/main-review-best-005.png" class="mobile-100-percent"></div>
					<div class="swiper-slide pr-1"><img src="/img/main-review-best-006.png" class="mobile-100-percent"></div>
					<div class="swiper-slide pr-1"><img src="/img/main-review-best-007.png" class="mobile-100-percent"></div>
				</div>
			</div>
			<div class="col-12 text-center my-3" id="sw-main-review-reply-pagination"></div>
		</div>
		<div class="col-12 text-center mt-5">
			<div class="swiper-container" id="sw-main-review-thumbnail">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><img src="/img/review-1.png"></div>
					<div class="swiper-slide"><img src="/img/review-2.png"></div>
					<div class="swiper-slide"><img src="/img/review-3.png"></div>
					<div class="swiper-slide"><img src="/img/review-4.png"></div>
					<div class="swiper-slide"><img src="/img/review-5.png"></div>
					<div class="swiper-slide"><img src="/img/review-6.png"></div>
					<div class="swiper-slide"><img src="/img/review-7.png"></div>
					<div class="swiper-slide"><img src="/img/review-8.png"></div>
					<div class="swiper-slide"><img src="/img/review-9.png"></div>
					<div class="swiper-slide"><img src="/img/review-10.png"></div>
					<div class="swiper-slide"><img src="/img/review-11.png"></div>
					<div class="swiper-slide"><img src="/img/review-12.png"></div>
					<div class="swiper-slide"><img src="/img/review-13.png"></div>
					<div class="swiper-slide"><img src="/img/review-14.png"></div>
					<div class="swiper-slide"><img src="/img/review-15.png"></div>
					<div class="swiper-slide"><img src="/img/review-16.png"></div>
					<div class="swiper-slide"><img src="/img/review-17.png"></div>
					<div class="swiper-slide"><img src="/img/review-18.png"></div>
					<div class="swiper-slide"><img src="/img/review-19.png"></div>
					<div class="swiper-slide"><img src="/img/review-20.png"></div>
					<div class="swiper-slide"><img src="/img/review-21.png"></div>
					<div class="swiper-slide"><img src="/img/review-22.png"></div>
					<div class="swiper-slide"><img src="/img/review-23.png"></div>
					<div class="swiper-slide"><img src="/img/review-24.png"></div>
					<div class="swiper-slide"><img src="/img/review-25.png"></div>
					<div class="swiper-slide"><img src="/img/review-26.png"></div>
					<div class="swiper-slide"><img src="/img/review-27.png"></div>
					<div class="swiper-slide"><img src="/img/review-28.png"></div>
					<div class="swiper-slide"><img src="/img/review-29.png"></div>
					<div class="swiper-slide"><img src="/img/review-30.png"></div>
					<div class="swiper-slide"><img src="/img/review-31.png"></div>
					<div class="swiper-slide"><img src="/img/review-32.png"></div>
					<div class="swiper-slide"><img src="/img/review-33.png"></div>
					<div class="swiper-slide"><img src="/img/review-34.png"></div>
					<div class="swiper-slide"><img src="/img/review-35.png"></div>
					<div class="swiper-slide"><img src="/img/review-36.png"></div>
					<div class="swiper-slide"><img src="/img/review-37.png"></div>
					<div class="swiper-slide"><img src="/img/review-38.png"></div>
					<div class="swiper-slide"><img src="/img/review-39.png"></div>
					<div class="swiper-slide"><img src="/img/review-40.png"></div>
					<div class="swiper-slide"><img src="/img/review-41.png"></div>
					<div class="swiper-slide"><img src="/img/review-42.png"></div>
					<div class="swiper-slide"><img src="/img/review-43.png"></div>
					<div class="swiper-slide"><img src="/img/review-44.png"></div>
					<div class="swiper-slide"><img src="/img/review-45.png"></div>
					<div class="swiper-slide"><img src="/img/review-46.png"></div>
					<div class="swiper-slide"><img src="/img/review-47.png"></div>
					<div class="swiper-slide"><img src="/img/review-48.png"></div>
					<div class="swiper-slide"><img src="/img/review-49.png"></div>
					<div class="swiper-slide"><img src="/img/review-50.png"></div>
					<div class="swiper-slide"><img src="/img/review-51.png"></div>
					<div class="swiper-slide"><img src="/img/review-52.png"></div>
					<div class="swiper-slide"><img src="/img/review-53.png"></div>
					<div class="swiper-slide"><img src="/img/review-54.png"></div>
					<div class="swiper-slide"><img src="/img/review-55.png"></div>
					<div class="swiper-slide"><img src="/img/review-56.png"></div>
					<div class="swiper-slide"><img src="/img/review-57.png"></div>
					<div class="swiper-slide"><img src="/img/review-58.png"></div>
					<div class="swiper-slide"><img src="/img/review-59.png"></div>
					<div class="swiper-slide"><img src="/img/review-60.png"></div>
					<div class="swiper-slide"><img src="/img/review-61.png"></div>
					<div class="swiper-slide"><img src="/img/review-62.png"></div>
					<div class="swiper-slide"><img src="/img/review-63.png"></div>
					<div class="swiper-slide"><img src="/img/review-64.png"></div>
					<div class="swiper-slide"><img src="/img/review-65.png"></div>
					<div class="swiper-slide"><img src="/img/review-66.png"></div>
					<div class="swiper-slide"><img src="/img/review-67.png"></div>
					<div class="swiper-slide"><img src="/img/review-68.png"></div>
					<div class="swiper-slide"><img src="/img/review-69.png"></div>
					<div class="swiper-slide"><img src="/img/review-70.png"></div>
				</div>
			</div>
		</div>
	</div>
</div>








<div class="container-fluid edu-banner-ev-main-container">
		<div class="row sub-row py-5">
			<div class="py-5" style="margin: 0 auto; text-align: center;">
				<p class="font-black font-45-m font-bold my-2">
					<span style="color: #fc229c">크루팩토리</span> 특별 클래스</p>
				<p class="font-bebas-light font-18-m font-thin font-gray">크루팩토리의 연간행사</p>
			</div>
			<div class="col-12 my-3 text-center" id="mobile-100-percent">
				<a href="javascript:clickBlog('pa');"><button class="btn btn-warning mx-1 mt-2 py-3" style="width: 180px;" id="blog-section-pa">합격생 간담회</button></a>
				<a href="javascript:clickBlog('re');"><button class="btn btn-danger mx-1 mt-2 py-3" style="width: 180px;" id="blog-section-re">예비승무원 선발대회</button></a>
			</div>
		</div>
	</div>

<!--  합격생간담회  -->
<div id ="blogpa">
	<div class="container-fluid edu-banner-ev-con-1">
		<div class="row sub-row">
			
			<div class="line-1-gray my-2" style="width: 100%; margin: 0 auto;"></div>
			<div class="col-12 text-center" id="mobile-100-percent">
				<div class="col-6 text-center" id="mobile-100-percent"><img src="/img/event-pa-img.png" id="mobile-100-percent"></div>
				<div class="col-6 py-5 px-5" id="mobile-100-percent" style="text-align:left;">
				<p class="font-light font-26-m font-black">Passing Meeting</p>
				<p class="font-black font-40-m font-bold my-2">합격생 간담회</p><br>
				<p class="font-light font-16-m font-gray">크루팩토리 합격생들의</p>
				<p class="font-light font-16-m font-gray">실제 경험을 토대로 한 생생한 합격후기</p>
				<p class="font-light font-16-m font-gray">메인 대학별 면접 팁이나 받았던 질문 등을</p>
				<p class="font-light font-16-m font-gray">공유함으로서 면접 준비를 체계적으로 준비</p>
				<p class="font-light font-16-m font-gray">합격생과 재학생간의  Q&A시간</p>
				<p class="font-light font-16-m font-gray"></p>
				<div class="col-12">
				<div class="col-6 off-hide main-pro-category py-5 px-1">
				<a href="/counsel/online.do"><button class="btn btn-primary" style="width: 100%;">빠른상담 <img src="/img/com01.png"></button></a></div>
				<div class="col-6 off-hide main-pro-category py-5 px-1">
				<a href="https://pf.kakao.com/_QWAEl"><button class="btn btn-primary" style="width: 100%;">카톡상담 <img src="/img/com02.png"></button></a></div>
			</div>
			</div>
			</div>
			<div class="line-1-gray my-2" style="width: 100%; margin: 0 auto;"></div>
		</div>
	</div>
	
		<div class="container-fluid edu-banner-pa-con-2">
		<div class="row sub-row">
			<div class="col-12">
				<div class="col-7 py-5 px-5 mobile-100-percent"><p class="font-white font-90-m font-bold my-2 pt-5">합격생 간담회?</p>
				<p class="font-light font-24-m font-lightblack" style="line-height:1.5em;">내가 가고 싶은 또는 생각 했던 대학에 대한 정보가 부족하나요? 실제 해당 대학 합격생들과 재학생간의 받았던 질문이나 면접 팁 등을 공유함으로서 보다 자신감을 얻고, 면접 준비에 있어 한단계 더 도약할 수 있는 시간</p></div>
				<div class="col-5 mobile-100-percent"><img src="/img/event-pa-img-2.png" id="mobile-100-percent"></div>
			</div>
		</div>
	</div>
			<div class="container-fluid edu-banner-ev-con-3">
		<div class="row sub-row">
			<div class="col-12 py-5">
				<div class="col-6 text-right py-5 px-5 mobile-100-percent">
				<p class="font-light font-40-m font-lightblack">다양하고 차별화된 </p>
				<p class="font-light font-bold font-40-m"><span style="color:#f3db85">크루팩토리</span></p>
				</div>
				<div class="col-6 text-left mobile-100-percent py-5">
				<p class="font-light font-20-m font-gray" style="line-height:1.5em;">승무원 출신의 교관들과 전문 강사들의 전문적이고 실용적이며 차별화된 교육을 진행, 항공운항 대학 전형별 트랜드에 맞춰 체계적인 교육을 통해 메인 대학 100%합격을 목표로 진행합니다.</p></div>
			</div>
		</div>
	</div>
				<div class="container-fluid edu-banner-ev-con-4">
		<div class="row sub-row">
			<div class="col-12 py-5">
				<div class="col-6 text-right py-5 px-5 mobile-100-percent">
				<p class="font-light font-40-m font-lightblack">틀림없는 선택, 틀림없는</p>
				<p class="font-light font-bold font-40-m"><span style="color:#8b9fc3">결과로 증명하다</span></p>
				</div>
				<div class="col-6 text-left mobile-100-percent py-5 font-bold">
				<p class="font-light font-20-m  font-bold font-lightblack" style="line-height:1.5em;">인하공전 항공운항과 - [면접만점자 배출]</p>
				<p class="font-light font-20-m font-bold font-lightblack" style="line-height:1.5em;">한서대 항공관광학과 및 주요대학 - [장학생 배출]</p>
				<p class="font-light font-20-m font-bold font-lightblack" style="line-height:1.5em;">수원과학대 항공관광과 - [수석 합격생 배출]</p>
				<p class="font-light font-20-m font-bold font-lightblack" style="line-height:1.5em;">재능대 항공운항서비스과 - [수석 / 차석 합격생 배출]</p>
				<p class="font-light font-20-m  font-bold font-lightblack" style="line-height:1.5em;">두원공과대 항공서비스과 - [전액 특별 장학생 배출]</p>
				<p class="font-light font-20-m font-bold font-lightblack" style="line-height:1.5em;">호원대 항공서비스과 - [장학금 특별 장학생 배출]</p></div>
			</div>
		</div>
		<div class="row sub-row" style="background-color:#ffffff;">
		  <div class="py-5" style="margin: 0 auto; text-align: center;">
				<p class="">
					<span class="font-black font-40-m font-bold my-2">합격생 간담회</span><span class="font-lightblack font-40-m my-2"> 현장사진</span></p>
				<div class="line-2 my-2 py-3" style="width: 100px; margin: 0 auto;"></div>
			</div>
			<div class="col-12 my-1">
				<div class="col-1"></div>
				<div class="col-5 mx-1"><img src="/img/event-pa-img-3.png" id="mobile-100-percent"></div>
				<div class="col-5 mx-1"><img src="/img/event-pa-img-4.png"  id="mobile-100-percent"></div>
				<div class="col-1"></div>
			</div>
			<div class="col-12 my-1">
				<div class="col-1"></div>
				<div class="col-5 bg-light-gray mx-1" style="height:100%;">
				<div class="col-12 py-5 px-5">
				<p class="font-light font-26-m font-black">모든 학생 참여가능</p>
				<p class="font-lightblack font-40-m font-bold my-2 mobile-hidden">수강생 / 비수강생</p><br>
				<p class="font-light font-16-m font-gray mobile-hidden">우리학원 재학생이 아니라구요?</p>
				<p class="font-light font-16-m font-gray mobile-hidden">크루팩토리에서 진행하는 합격생 간담회는</p>
				<p class="font-light font-16-m font-gray mobile-hidden">수강생이든 비수강생이든</p>
				<p class="font-light font-16-m font-gray mobile-hidden">자유롭게 신청하고 참여할 수 있습니다</p>
				</div>
				</div>
				<div class="col-5 mx-1"><img src="/img/event-pa-img-6.png"  id="mobile-100-percent"></div>
				<div class="col-1"></div>
			</div>
			<div class="col-12 my-1">
				<div class="col-1"></div>
				<div class="col-5 mx-1"><img src="/img/event-pa-img-7.png" id="mobile-100-percent"></div>
				<div class="col-5 mx-1"><img src="/img/event-pa-img-8.png"  id="mobile-100-percent"></div>
				<div class="col-1"></div>
			</div>
			<div class="col-12 my-1">
				<div class="col-1"></div>
				<div class="col-5 mx-1"><img src="/img/event-pa-img-5.png"  id="mobile-100-percent"></div>
				<div class="col-5 bg-light-gray mx-1" style="height:100%;">
				<div class="col-12 py-5 px-5">
				<p class="font-light font-26-m font-black mobile-hidden">도전과 열정을 응원합니다</p>
				<p class="font-lightblack font-40-m font-bold my-2 mobile-hidden">You Can Do it</p><br>
				<p class="font-lightblack font-40 font-bold my-1 mobile-show">You<br>Can Do it</p><br>
				<p class="font-light font-16-m font-gray mobile-hidden">승무원을 꿈꾸는 여러분들이</p>
				<p class="font-light font-16-m font-gray mobile-hidden">합격하는 그 날까지</p>
				<p class="font-light font-16-m font-gray mobile-hidden">크루팩토리가 함께 하겠습니다</p>
				</div>
				<div class="col-1"></div>
			</div>
		</div>
		<div class="col-12 py-5 pd-5"></div>
	</div>
</div>
</div>


<!--  예비승무원대회  -->
<div id ="blogre">
	<div class="container-fluid edu-banner-ev-con-1">
		<div class="row sub-row">
			
			<div class="line-1-gray my-2" style="width: 100%; margin: 0 auto;"></div>
			<div class="col-12 text-center" id="mobile-100-percent">
				<div class="col-6 text-center" id="mobile-100-percent"><img src="/img/event-re-img.png" id="mobile-100-percent"></div>
				<div class="col-6 py-5 px-5" id="mobile-100-percent" style="text-align:left;">
				<p class="font-light font-26-m font-black">Stewardess Contest</p>
				<p class="font-black font-40-m font-bold my-2">예비승무원 선발대회</p><br>
				<p class="font-light font-16-m font-gray">1년에 한 번 실제 면접장과 같은 분위기 속에서</p>
				<p class="font-light font-16-m font-gray">진행하는 예비승무원 선발대회</p>
				<p class="font-light font-16-m font-gray">각지에서 모여든 여러 친구들과 함께 경쟁하며</p>
				<p class="font-light font-16-m font-gray">실제 면접관 출신 교육관의 평가와 더불어 나의 수준을</p>
				<p class="font-light font-16-m font-gray">체크하고 긴장감을 극복하며 경험해 보는 시간</p>
				<div class="col-12">
				<div class="col-6 off-hide main-pro-category py-5 px-1">
				<a href="/counsel/online.do"><button class="btn btn-primary" style="width: 100%;">빠른상담 <img src="/img/com01.png"></button></a></div>
				<div class="col-6 off-hide main-pro-category py-5 px-1">
				<a href="https://pf.kakao.com/_QWAEl"><button class="btn btn-primary" style="width: 100%;">카톡상담 <img src="/img/com02.png"></button></a></div>
			</div>
			</div>
			</div>
			<div class="line-1-gray my-2" style="width: 100%; margin: 0 auto;"></div>
		</div>
	</div>
	
		<div class="container-fluid edu-banner-ev-con-2">
		<div class="row sub-row">
			<div class="col-12">
				<div class="col-7 py-5 px-5 mobile-100-percent"><p class="font-white font-90-m font-bold my-2 pt-5">WHY? 예승대회</p>
				<p class="font-light font-24-m font-lightblack" style="line-height:1.5em;">친구와 있을때와 같은 편한 분위기속의 면접이 아닌 실제 면접장처럼 떨리는 곳,  긴장되는 곳에서 잘해야 하는 항공과 입시 면접 , 떨릴수록 진짜 원래의 모습이 나오므로 그 부분에 익숙해지고 숙달하며 성장하는 기회</p></div>
				<div class="col-5 mobile-100-percent"><img src="/img/event-re-img-2.png" id="mobile-100-percent"></div>
			</div>
		</div>
	</div>
			<div class="container-fluid edu-banner-ev-con-3">
		<div class="row sub-row">
			<div class="col-12 py-5">
				<div class="col-6 text-right py-5 px-5 mobile-100-percent">
				<p class="font-light font-40-m font-lightblack">다양하고 차별화된 앞서가는</p>
				<p class="font-light font-bold font-40-m"><span style="color:#fdd3db">크루팩토리</span></p>
				</div>
				<div class="col-6 text-left mobile-100-percent py-5">
				<p class="font-light font-20-m font-gray" style="line-height:1.5em;">승무원 출신의 교관들과 전문 강사들의 전문적이고 실용적이며 차별화된 교육을 진행, 항공운항 대학 전형별 트랜드에 맞춰 체계적인 교육을 통해 메인 대학 100%합격을 목표로 진행합니다.</p></div>
			</div>
		</div>
	</div>
				<div class="container-fluid edu-banner-ev-con-4">
		<div class="row sub-row">
			<div class="col-12 py-5">
				<div class="col-6 text-right py-5 px-5 mobile-100-percent">
				<p class="font-light font-40-m font-lightblack">역대 예비승무원대회</p>
				<p class="font-light font-bold font-40-m"><span style="color:#8b9fc3">수상내역</span></p>
				</div>
				<div class="col-6 text-left mobile-100-percent py-5">
				<p class="font-light font-20-m font-gray" style="line-height:1.5em;">제 1회 수상자 - 1등 [2016학년도 인하공전 합격]</p>
				<p class="font-light font-20-m font-gray" style="line-height:1.5em;">제 2회 수상자 - 1등 [2017학년도 항공과 입시 전대학 최초합격]</p>
				<p class="font-light font-20-m font-gray" style="line-height:1.5em;">제 3회 수상자 - 1/2등 [2018학년도 한서대학교 합격] </p>
				<p class="font-light font-20-m font-gray" style="line-height:1.5em;">제 4회 수상자 - 1등 [2019학년도 한서대학교 합격]</p>
				<p class="font-light font-20-m font-gray" style="line-height:1.5em;">제 4회 수상자 - 2/3등 [2019학년도 수원과학대 합격]</p></div>
			</div>
		</div>
		<div class="row sub-row" style="background-color:#ffffff;">
		  <div class="py-5" style="margin: 0 auto; text-align: center;">
				<p class="">
					<span class="font-black font-40-m font-bold my-2">예비승무원 선발대회</span><span class="font-lightblack font-40-m my-2"> 현장사진</span></p>
				<div class="line-2 my-2 py-3" style="width: 100px; margin: 0 auto;"></div>
			</div>
			<div class="col-12 my-1">
				<div class="col-1"></div>
				<div class="col-5 mx-1"><img src="/img/event-re-img-3.png" id="mobile-100-percent"></div>
				<div class="col-5 mx-1"><img src="/img/event-re-img-4.png"  id="mobile-100-percent"></div>
				<div class="col-1"></div>
			</div>
			<div class="col-12 my-1">
				<div class="col-1"></div>
				<div class="col-5 bg-light-gray mx-1" style="height:100%;">
				<div class="col-12 py-5 px-5">
				<p class="font-light font-26-m font-black">모든 학생 참여가능</p>
				<p class="font-lightblack font-40-m font-bold my-2 mobile-hidden">수강생 / 비수강생</p><br>
				<p class="font-light font-16-m font-gray mobile-hidden">우리학원 재학생이 아니라구요?</p>
				<p class="font-light font-16-m font-gray mobile-hidden">크루팩토리에서 진행하는 예비승무원대회는</p>
				<p class="font-light font-16-m font-gray mobile-hidden">수강생이든 비수강생이든</p>
				<p class="font-light font-16-m font-gray mobile-hidden">자유롭게 신청하고 참여할 수 있습니다</p>
				</div>
				</div>
				<div class="col-5 mx-1"><img src="/img/event-re-img-6.png"  id="mobile-100-percent"></div>
				<div class="col-1"></div>
			</div>
			<div class="col-12 my-1">
				<div class="col-1"></div>
				<div class="col-5 mx-1"><img src="/img/event-re-img-7.png" id="mobile-100-percent"></div>
				<div class="col-5 mx-1"><img src="/img/event-re-img-8.png"  id="mobile-100-percent"></div>
				<div class="col-1"></div>
			</div>
			<div class="col-12 my-1">
				<div class="col-1"></div>
				<div class="col-5 mx-1"><img src="/img/event-re-img-5.png"  id="mobile-100-percent"></div>
				<div class="col-5 bg-light-gray mx-1" style="height:100%;">
				<div class="col-12 py-5 px-5">
				<p class="font-light font-26-m font-black mobile-hidden">이번엔 내가 주인공</p>
				<p class="font-lightblack font-40-m font-bold my-2">You Can Do it</p><br>
				<p class="font-light font-16-m font-gray mobile-hidden">꿈이 있어 소중한 오늘,</p>
				<p class="font-light font-16-m font-gray mobile-hidden">내 꿈에 한 발 더 나아갈 수 있도록</p>
				<p class="font-light font-16-m font-gray mobile-hidden">여러분도 도전하세요</p>
				</div>
				<div class="col-1"></div>
			</div>
		</div>
		<div class="col-12 py-5 pd-5"></div>
	</div>
</div>
</div>
<div class="container-fluid ">
	<div class="row text-center">
		<div class="col-12"><img src="/img/detail_200901_04.gif"  class="mobile-100-percent"></div>	
	
	
</div>







<script>
if ($(window).width() > 768) {
	var mainReviewBestOfBest = new Swiper('#sw-main-review-bob', {
		slidesPerView : 2.25,
		pagination: { el: '#sw-main-review-bob-pagination', clickable: true, },
	});
	var mainReviewBestReply = new Swiper('#sw-main-review-reply', {
		slidesPerView : 2.35,
		pagination: { el: '#sw-main-review-reply-pagination', clickable: true, },
	});
	var mainReviewThumbnail = new Swiper('#sw-main-review-thumbnail', {
		slidesPerView : 11,
		//slidesPerColumn : 2,
		loopFillGroupWithBlank: true,
		loop: true,
		autoplay: { delay: 1000,  disableOnInteraction: false, },
	});
}else{
	var mainReviewBestOfBest = new Swiper('#sw-main-review-bob', {
		slidesPerView : 1.1,
		pagination: { el: '#sw-main-review-bob-pagination', clickable: true, },
	});
	var mainReviewBestReply = new Swiper('#sw-main-review-reply', {
		slidesPerView : 1.1,
		pagination: { el: '#sw-main-review-reply-pagination', clickable: true, },
	});
	var mainReviewThumbnail = new Swiper('#sw-main-review-thumbnail', {
		slidesPerView : 6,
		//slidesPerGroup: 2,
		loopFillGroupWithBlank: true,
		loop: true,
		autoplay: { delay: 1000,  disableOnInteraction: false, },
	});
}
</script>






<div class="container-fluid" id="page1">
	<div class="row sub2-row site-map-row mt-5 mb-4">
		<div class="col-12">
		  <div class="col-12 mb-1">
		    <h1>상담신청</h1>
		  </div>
		  <div class="col-12 py-2 line-2-black" style="width:200px; margin:0 auto;"></div>
		  <div class="col-12 font-20 my-3"></div>
		  <div class="col-12 py-2">크루팩토리의 높은 합격률은 지금까지 소수정원제 원칙으로 그룹과외 수업을 고집한 결과입니다.</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row sub2-row">
		<div class="col-12">
			<form role="form" name="specclass" method="post" action="/counsel/specclassok.do" data-toggle="validator">
			<input type="hidden" name="result" id="result" value="${ param.result }">
			<input type="hidden" name="phone" id="phone" value="">
			<input type="hidden" name="office" value="gangnam">
			<input type="hidden" name="stat" value="신규">
			<input type="hidden" name="gubun" value="특강신청">
			<input type="hidden" name="path" value="specclass.do">
			<input type="hidden" name="domain" value="<%= request.getServerName() %>">
			<input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
			<input type="hidden" name="reurl" value="specclass.do"/>
			<div class="col-12 my-3 line-1"></div>
			<div class="col-12">
				<div class="col-6 px-2 mobile-100-percent">
					<div class="my-2 font-bold font-18">개인정보입력</div>
						<div class="card col-12 bg-light-gray">
						<div class="card-body">
							<div class="form-group">
		                      <label for="name" class="font-bold">이름/나이</label>
		                      <div class="input-group">
		                      <input type="text" class="form-control" name="name" id="name" maxlength="20" onkeyup="onlyKorean('name')" placeholder="이름" data-error="이름을 정확히 입력하세요" required>
		                      <input type="number" class="form-control input-group-append ml-2" oninput="maxLengthCheck(this)" name="age" id="age" placeholder="나이" maxlength="2" data-error="나이를 정확히 입력하세요" required>
		                      </div>
		                      <div class="help-block with-errors text-danger"></div>
		                    </div>
					        <div class="form-group">
		                      <label for="input-gender" class="font-bold">연락처</label>
		                      <div class="input-group">
		                        <select class="form-control mr-2" id="mobile-1" name="mobile-1" style="height:3.75rem;">
		                          <option value="010">010</option>
		                        </select>
			                    <input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="mobile-2" id="mobile-2" maxlength="4" data-error="연락처를 정확히 입력하세요" required>
			                    <input type="number" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="mobile-3" id="mobile-3" maxlength="4" data-error="연락처를 정확히 입력하세요" required>
			                  </div>
			                  <div class="help-block with-errors text-danger"></div>
			                </div>
			                <div class="mt-5">
		                    	<div class="custom-control custom-checkbox">
			                    	<input type="checkbox" name="agree" value="yes" id="agree" class="custom-control-input" checked>
			                        <label for="agree" class="custom-control-label">개인정보 이용방침에 동의합니다. <span class="mx-2"><a href="" data-toggle="modal" data-target="#personalInfo"><b>자세히보기</b></a></span></label>
			                	</div>
		                    </div>
						</div>
					</div>
				</div>
				<div class="col-6 px-2 mobile-100-percent">
					<div class="my-2 font-bold font-18">신청내용</div>
					<div class="col-12 card">
						<div class="card-body">
							<div class="form-group">
								<label for="memo" class="font-bold">선택항목</label>
								<div class="custom-control custom-checkbox font-16-review2">
									<input type="checkbox" name="hopse" value="항공운항과 대학입시" id="keoz" class="custom-control-input" checked>
									<label for="keoz" class="custom-control-label">항공운항과 대학입시</label>
								</div>
								<div class="custom-control custom-checkbox font-16-review2">
									<input type="checkbox" name="hopse" value="항공경영과 대학입시" id="ko" class="custom-control-input">
									<label for="ko" class="custom-control-label">항공경영과 대학입시</label>
								</div>
								<div class="custom-control custom-checkbox font-16-review2">
									<input type="checkbox" name="hopse" value="호텔경영과 대학입시" id="os" class="custom-control-input">
									<label for="os" class="custom-control-label">호텔경영과 대학입시</label>
								</div>
								
								
								<div class="help-block with-errors text-danger"></div>
							</div>
							<div class="form-group">
		               		<label for="memo" class="font-bold">신청내용</label>
		               		<textarea class="form-control" name="memo" id="memo" placeholder="궁금한사항을 적어주세요." rows="3" maxlength="300"></textarea>
		                  	<div class="help-block with-errors text-danger"></div>
		               </div>
               	</div>
               </div>
				</div>
				<div class="col-12 my-3">
				<button id="gogo" class="btn btn-primary btn-lg btn-block font-bold" style="height:3.75rem">상담신청</button>
				</div>
			</div>
			</form>
		</div>
	</div> 
</div>

<div class="containter-fluid mobile-hidden" style="margin-top:100px;"></div>

<script>

$(document).ready(function() {
 	$("#counsel").validator();	//폼발리데이터
});

$(document).ready(function() {
 	var data = $("#result").val();
 	if(data == "ok"){
 		alert("특강신청이 완료되었습니다.");
 		location.href="/counsel/specclass.do";
 	}
});

$(document).on('click', '#gogo', function(){
	var mobile = $("#mobile-1").val() + $("#mobile-2").val() + $("#mobile-3").val();
	$("#phone").val(mobile);
	
	
	if($('input[name=name]').val().length < 2){
		alert("이름은 두글자이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=age]').val().length <= 1){
		alert("나이는 두자리이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=mobile-2]').val().length < 3){
		alert("휴대전화 앞자리는 세자이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=mobile-3]').val().length <= 3){
		alert("휴대전화 뒷자리는 네자이어야 합니다.");
		return false;
	}	
	$("#specclass").submit();
});

function fnMove(seq) {
	var offset = $("#page" + seq).offset();
	$('html, body').animate({
		scrollTop : offset.top
	}, 400);
}

$(document).ready(function(){
	$('#blogpa').show();
	$('#blogre').hide();
});

function clickBlog(section){
	
	if (section == 'pa'){
		$('#blog-section-pa').addClass('activing');
		$('#blog-section-re').removeClass('activing');
		$('#blogpa').show();
		$('#blogre').hide();
	}
	else{
		filterClass = '.re';
		$('#blog-section-pa').removeClass('activing');
		$('#blog-section-re').addClass('activing');
		$('#blogpa').hide();
		$('#blogre').show();
	}
}

$(document).ready(function( $ ) {
	$('.counter').counterUp({
		delay: 10,
		time: 3000
	});
});

var wow = new WOW( {
	animateClass: 'animated',
	offset:       100
});

wow.init();
</script>
<script src="../dist/js/jquery.counterup.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<script src="../dist/js/bootstrap.min.js"></script>
	<script src="../dist/js/swiper.min.js"></script>

<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>

</body>
</html>