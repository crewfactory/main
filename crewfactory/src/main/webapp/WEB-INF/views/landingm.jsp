<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="include/site.jsp"%>
<title><%=site_title%></title>
<meta name="description" content="<%=site_descript%>" />
<meta property="og:title" content="<%=site_title%>">
<meta property="og:description" content="<%=site_descript%>">
<%@ include file="include/header.jsp"%>

</head>

<body>

<%@ include file = "include/nav.jsp" %>

<div class="container-fluid">
	<div class="row">
		<div class="col-12 off-hide text-center" style="margin:0 auto;background:url('/img/landing/main-visual-01-bg.jpg') no-repeat right; background-size:180% 100%; height:350px;">
			<div class="col-3 mobile-hidden"></div>
			<div class="col-6 mobile-100-percent text-center wow fadeInUp" data-wow-delay="0.5s" style="height:500px; margin-top:30px;">
				<img src="/img/landing/main-visual-01-txt.png" class="mobile-100-percent">
			</div>
			<div class="col-3 mobile-hidden"></div>
		</div>
	</div>
</div>

<div class="container-fluid" style="background:url('/img/landing/why-bg-img.jpg') no-repeat center;">
	<div class="row landing py-5 wow fadeInUp">
		<div class="col-12 py-5 mb-5 text-center">
			<p class="font-white font-700 my-5" style="font-size:3.5rem;">승무원학습,<span class="ml-2 font-700 font-pink">밀착케어</span><span class="font-100">가 왜 필요할까?</span></p>
			<img src="/img/landing/why-bullet-img.png" class="my-5 py-5">
			<p class="font-white font-lh-20rem" style="font-size:1.5rem;">
			승무원 학습을 <span class="font-pink">밀착케어</span>하는 이유는 인강이나 온라인으로 학습이 불가능하기 때문입니다.<br>
			개인의 성향을 파악하는 것이 우선이며 <span class="font-pink">Appearance, Voice, 자세, 느낌</span>  등에 따라 이미지적인 외형과 <br>논리적이고 학문적인 인터뷰를 준비하여 진정성있는 의사전달을 할 줄 알아야 합니다. </p>
		</div>
	</div>
</div>

<div class="container-fluid wow bounceInUp" style="height:800px;">
	<div class="row landing py-5">
		<div class="col-12 py-5 text-center">
			<p class="mt-5 mb-4" style="font-size:2rem;">크루팩토리에서는</p>
			<img src="/img/landing/step-title.png" class="mb-5">
			<!-- <p class="font-700 my-5" style="font-size:3.5rem;">될때까지<span class="ml-1 font-100">학습 해주니까!</span></p> -->
		</div>
		<div class="col-12 text-center" style="background:url('/img/landing/step-img.png') no-repeat top; height:150px;">
			<div class="col-12" style="padding-top:27px;">
				<div class="col-3 my-3" style="font-size:1.25rem; font-weight:450; line-height:2rem;">
					<img src="/img/landing/step1-img.png">
					<p class="mt-5">전공/비전공자 구분<br>실력에 따른 소수그룹과정 추천<br>컨설턴트 관리자지정</p>
				</div>
				<div class="col-3 my-3" style="font-size:1.25rem; font-weight:450; line-height:2rem;">
					<img src="/img/landing/step2-img.png">
					<p class="mt-5">항공사전문과정선택<br>원장, 부원장 개별면담</p>
				</div>
				<div class="col-3 my-3" style="font-size:1.25rem; font-weight:450; line-height:2rem;">
					<img src="/img/landing/step3-img.png">
					<p class="mt-5">단계별실력체크<br>대한항공과 아시아나항공 실전면접<br>외항사 압박면접<br>실무면접부터 임원면접까지</p>
				</div>
				<div class="col-3 my-3" style="font-size:1.25rem; font-weight:450; line-height:2rem;">
					<img src="/img/landing/step4-img.png">
					<p class="mt-5">합격시까지 업그레이드되는<br>심화과정 무료신청</p>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="container-fluid" style="background:url('/img/landing/bg-review.jpg') no-repeat center; height:1100px;">
	<div class="row landing py-5">
		<div class="col-12 text-center my-5">
			<p class="font-300 pt-3 my-5" style="font-size:3.5rem;">결국중요한것은, <span class="font-700">전문성</span>이기 때문입니다.</p>
			<p class="font-300 py-5 my-4" style="font-size:2rem;">크루팩토리의 수강생들도 여러분과 똑같은 고민을 안고 시작했습니다.</p>
			<p class="font-500 font-pink my-3" style="font-size:1.5rem; line-height:2rem;">항공승무원이라는 대기업에 입사하기 위해서는 절대적인 시간이 필요하고<br>
항공사별 전문성을 숙지하고 반복되는 인터뷰연습만큼 중요한건 없습니다. 최대 6개월까지는 노력이 필요합니다.</p>
		</div>
		<div class="swiper-container my-5 sw-main-review">
			<div class="swiper-wrapper">
				<div class="swiper-slide"><img src="/img/main-review-1.png" class="rad-div-20"></div>
				<div class="swiper-slide"><img src="/img/main-review-2.png" class="rad-div-20"></div>
				<div class="swiper-slide"><img src="/img/main-review-3.png" class="rad-div-20"></div>
				<div class="swiper-slide"><img src="/img/main-review-4.png" class="rad-div-20"></div>
				<div class="swiper-slide"><img src="/img/main-review-5.png" class="rad-div-20"></div>
				<div class="swiper-slide"><img src="/img/main-review-6.png" class="rad-div-20"></div>
			</div>
		</div>
		<div class="col-12 text-center sw-main-review-pagination"></div>
	</div>
</div>

<script>
var $btnTop = $('.btn-top');
var mainReviewSwiper = new Swiper('.sw-main-review', {
	effect: 'coverflow',
	grabCursor: true,
	loop: true,
	centeredSlides: true,
	slidesPerView: 2.3,
	coverflowEffect: {
		rotate: 50,
		stretch: 0,
		depth: 300,
		modifier: 1,
		slideShadows: true,
	},
	pagination: {
		el: '.sw-main-review-pagination', clickable: true,
	},
	/* autoplay : {
		delay : 3000,
		disableOnInteraction : true,
	}, */
});
</script>


<div class="container-fluid" style="background:url('/img/landing/main-history-bg.jpg') no-repeat center; height:700px;">
	<div class="row landing py-5">
		<div class="col-12 my-5">
			<div class="col-6">
			<p class="my-5 font-white font-100" style="font-size:3.25rem; line-height:5rem;">
				크루팩토리는<br>항공승무원이 되기 위한<br><span class="font-blue font-700 mr-1">최고의 선택</span>입니다<br>
			</p>
<!-- 			<p class="my-5 font-white font-16">전 세계 29개국, 450여개 센터, 누적 회원 수 300만명.<br>
수많은 사람들이 월스트리트 잉글리쉬를 찾는 이유는 명확합니다.<br>
가장 확실한 방법이기 때문입니다.</p> -->
			</div>
			<div class="col-6">
				<div class="my-5 col-12">
					<ul class="col-12 my-5">
						<li class="col-6 float-left">
							<div>
								<span class="font-700 font-blue mb-3 counter1" style="font-size:5rem;">8</span><span class="mx-3 font-700 font-15 font-white">명원칙</span>
							</div>
							<div class="col-12 my-4" style="width:150px; height:4px; background:#03d8ff;"> </div>
							<div class="col-12 font-white font-18">1 Class당 학습인원 8명원칙</div>
						</li>
						<li class="col-6 float-left">
							<div>
								<span class="font-700 font-blue mb-3 counter1" style="font-size:5rem;">10</span><span class="mx-3 font-700 font-15 font-white">년이상</span>
							</div>
							<div class="col-12 my-4" style="width:150px; height:4px; background:#03d8ff;"> </div>
							<div class="col-12 font-white font-18 font-lh-20rem">원장/부원장, 강사들의 평균 경력 <br>10년이상</div>
						</li>
					</ul>
					<ul class="col-12 my-5">
						<li class="col-6 float-left">
							<div>
								<span class="font-700 font-blue mb-3 counter1" style="font-size:5rem;">1</span><span class="mx-3 font-700 font-15 font-white">회</span>
							</div>
							<div class="col-12 my-4" style="width:150px; height:4px; background:#03d8ff;"> </div>
							<div class="col-12 font-white font-18">한번의 수강료로 합격시까지</div>
						</li>
						<li class="col-6 float-left">
							<div>
								<span class="font-700 font-blue mb-3 counter1" style="font-size:5rem;">3</span><span class="mx-3 font-700 font-15 font-white">밀착</span>
							</div>
							<div class="col-12 my-4" style="width:150px; height:4px; background:#03d8ff;"> </div>
							<div class="col-12 font-white font-18 font-lh-20rem">담당멘토, 취업관리팀, 원장/부원장<br>컨설턴트의 3:1 밀착관리</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row pt-5">
		<div class="col-12 text-center my-5">
			<p class="font-400 my-3 font-gray font-16">커리큘럼</p>
			<p class="font-100 my-5" style="font-size:3rem;">대한항공/아시아나항공 <span class="font-500">FSC 취업 준비반</span></p>
			<p class="font-400 font-gray font-20"><span class="font-black font-600">개별 성향</span>에 맞춰 최고의 결과를 끌어낼 수 있도록 함과 동시에 <span class="font-black font-600">안정적인 면접과 스킬</span>을 구사할 수 있게 지원합니다.</p>
		</div>
		<div class="col-12 mt-5">
			<div class="col-12 wow slideInLeft">
				<div class="col-7 off-hide"><img src="/img/landing/curri-ko-001.png" class="hvr-grow"></div>
				<div class="col-5 mt-5 off-hide">
					<div class="col-12 my-5 mx-5">
						<p class="mx-5 font-500" style="font-size:2rem;">서류전형 대비</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">자기소개서와 이력서 가이드라인</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">스펙과 경력, 경험에 맞는 작성요령</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">일대일 첨삭</li>
					</ul>
					</div>
				</div>
			</div>
			<div class="col-12 wow slideInRight">
				<div class="col-5 mt-5 off-hide">
					<div class="my-5 mx-5 float-right">
						<p class="mx-5 font-500" style="font-size:2rem;">이미지 메이킹</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">피부생상에 맞는 퍼스널컬러 진단</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">나에게 어울리는 헤어 &amp; 메이크업</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">인사, 자세, 워킹, 표정 등 이미지 표현</li>
					</ul>
					</div>
				</div>
				<div class="col-7 off-hide"><img src="/img/landing/curri-ko-002.png" class="hvr-grow"></div>
			</div>
			<div class="col-12 wow slideInLeft">
				<div class="col-7 off-hide"><img src="/img/landing/curri-ko-003.png" class="hvr-grow"></div>
				<div class="col-5 mt-5 off-hide">
					<div class="col-12 my-5 mx-5">
						<p class="mx-5 font-500" style="font-size:2rem;">항공사별 최근 트렌드 파악</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">기업마다 다른 정보 파악</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">아시아나항공 디귿자워킹과 암리치 연습</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">대한항공 임원,최종면접을 대비한 유니폼 환복</li>
					</ul>
					</div>
				</div>
			</div>
			<div class="col-12 wow slideInRight">
				<div class="col-5 mt-5 off-hide">
					<div class="my-5 mx-5 float-right">
						<p class="mx-5 font-500" style="font-size:2rem;">남들과 차별화된 나의 답변</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">내가 돋보일 수 있는 스토리텔링</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">내 스펙과 환경에 맞는 한국어답변</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">영어답변 및 영어기내방송문 낭독</li>
					</ul>
					</div>
				</div>
				<div class="col-7 off-hide"><img src="/img/landing/curri-ko-004.png" class="hvr-grow"></div>
			</div>
			<div class="col-12 wow slideInLeft">
				<div class="col-7 off-hide"><img src="/img/landing/curri-ko-005.png" class="hvr-grow"></div>
				<div class="col-5 mt-5 off-hide">
					<div class="col-12 my-5 mx-5">
						<p class="mx-5 font-500" style="font-size:2rem;">일대일 맞춤 피드백</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">비디오촬영을 통한 면접관의 시선 분석</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">학력,경력,성별에 따른 개인별 피드백</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">남자 스튜어드 특강으로 차별화된 대비</li>
					</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid" style="background:#d5f3f3;">
	<div class="row py-5">
		<div class="col-12 text-center my-5">
			<p class="font-400 my-3 font-gray font-16">커리큘럼</p>
			<p class="font-100 my-5" style="font-size:3rem;">외국항공사&nbsp;<span class="font-500">취업 준비 과정</span></p>
			<p class="font-400 font-gray font-20"><span class="font-black font-600">개인</span>의 이미지 진단 및 분석을 통해 품격있고 인정받는 <span class="font-black font-600">인재양성</span>을 목표로 합니다.</p>
		</div>
		<div class="col-12 my-5 bg-white">
			<div class="col-12 wow slideInLeft">
				<div class="col-7 off-hide"><img src="/img/landing/curri-os-001.png" class="hvr-grow"></div>
				<div class="col-5 mt-5 off-hide">
					<div class="col-12 my-5 mx-5">
						<p class="mx-5 font-500" style="font-size:2rem;">Cover letter &amp; Resume</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">스펙과 경력, 경험에 맞는 작성요령</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">일대일 첨삭</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">CV drop 통과를 위한 실전 연습</li>
					</ul>
					</div>
				</div>
			</div>
			<div class="col-12 wow slideInRight">
				<div class="col-5 mt-5 off-hide">
					<div class="my-5 mx-5 float-right">
						<p class="mx-5 font-500" style="font-size:2rem;">Image Making</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">피부생상에 맞는 퍼스널컬러 진단</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">나에게 어울리는 헤어 &amp; 메이크업</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">인사, 자세, 워킹, 표정 등 이미지 표현</li>
					</ul>
					</div>
				</div>
				<div class="col-7 off-hide"><img src="/img/landing/curri-os-002.png" class="hvr-grow"></div>
			</div>
			<div class="col-12 wow slideInLeft">
				<div class="col-7 off-hide"><img src="/img/landing/curri-os-003.png" class="hvr-grow"></div>
				<div class="col-5 mt-5 off-hide">
					<div class="col-12 my-5 mx-5">
						<p class="mx-5 font-500" style="font-size:2rem;">1:1 English Interview</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">국가별 특이점과 기업별 인재상 파악</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">영문 필기시험 및 에쎄이</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">키워드 별 워드슈팅</li>
					</ul>
					</div>
				</div>
			</div>
			<div class="col-12 wow slideInRight">
				<div class="col-5 mt-5 off-hide">
					<div class="my-5 mx-5 float-right">
						<p class="mx-5 font-500" style="font-size:2rem;">Group Activities</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">그룹 디스커션, 디베이트</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">타당성 있는 결론 도출 및 팀웍 훈련</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">최근 기출문제 및 차별화된 어필 요령</li>
					</ul>
					</div>
				</div>
				<div class="col-7 off-hide"><img src="/img/landing/curri-os-004.png" class="hvr-grow"></div>
			</div>
			<div class="col-12 wow slideInLeft">
				<div class="col-7 off-hide"><img src="/img/landing/curri-os-005.png" class="hvr-grow"></div>
				<div class="col-5 mt-5 off-hide">
					<div class="col-12 my-5 mx-5">
						<p class="mx-5 font-500" style="font-size:2rem;">Video Interview</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">최근 모든 항공사에 추가된 화상면접 지원방법</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">비디오촬영을 통한 면접관의 시선 분석</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">목소리톤, 아이컨텍 등 언텍트 이미지메이킹</li>
					</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid wow fadeInUp">
	<div class="row landing py-5">
		<div class="col-12 text-center my-5">
			<p class="font-100 my-5" style="font-size:3.5rem;">크루팩토리 <span class="font-500">대표강사진</span></p>
			<p class="font-400 font-gray font-20">실력있는 교육관을 엽입해 <span class="font-black font-600">경쟁력</span>에서 충분히 앞서갈 수 잇도록 해드립니다.</p>
		</div>
	</div>
</div>

<div class="container-fluid wow fadeInUp" style="background:url('/img/landing/main-curri-ko-bg.jpg') no-repeat top;">
	<div class="row landing">
		<div class="col-12 swiper-container sw-pro-thumb">
			<div class="swiper-wrapper">
				<c:forEach items="${professor}" var="pro">
				<div class="swiper-slide">
					<div class="col-7" style="background:url('/img/landing/bg-tablet.png') no-repeat left; height:436px; margin-top:64px">
						<img src="${pro.thumbnail}" width="320px" class="float-right" style="margin-top:36px; margin-right:123px;">
						<div class="ml-5 col-8 text-left" style="position:absolute; top:50px; left:30px;">
							<p class="mt-4 font-white" style="word-break:keep-all; font-size:2.5rem; line-height:3.5rem; font-weight:700;">${pro.subject}</p>
							<p class="mt-4 font-20 font-white"><span class="font-500 font-blue">${pro.proname}</span><span class="ml-2 font-16">${pro.ranks }</span>
								<img src="/img/landing/btn-more.png" class="ml-3"></p>
							<p class="mt-4 font-white font-18" style="font-weight:500; word-break:keep-all;">${pro.sentence}</p>
							<ul class="col-12 mt-5">
								<li class="float-left"><img src="/img/ico-watch-img.png" width="18px"></li>
								<li class="float-left ml-3"><span class="font-white font-14" style="font-weight:300; word-break:keep-all;">${pro.schedule }</span></li>
							</ul>
							<ul class="col-12 mt-2">
								<li class="float-left"><img src="/img/ico-schedule-img.png" width="18px"></li>
								<li class="float-left ml-3"><span class="font-white font-14" style="font-weight:300; word-break:keep-all;">${pro.classnm }</span></li>
							</ul>
						</div>
					</div>
					<div class="col-5 mt-2" style="height:410px;">
						<div class="col-12"><div class="ck-content">${pro.history }</div></div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
		<div class="col-12 swiper-container sw-pro-list">
			<ul class="mt-5 swiper-wrapper">
			<c:forEach items="${professor}" var="pro" varStatus="status">
				<li class="swiper-slide my-3">
					<div class="col-12 rad-div-10 border off-hide text-right" style="background:#fff; width:250px; height:170px;" >
						<img src="${pro.thumbnail}" width="150px" style="margin-right:-30px;">
						<div class="col-8 text-left" style="position:absolute; top:50px; left:30px;">
							<p class="font-20 font-bold" style="color:#00285a;"><strong>${pro.proname}</strong><span class="ml-2 font-14">${pro.ranks}</span></p>
							<p class="font-14 mt-3" style="word-break:keep-all;">${pro.subject}</p>
						</div>
					</div>
				</li>
			</c:forEach>
			</ul>			
		</div>
	</div>
</div>
<script>
	var proListSwiper = new Swiper('.sw-pro-list', {
		slidesPerView : 5,
	});
	var proThumbSwiper = new Swiper('.sw-pro-thumb', {
		slidesPerView : 1,
		thumbs: {
	        swiper: proListSwiper
	      }
	});
</script>

<div class="container-fluid wow fadeInUp">
	<div class="row">
		<div class="col-12 text-center"><img src="/img/landing/img-upsubmit.png">
		</div>
	</div>
</div>

<div class="container-fluid" style="background:#e5e1ff;">
	<div class="row sm-row py-5">
		<div class="col-12 text-center my-5">
			<p class="font-400 my-3 font-16">위치조회, 시설안내</p>
			<p class="font-100 my-5" style="font-size:1.5rem;">강남 크루팩토리 승무원학원은 신사역(3호선)과 논현역(7호선)사이에 위치에 교통이 편리합니다.</p>
			<p class="font-400 font-gray font-20"></p>
		</div>
		<div class="col-12 mb-4">
			<div class="col-12">
				<ul class="col-12 bg-white" style="border-top:3px solid #000; border-bottom:3px solid #000;">
					<li class="float-left mx-3 mt-4"><img src="/img/landing/ico-pin.png" width="25px"></li>
					<li class="float-left mt-4 mb-2"><p class="font-500 font-20">크루팩토리승무원학원 강남캠퍼스</p>
						<div class="font-16 font-gray py-3" style="border-bottom:1px solid #d0d0d0;">서울시 강남구 논현동 18-7 성일빌딩 1F, 2F</div>
						<div class="font-14 font-gray my-3"><span class="font-black font-500 mr-1">신사역</span>3번출구 (3번출구 이용 도보 3분), <span class="font-black font-500 mr-1">논현역</span>7번출구 (7번출구 이용 도보 3분)</div>
						<div class="font-14 font-gray my-3">
							<span class="font-black font-500 mr-2">간선</span>(140, 144, 145, 241, 400, 402, 420, 421, 440, 441, 470, 542, 741)
							<span class="font-black font-500 mx-2">직행</span>(1100, 3030, 3100, 6900, 9700, G746)
							<span class="font-black font-500 mx-2">급행</span>(8001)<br>
							<span class="font-black font-500 mr-2">광역</span>(9404, 9711A, M7412)
							<span class="font-black font-500 mx-2">공항</span>(6009)</div>
					</li>
				</ul>
			</div>
			<div class="col-12 border rad-div-10 off-hide mt-4">
				<div class="col-12" id="map1" style="height: 430px;"></div>
			</div>
		</div>
		<div class="col-12 mb-5">
			<div class="col-12 border rad-div-10 off-hide">
				<div class="swiper-container sw-facil">
					<div style="position: absolute; z-index: 1999; top:0px; left:340px;" id="sw-facil-silde-prev"><img src="/img/landing/img-facil-txt.png"></div>
					<div style="position: absolute; z-index: 1999; top:200px; left:0px;" id="sw-facil-silde-prev"><img src="/img/landing/ico-arrow-left.png"></div>
					<div style="position: absolute; z-index: 1998; top:200px; right:0px;" id="sw-facil-silde-next"><img src="/img/landing/ico-arrow-right.png"></div>
					<div class="swiper-wrapper">
						<div class="swiper-slide"><img src="/img/facil/01.jpg"></div>
						<div class="swiper-slide"><img src="/img/facil/02.jpg"></div>
						<div class="swiper-slide"><img src="/img/facil/03.jpg"></div>
						<div class="swiper-slide"><img src="/img/facil/04.jpg"></div>
						<div class="swiper-slide"><img src="/img/facil/05.jpg"></div>
						<div class="swiper-slide"><img src="/img/facil/06.jpg"></div>
						<div class="swiper-slide"><img src="/img/facil/07.jpg"></div>
						<div class="swiper-slide"><img src="/img/facil/08.jpg"></div>
						<div class="swiper-slide"><img src="/img/facil/09.jpg"></div>
						<div class="swiper-slide"><img src="/img/facil/10.jpg"></div>
						<div class="swiper-slide"><img src="/img/facil/11.jpg"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
    var facilSwiper = new Swiper('.sw-facil', {
      slidesPerView: 1,
      loop: true,
      autoplay : {
			delay : 8000,
			disableOnInteraction : true,
		},
		navigation : {
			nextEl : '#sw-facil-silde-next',
			prevEl : '#sw-facil-silde-prev',
		},
    });
    
   function startSilde(facilSwiper) {
		swiper.autoplay.start();
	}

	function stopSilde(facilSwiper) {
		swiper.autoplay.stop();
	}
</script>


<div class="container-fluid">
	<div class="row landing">
		<div class="col-12 text-center my-5">
			<p class="font-100 my-5" style="font-size:3rem;">크루팩토리를 선택하는 이유는 <span class="font-700">합격</span>이라는 결과 때문입니다.</p>
		</div>
	</div>
</div>
<div class="container-fluid mt-4">
	<div class="row landing py-3" style="border-top:1px solid #e7eaed; border-bottom:1px solid #e7eaed;">
		<div class="col-12 swiper-container sw-review-btn-li">
			<ul class="swiper-wrapper">
				<li class="swiper-slide" style="width:130px;"><a href="/crewpeople/review.do"><button class="review-button bg-sky font-white">전체</button></a></li>
				<li class="swiper-slide" style="width:160px;"><a href="/crewpeople/review.do?section=ko&gubun=ke"><button class="review-button btn-navy font-white">대한항공</button></a></li>
				<li class="swiper-slide" style="width:180px;"><a href="/crewpeople/review.do?section=ko&gubun=oz"><button class="review-button btn-navy font-white">아시아나항공</button></a></li>
				<li class="swiper-slide" style="width:170px;"><a href="/crewpeople/review.do?section=ko&gubun=lcc"><button class="review-button btn-navy font-white">국내항공사</button></a></li>
				<li class="swiper-slide" style="width:170px;"><a href="/crewpeople/review.do?section=os&gubun=ea"><button class="review-button btn-navy font-white">중동항공사</button></a></li>
				<li class="swiper-slide" style="width:170px;"><a href="/crewpeople/review.do?section=os&gubun=eu"><button class="review-button btn-navy font-white">유럽항공사</button></a></li>
				<li class="swiper-slide" style="width:180px;"><a href="/crewpeople/review.do?section=os&gubun=as"><button class="review-button btn-navy font-white">아시아항공사</button></a></li>
			</ul>
		</div>
	</div>
</div>
<script>
if ($(window).width() > 768) {
	var reviewBtn = new Swiper('.sw-review-btn-li', {
		slidesPerView : 'auto',
		spaceBetween: 30,
	});
}else{
	var reviewBtn = new Swiper('.sw-review-btn-li', {
		slidesPerView : 4.5,
	});
}

$(document).ready(function(){
	var param = "${param.gubun}";
	if(param == 'ke'){
		reviewBtn.slideTo(1, 0);
	}else if(param == 'oz'){
		reviewBtn.slideTo(2, 0);
	}else if(param == 'lcc'){
		reviewBtn.slideTo(3, 0);
	}else if(param == 'ea'){
		reviewBtn.slideTo(4, 0);
	}else if(param == 'eu'){
		reviewBtn.slideTo(5, 0);
	}else if(param == 'as'){
		reviewBtn.slideTo(6, 0);
	}else{
		reviewBtn.slideTo(0, 0);	
	}
	
});
</script>
<div class="container-fluid">
	<div class="row landing">
		<div class="my-5 swiper-container sw-interview">
			<div class="swiper-wrapper">
				<c:forEach items="${reviewBest}" var="review">
				<div class="swiper-slide px-2">
					<div class="" style="position:absolute; left:180px; z-index:9999;"><img src="${review.thumbnail}" width="100px" height="100px" class="circle-img border"></div>
					<div class="col-12 border rad-div-10 px-5 py-5" style="position:relative;margin-top:45px;">
						<div class="col-12 px-2 mt-3">
							<div class="col-12 my-2">
								<p class="font-12">${review.classnm}</p>
							</div>
							<div class="col-12 my-2">
								<p class="font-18 font-500">${fn:substring(fn:replace(review.title,'<br>','&nbsp;'), 0, 35)}</p>
							</div>
							<div class="col-12 bg-l-gray my-2 px-3 py-3 font-14">
								${review.age}<span class="mx-2"></span>
								${review.spec}<span class="mx-2"></span>
								${review.gradlv}<span class="mx-2"></span><br>
								${review.langlv}<span class="mx-2"></span>
								${review.reference}
							</div>
							<div class="col-14">
								<p>${review.comment}</p>
							</div>
							<div class="col-12 my-2">
								<p class="font-14 font-gray">${fn:substring(review.description, 0, 100)}...</p>
							</div>
							<div class="col-12 mobile-hidden">
								<p class="font-14">→</p>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>			
		</div>
		<div class="col-12 mb-5 text-center sw-interview-pagination"></div>
	</div>
</div>

<script>
var reviewSwiper = new Swiper('.sw-interview', {
	slidesPerView : 3,
	autoplay : {
		delay : 3000,
		disableOnInteraction : true,
	},
	pagination : {
		el : '.sw-interview-pagination',	clickable : true,
	},	
});
</script>

<%@ include file = "include/footer.jsp" %>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=94scwakr1d"></script>
<script>
function fnMove(seq) {
	var offset = $("#page" + seq).offset();
	$('html, body').animate({
		scrollTop : offset.top
	}, 400);
}

var HOME_PATH = window.HOME_PATH || '.';

var crewfactory = new naver.maps.LatLng(37.513968, 127.020540), map = new naver.maps.Map(
		'map1', {
			center : crewfactory.destinationPoint(100, -200),
			zoom : 16
		}), marker = new naver.maps.Marker({
	map : map,
	position : crewfactory
});

var contentString = [
		'<div class="mx-2 my-2" style="width:260px;">',
		'   <div class=""></div>',
		'   <p class="px-3 py-2 font-20 font-bold">크루팩토리승무원학원</p>',
		'   <p class="px-3 py-2 font-12 font-gray">서울특별시 강남구 논현동 18-4 성일빌딩 1F, 2F <br> 크루팩토리 승무원학원 백아(주)<br>',
		'   <p class="px-3 py-2 font-14 font-black font-bold">T. 02-2038-0065</p>',
		'</div>' ].join('');

/* var infowindow = new naver.maps.InfoWindow({
	content : contentString
}); */

naver.maps.Event.addListener(marker, "click", function(e) {
	if (infowindow.getMap()) {
		infowindow.close();
	} else {
		infowindow.open(map, marker);
	}
});

infowindow.open(map, marker);


</script>

<script>

$('.counter1').counterUp({
	delay: 10,
	time: 500,
});

$('.counter2').counterUp({
	delay: 10,
	time: 1000,
});


</script>

</body>
</html>