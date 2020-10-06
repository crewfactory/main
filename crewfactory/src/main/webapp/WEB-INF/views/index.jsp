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
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
</head>
<body> 

<%@ include file="include/nav.jsp"%>
<%@ include file="include/floating-left.jsp"%>
<%@ include file="include/floating-right.jsp"%>

	<!-- 피씨용 메인비쥬얼 -->
	<div class="container-fluid main-visual mobile-hidden">
		<div class="row">
			<div class="swiper-container" id="sw-main-visual">
				<div class="text-center" style="position: absolute; z-index: 999; bottom: 20px; left: 50%;">
					<button class="mx-1 bg-white border" id="sw-main-visual-silde-prev">
						<img src="/img/ico-prev-btn.png">
					</button>
					<button class="mx-1 bg-white border" id="sw-main-visual-silde-next">
						<img src="/img/ico-start-btn.png">
					</button>
					<button class="mx-1 bg-white border" onclick="stopSlide('mainvisualSwiper')">
						<img src="/img/ico-stop-btn.png">
					</button>
				</div>
				<div class="swiper-wrapper" >
					<!-- 개강일정 -->
					<div class="swiper-slide off-hide" style="background: url('/img/2020-main-visual-03-bg.jpg') no-repeat center;">
						<div class="cf-row off-hide" style="position: relative;">
							<img src="/img/2020-main-visual-003.png">
							<button class="more-view-btn font-16 bg-black font-white" type="button" onclick="location.href='detail/open.do' " style="position: absolute; bottom: 18%; left: 17%;">자세히보기</button>
						</div>
					</div>
					
					<!-- 단기특별반 -->
					<div class="swiper-slide off-hide" style="background: url('/img/2020-main-visual-0911-bg.jpg') no-repeat center;">
						<div class="cf-row off-hide" style="position: relative;">
							<img src="/img/2020-main-visual-0911.png">
							<button class="more-view-btn font-16 bg-black font-white" type="button" onclick="location.href='/detail/new_detail03.do' " style="position: absolute;bottom: 18%; left: 42%;">자세히보기</button>
						</div>
					</div>
					<!-- 814명 합격  -->
					<div class="swiper-slide off-hide" style="background: url('/img/2020-main-visual-0825-bg.jpg') no-repeat center;">
						<div class="cf-row off-hide" style="position: relative;">
							<img src="/img/2020-main-visual-0825.png">
							<button class="more-view-btn font-16 bg-black font-white" type="button" onclick="location.href='/counsel/specclass.do' " style="position: absolute; bottom: 18%; left: 7%;">자세히보기</button>
						</div>
					</div>
					
					<!-- 서비스학과   -->
					<div class="swiper-slide off-hide" style="background: url('/img/2020-main-visual-0928-bg.jpg') no-repeat center;">
						<div class="cf-row off-hide" style="position: relative;">
							<img src="/img/2020-main-visual-0928.png">
							<button class="more-view-btn font-16 bg-black font-white" type="button" onclick="location.href='/counsel/online.do' " style="position: absolute; bottom: 18%; left: 19%;">자세히보기</button>
						</div>
					</div>
					
					<!-- 고2원데이클래스
					<div class="swiper-slide off-hide" >
						<div class="col-12" style="position: relative;">
							<img src="/img/2020-main-visual-0902.jpg">
							<a href='/counsel/specclass2.do'><button class="more-view-btn font-16 " style="position: absolute; bottom:18%; left: 27%;">자세히보기</button></a>
						</div>
					</div> -->
						<!--실제후기 
					<div class="swiper-slide off-hide" style="background: url('/img/2020-main-visual-0901-bg.jpg') no-repeat center;">
						<div class="cf-row off-hide" style="position: relative;">
							<img src="/img/2020-main-visual-0901.png">
							<button class="more-view-btn font-16 bg-black " type="button" onclick="location.href='detail/new_detail01.do' " style="position: absolute; bottom: 24%; left: 7%;">자세히보기</button>
						</div>
					</div> -->
		
					<!--비대면 면접
					<div class="swiper-slide off-hide" style="background: url('/img/2020-main-visual-0003-bg.jpg') no-repeat center;">
						<div class="cf-row off-hide" style="position: relative;">
							<img src="/img/2020-main-visual-0003.png"> <a href='detail/detail03.do'>
							<button class="more-view-btn font-16 font-black" style="position: absolute; bottom: 30%; left: 17%;">자세히보기</button></a>
						</div>
					</div>-->
					<!-- 대한항공정상화 운항 -->
					<div class="swiper-slide off-hide" style="background: url('/img/2020-main-visual-0525-02-bg.jpg') no-repeat center;">
						<div class="cf-row off-hide" style="position: relative;">
							<img src="/img/2020-main-visual-0525-02.png">
							<button class="more-view-btn font-16 bg-black" type="button" onclick="location.href='detail/detail11.do' " style="position: absolute; bottom: 20%; left: 42%;">자세히보기</button>
						</div>
					</div>
					
					
					<!-- 합격생인터뷰 -->
					<div class="swiper-slide off-hide" style="background: url('/img/2020-main-visual-04-bg.jpg') no-repeat center;">
						<div class="cf-row off-hide" style="position: relative;">
							<img src="/img/2020-main-visual-004.png">
							<button class="more-view-btn font-16 bg-black" type="button" onclick="location.href='/crewpeople/review.do?section=ko' " style="position: absolute; bottom: 25%; left: 42%;">자세히보기</button>
						</div>
					</div>
					<!-- 크룹과외로 운영 -->
					<div class="swiper-slide off-hide" >
						<div class="col-12" style="position: relative;">
							<img src="/img/2020-main-visual-new02.jpg">
							<a href='/detail/new_detail02.do'><button class="more-view-btn font-16 font-white" style="position: absolute; bottom:25%; left: 16%;">자세히보기</button></a>
						</div>
					</div>
					<!--대한항공 승무원 채용  -->
					<div class="swiper-slide off-hide" style="background-color: #22212b;">
						<div class="col-12" style="position: relative;">
							<img src="/img/2020-main-visual-0202.png"> <a href='detail/detail01.do'><button class="more-view-btn font-16 font-black" style="position: absolute; bottom: 20%; left: 16%;">자세히보기</button></a>
						</div>
					</div>
					<!-- 남자승무원
					<div class="swiper-slide off-hide" style="background: url('/img/2020-main-visual-0525-01-bg.jpg') no-repeat center;">
						<div class="cf-row off-hide" style="position: relative;">
							<img src="/img/2020-main-visual-0525-01.png">
							<button class="more-view-btn font-16 bg-black" type="button" onclick="location.href='detail/detail09.do' " style="position: absolute; bottom: 20%; left: 12%;">자세히보기</button>
						</div>
					</div>-->
					<!--아시아나첫지원자
					<div class="swiper-slide off-hide" style="background: url('/img/2020-main-visual-06-bg.jpg') no-repeat center;">
						<div class="cf-row off-hide" style="position: relative;">
							<img src="/img/2020-main-visual-006.png">
							<button class="more-view-btn font-16 bg-black" type="button" onclick="location.href='detail/detail03.do' " style="position: absolute; bottom: 15%; left: 43%;">자세히보기</button>
						</div>
					</div>-->
					<!--중동항공사  -->
					<div class="swiper-slide off-hide" style="background: url('/img/2020-main-visual-0525-03-bg.jpg') no-repeat center;">
						<div class="cf-row off-hide" style="position: relative;">
							<img src="/img/2020-main-visual-0525-03.png">
							<button class="more-view-btn font-16 bg-black" type="button" onclick="location.href='detail/detail10.do' " style="position: absolute; bottom: 30%; left: 15%;">자세히보기</button>
						</div>
					</div>
					<!-- 대한항공에 강하다  -->
					<div class="swiper-slide off-hide" style="background: url('/img/2020-main-visual-10-bg.jpg') no-repeat center;">
						<div class="cf-row off-hide" style="position: relative;">
							<img src="/img/2020-main-visual-010.png">
							<button class="more-view-btn font-16 bg-black" type="button" onclick="location.href='/introduce/pro.do' " style="position: absolute; bottom: 15%; left: 0%;">자세히보기</button>
						</div>
					</div>
					<!--대한항공과외  -->
					<div class="swiper-slide off-hide" style="background: url('/img/2020-main-visual-05-bg.jpg') no-repeat center;">
						<div class="cf-row off-hide" style="position: relative;">
							<img src="/img/2020-main-visual-005.png">
							<button class="more-view-btn font-16 bg-black" type="button" onclick="location.href='detail/detail02.do' " style="position: absolute; bottom: 25%; left: 0%;">자세히보기</button>
						</div>
					</div>
					<!--대한항공데이 -->
					<div class="swiper-slide" style="background-color: #e6f8ff;">
						<div class="cf-row" style="position: relative;">
							<img src="/img/2020-main-visual-000.png">
							<button class="more-view-btn font-16 bg-black" type="button" onclick="location.href='detail/detail06.do' " style="position: absolute; bottom: 18%; left: 5%;">자세히보기</button>
						</div>
					</div>
					<!-- 아시아나데이 -->
					<div class="swiper-slide off-hide" style="background: url('/img/2020-main-visual-09-bg.jpg') no-repeat center;">
						<div class="cf-row off-hide" style="position: relative;">
							<img src="/img/2020-main-visual-009.png"> <a href="detail/detail07.do"><button class="more-view-btn font-16 bg-black" style="position: absolute; bottom: 25%; left: 5%;">자세히보기</button></a>
						</div>
					</div>
					<!-- 스카이팀 -->
					<div class="swiper-slide off-hide" style="background: url('/img/2020-main-visual-07-bg.jpg') no-repeat center;">
						<div class="cf-row off-hide" style="position: relative;">
							<img src="/img/2020-main-visual-007.png">
							<button class="more-view-btn font-16 bg-black" type="button" onclick="location.href='detail/detail05.do' " style="position: absolute; bottom: 20%; left: 0%;">자세히보기</button>
						</div>
					</div>
					
					<!-- 강사배너 
					<div class="swiper-slide off-hide" style="background: url('/img/2020-main-visual-08-bg.jpg') no-repeat center;">
						<div class="cf-row off-hide" style="position: relative;">
							<img src="/img/2020-main-visual-008.png">
							<button class="more-view-btn font-16 bg-black" type="button" onclick="location.href='detail/detail04.do' " style="position: absolute; bottom: 15%; left: 5%;">자세히보기</button>
						</div>
					</div>
					 -->

				</div>
				<!-- <div class="swiper-pagination" id="main-visual-swiper-pagination"></div> -->
			</div>
		</div>
	</div>


	<!-- 모바일용 메인비쥬얼 -->
	<div class="container-fluid main-visual-mobile mobile-show">
		<div class="row">
			<div class="swiper-container" id="sw-main-visual-mobile">
				<div class="text-center" style="position: absolute; z-index: 999; bottom: 20px; right: 5%;">
					<button class="mx-1 bg-white border" id="sw-main-visual-silde-prev-mobile">
						<img src="/img/ico-prev-btn.png">
					</button>
					<button class="mx-1 bg-white border" id="sw-main-visual-silde-next-mobile">
						<img src="/img/ico-start-btn.png">
					</button>
					<button class="mx-1 bg-white border" onclick="stopSlide('mainvisualSwiper')">
						<img src="/img/ico-stop-btn.png">
					</button>
				</div>
				<div class="swiper-wrapper">					
					<!-- 개강일정 -->
					<div class="swiper-slide ">
						<a href="detail/open.do"><img src="/img/2020-main-visual-009-mobile.png"></a>
					</div>
					<!--  단기특별반-->
					<div class="swiper-slide">						
						<a href='/detail/new_detail03.do'>
							<img src="/img/2020-mobilel-0910.jpg">	
						</a>
					</div>
					
					<!--814명 합격 -->
					<div class="swiper-slide">						
						<a href='/counsel/specclass.do'>
							<img src="/img/2020-main-visual-0825-mobile.jpg">	
						</a>
					</div>
					<!--814명 합격 -->
					<div class="swiper-slide">						
						<a href='/counsel/online.do'>
							<img src="/img/2020-main-visual-0928-mobile.jpg">	
						</a>
					</div>
					<!--원데이클래스
					<div class="swiper-slide">						
						<a href='/counsel/specclass2.do'>
							<img src="/img/2020-mobilel-0831.jpg">	
						</a>
					</div> -->
					<!--실제후기 
					<div class="swiper-slide">						
						<a href='/detail/new_detail01.do'>
							<img src="/img/2020-main-visual-0831-realreview-m.jpg">	
						</a>
					</div> -->
		
					<!--비대면 
					<div class="swiper-slide">
						<a href='detail/detail03.do'><img src="/img/2020-mobile-visual-0003.png"></a>
					</div>-->
					<!--대한항공 정상화 운항  -->
					<div class="swiper-slide">						
						<a href='/detail/detail11.do'>
							<img src="/img/2020-main-visual-0525-02-mobile.jpg">	
						</a>
					</div>
					
					
					<!--합격후기 -->
					<div class="swiper-slide">
						<a href="/crewpeople/review.do"><img src="/img/2020-main-visual-008-mobile.png"></a>
					</div>
					<!--크룹과외로 운영합니다  -->
					<div class="swiper-slide">						
						<a href='/detail/new_detail02.do'>
							<img src="/img/2020-main-visual-new02-mobile.jpg">	
						</a>
					</div>
					<!-- 대한항공 승무원 채용 -->
					<div class="swiper-slide">
						<a href="detail/detail01.do"><img src="/img/2020-main-visual-001-mobile.png"></a>
					</div>
					<!-- 남자승무원
					<div class="swiper-slide">						
						<a href='/detail/detail09.do'>
							<img src="/img/2020-main-visual-0525-01-mobile.jpg">	
						</a>
					</div>-->
					<!-- 아시아나첫지원자
					<div class="swiper-slide">
						<a href="detail/detail03.do"><img src="/img/2020-main-visual-003-mobile.png"></a>
					</div>-->
					
					<!-- 중동항공사 -->
					<div class="swiper-slide">						
						<a href='/detail/detail10.do'>
							<img src="/img/2020-main-visual-0525-03-mobile.jpg">	
						</a>
					</div>
					<!--대한항공에 강하다  -->
					<div class="swiper-slide">
						<a href="/introduce/pro.do"><img src="/img/2020-main-visual-010-mobile.png"></a>
					</div>
					<!--대한항공 과외  -->
					<div class="swiper-slide">
						<a href="detail/detail02.do"><img src="/img/2020-main-visual-002-mobile.png"></a>
					</div>
					<!--대한항공데이  -->
					<div class="swiper-slide">
						<a href="detail/detail06.do"><img src="/img/2020-main-visual-006-mobile.png"></a>
					</div>
					<!--아시아나데이  -->
					<div class="swiper-slide">
						<a href="detail/detail07.do"><img src="/img/2020-main-visual-007-mobile.png"></a>
					</div>
					<!--스카이팀  -->
					<div class="swiper-slide">
						<a href="detail/detail05.do"><img src="/img/2020-main-visual-005-mobile.png"></a>
					</div>
					
					
										
				</div>
			</div>
		</div>
	</div>




	<%@ include file="index_review.jsp"%>
	
<!-- 구독신청 -->
	<%@ include file="include/subscribe.jsp"%>

<!-- 강사진공통 start -->
<script type="text/javascript"> 
	function checkBrowserHeight(){
		if ($(window).width() > 768) {
			$("#myframe").css("height", "1150px");
		}else if($(window).width() <= 768 && $(window).width() > 450){
			$("#myframe").css("height", "900px");
		}else{
			$("#myframe").css("height", "680px");
		}
	}
</script> 

<iframe src="https://www.crew-factory.com/introduce/mainpro.do" id="myframe" onload="checkBrowserHeight();" frameborder="0" scrolling="no" style="overflow-x:hidden; overflow:auto; width:100%;"></iframe>
<div class="container-fluid text-center mb-5">
	<a href="/introduce/pro.do"><img src="https://www.crew-factory.com/img/more-btn-txt.png"></a>
</div>
<!-- 강사진공통 end -->


	<!-- 중간배너/교육과정 PC-->

	<div class="containter-fluid bg-img-pink mobile-hidden">
		<div class="row event-banner-row">
			<div class="col-12 ">
				<div class="col-2"></div>
			
				<div class="col-5 text-center">
					<img src="/img/cur-txt-img.png">
				</div>
				<div class="col-2  pt-5 mt-4">
					<a href="/counsel/specclass.do"><button class="btn btn-primary" style="width: 250px;">항공운항과 홈페이지 바로가기 &nbsp;▶</button></a>
				</div>
				<div class="col-2"></div>
				
			</div>
		</div>
	</div>

	<!-- 중간배너/교육과정 Mobile-->
	<div class="containter-fluid bg-img-pink mobile-show">
		<div class="row main-row">
			<div class="col-12 px-3">
				<a href="/counsel/specclass.do"><img src="/img/cur-txt-m-img.png" id="mobile-100-percent"></a>
			</div>
		</div>
	</div>

	<!--  커리큘럼 -->
	<div class="container-fluid  mobile-hidden">
	<div class="row sub-row">
		<div class="col-12 text-center">
			<img src="img/main-sign-txt_06.png" class="mobile-75-percent">
		</div>

	</div>
</div>
<div class="container-fluid mb-5 mobile-hidden">
	<div class="row sub-row">
		<div class="col-12 mb-5">
			<ul>
				<li class="float-left px-2 py-2 rad-div-10" style="width:33.33333%;">
					<div class="col-12 rad-div-10">
						<a href="/education/ko.do"><img src="/img/main-edu-img-0001.png" alt="국내항공사 취업준비반" class="rad-div-10"></a>
					</div>
				</li>
				<li class="float-left px-2 py-2 rad-div-10" style="width:33.33333%;">
					<div class="col-12 rad-div-10">
						<a href="/education/os.do"><img src="/img/main-edu-img-0002.png" alt="외국항공사 취업준비반" class="rad-div-10"></a>
					</div>
				</li>
				<li class="float-left px-2 py-2 rad-div-10" style="width:33.33333%;">
					<div class="col-12 rad-div-10">
						<a href="/counsel/specclass.do"><img src="/img/main-edu-img-0003.png" alt="항공운항과" class="rad-div-10"></a>
					</div>
				</li>
				<li class="float-left px-2 py-2 rad-div-10" style="width:33.33333%;">
					<div class="col-12 rad-div-10">
						<a href="/education/steward.do"><img src="/img/main-edu-img-0004.png" alt="남자승무원 스튜어드" class="rad-div-10"></a>
					</div>
				</li>
				<li class="float-left px-2 py-2 rad-div-10" style="width:33.33333%;">
					<div class="col-12 rad-div-10">
						<a href="/detail/detail08.do"><img src="/img/main-edu-img-0005.png" alt="지상직 승무원" class="rad-div-10"></a>
					</div>
				</li>
				<li class="float-left px-2 py-2 rad-div-10" style="width:33.33333%;">
					<div class="col-12 rad-div-10">
						<a href="/education/prvlesson.do"><img src="/img/main-edu-img-0006.png" alt="승무원 과외" class="rad-div-10"></a>
					</div>
				</li>
			</ul>
		</div>	
	</div>
</div>


<!-- 커리큘럼 모바일 -->
<div class="container-fluid mt-3 mobile-show">
	<div class="row sub-row">
		<div class="col-12 text-center">
			<img src="img/main-sign-txt_06.png" class="mobile-75-percent">
		</div>
	</div>
</div>
<!-- 커리큘럼 -->
<div class="container-fluid mobile-show" id="containter-body">
	<div class="row sub-row">
		<div class="col-12">
			<div class="swiper-container sw-curri">
				<div class="swiper-wrapper col-12">
					<div class="swiper-slide">
						<div class="col-12 px-3 py-3" style="border-top: 1px solid #d3d3d3; border-bottom: 1px solid #d3d3d3;">
							<a href="/education/ko.do">
							<div class="col-4"><img src="/img/m/img-curri-ko.png" width="100%"></div>
							<div class="col-8 px-3">
								<!-- <p class="pb-1 font-10 font-gray">Domestic Airlines Cabin-Crew</p> -->
								<div class="col-10 mt-2 py-1" style="font-size:16px;line-height:22px;"><b>국내항공사 취업반 1:8</b></div>
								<div class="col-2 mt-3 py-1 text-right"><img src="/img/m/ico-more.png" width="20px"></div>
								<div class="col-12 py-1 font-14 font-gray">대한항공·아시아나항공 전문</div>
							</div>
							</a>
						</div>
						<div class="col-12" style="height:5px; background:#e6e5e5"></div>
						<div class="col-12 px-3 py-3" style="border-top: 1px solid #d3d3d3; border-bottom: 1px solid #d3d3d3;">
							<a href="/education/os.do">
							<div class="col-4"><img src="/img/m/img-curri-os.png" width="100%"></div>
							<div class="col-8 px-3">
								<div class="col-10 mt-2 py-1" style="font-size:16px;line-height:22px;"><b>외국항공사 취업반 1:8</b></div>
								<div class="col-2 mt-3 py-1 text-right"><img src="/img/m/ico-more.png" width="20px"></div>
								<div class="col-12 py-1 font-14 font-gray font-lh-16">에미레이트·카타르항공 전문</div>
							</div>
							</a>
						</div>
						<div class="col-12" style="height:5px; background:#e6e5e5"></div>
						<div class="col-12 px-3 py-3" style="border-top: 1px solid #d3d3d3; border-bottom: 1px solid #d3d3d3;">
							<a href="/counsel/specclass.do">
							<div class="col-4"><img src="/img/m/img-curri-ipsi.png" width="100%"></div>
							<div class="col-8 px-3">
								<div class="col-10 mt-2 py-1" style="font-size:16px;line-height:22px;"><b>항공운항과 입시반</b></div>
								<div class="col-2 mt-3 py-1 text-right"><img src="/img/m/ico-more.png" width="20px"></div>
								<div class="col-12 py-1 font-14 font-gray font-lh-16">인하공전·한서대 전문 </div>
							</div>
							</a>
						</div>
						
						<div class="col-12" style="height:5px; background:#e6e5e5"></div>
						<div class="col-12 px-3 py-3" style="border-top: 1px solid #d3d3d3; border-bottom: 1px solid #d3d3d3;">
							<a href="/education/steward.do">
							<div class="col-4"><img src="/img/m/img-curri-std.png" width="100%"></div>
							<div class="col-8 px-3">
								<div class="col-10 mt-2 py-1" style="font-size:16px;line-height:22px;"><b>남자승무원 취업반</b></div>
								<div class="col-2 mt-3 py-1 text-right"><img src="/img/m/ico-more.png" width="20px"></div>
								<div class="col-12 py-1 font-14 font-gray font-lh-16">스튜어드 면접 전문</div>
							</div>
							</a>
						</div>
						<div class="col-12" style="height:5px; background:#e6e5e5"></div>
						<div class="col-12 px-3 py-3" style="border-top: 1px solid #d3d3d3; border-bottom: 1px solid #d3d3d3;">
							<a href="/detail/detail08.do">
							<div class="col-4"><img src="/img/m/img-curri-gs.png" width="100%"></div>
							<div class="col-8 px-3">
								<div class="col-10 mt-2 py-1" style="font-size:16px;line-height:22px;"><b>공항지상직 취업반</b></div>
								<div class="col-2 mt-3 py-1 text-right"><img src="/img/m/ico-more.png" width="20px"></div>
								<div class="col-12 py-1 font-14 font-gray font-lh-16">공항서비스·대졸공채 전문</div>
							</div>
							</a>
						</div>
						<div class="col-12" style="height:5px; background:#e6e5e5"></div>
						<div class="col-12 px-3 py-3" style="border-top: 1px solid #d3d3d3; border-bottom: 1px solid #d3d3d3;">
							<a href="/education/prvlesson.do">
							<div class="col-4"><img src="/img/m/img-curri-prv.png" width="100%"></div>
							<div class="col-8 px-3">
								<div class="col-10 mt-2 py-1" style="font-size:16px;line-height:22px;"><b>퍼스널 과외 1:1</b></div>
								<div class="col-2 mt-3 py-1 text-right"><img src="/img/m/ico-more.png" width="20px"></div>
								<div class="col-12 py-1 font-14 font-gray font-lh-16">전공자·스케줄근무자 전문</div>
							</div>
							</a>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>




<!-- 크루모먼트 -->
<%@ include file="index_moment.jsp"%>

<!-- 스케줄러 -->
<%@ include file="index_scheduler.jsp"%>

<!-- 중간배너/학원과외 PC-->
<div class="containter-fluid bg-dark-navy mobile-hidden">
	<div class="row event-banner-row">
		<div class="col-12 py-3">
			<div class="col-2"></div>
			<div class="col-5">
				<img src="/img/choi-txt-img.png">
			</div>
			<div class="col-2 pt-5">
				<a href="/education/ko.do"><button class="btn btn-primary" style="width: 200px;">자세히보기</button></a>
			</div>
			<div class="col-2"></div>
		</div>
	</div>
</div>

<!-- 중간배너/학원과외 Mobile-->
<div class="containter-fluid bg-dark-navy mobile-show" id="mobile-100-percent">
	<div class="row main-row">
		<div class="col-12 px-3">
			<a href="/education/ko.do"><img src="/img/choi-txt-m-img.png" id="mobile-100-percent"></a>
		</div>
	</div>
</div>
	

<!-- 수강생후기 -->
<%@ include file = "index_reply.jsp" %> 
	

<!-- 위아크루 -->
<%@ include file="index_weare.jsp"%>

<!-- 강사광고배너 -->
<div class="container-fluid">
	<div class="row main-bt-banner-01">
		<div class="col-12 text-center mt-7 mobile-hidden">
			<img src="/img/main-teacherbanner-01.png">
		</div>
		<div class="col-12 text-center mt-7 mobile-show">
			<img src="/img/main-teacherbanner-01-01.png">
		</div>
	</div>
	<!-- 선생님 <div class="row main-bt-banner-02">
		<div class="col-12 text-center">
			<img src="/img/main-teacherbanner-02.png" id="mobile-100-percent">
		</div>  -->
	</div>
</div>



<!-- 고객센터 -->
<div class="container-fluid mobile-show" id="mobile-100-percent">
	<div class="row main-row">
		<div class="col-12 text-center">
			<img src="/img/main-sign-txt_09.png" id="mobile-100-percent">
		</div>
	</div>
</div>

<div class="container-fluid call-bg-container mobile-show py-5" id="mobile-100-percent" style="height: 100%;">
	<div class="row main-row text-center">
		<div class="col-6 off-hide main-pro-category" style="border-right: 1px solid #474747">
			<p class="font-24 font-white pt-4 px-4">전화상담</p>
			<p class="font-bold font-26-m font-pink py-1 pb-2 px-4 ">02-2038-0065</p>
			<p class="font-18-m font-lightblack-2 px-4">주말/공휴일에도 상담이 가능합니다</p>
			<a href='tel:02-2038-0065'><button class="btn btn-primary" style="width: 100px; margin-top: 25px;">전화걸기 ☎</button></a>
		</div>
		<div class="col-6 off-hide main-pro-category">
			<p class="font-24 font-white pt-4 px-4">카카오톡</p>
			<p class="font-bold font-26-m font-pink py-1 pb-2 px-4 ">KAKAO TALK</p>
			<p class="font-18-m font-lightblack-2 px-4">카카오톡 상담 바로가기</p>
			<a href="https://pf.kakao.com/_QWAEl"><button class="btn btn-primary" style="width: 100px; margin-top: 25px;">친구추가 +</button></a>
		</div>
	</div>
</div>

<!-- 기출문제배너 -->
<div class="container-fluid edu-foot-banner-bg-container" id="mobile-100-percent">
	<div class="row main-row">
		<div class="col-12 off-hide main-pro-category">
			<a href="/counsel/online.do"><img src="/img/foot-banner01-img.png" id="mobile-50-percent"></a> <img src="/img/foot-banner02-img.png" id="mobile-45-percent">
		</div>
	</div>
</div>

<footer>
	<%@ include file="include/footer.jsp"%>
</footer>

<script>
$(document).ready(function() {	
	if ($(window).width() > 768) {
		// pc사이즈일때

		// 메인비쥬얼
		var mainvisualSwiper = new Swiper('#sw-main-visual', {
			loop : true,
			centeredSlides : true,
			speed : 800,
			autoplay : {
				delay : 7000
			},
			navigation : {
				nextEl : '#sw-main-visual-silde-next',
				prevEl : '#sw-main-visual-silde-prev',
			},
		});

		// 크루모먼트
		var cmSwiper = new Swiper('#sw-main-crewmoment', {
			slidesPerView : 3,
			slidesPerColumn : 1,
			spaceBetween : 30,
			speed : 1000,
			autoplay : {
				delay : 3000,
				disableOnInteraction : false,
			},
		});

		// 커리큘럼
		var curkoSwiper = new Swiper('#sw-curri-thumb', {
			slidesPerView : 3,
			spaceBetween : 25,
			speed : 1000,
			loop : true,
			autoplay : {
				delay : 4000,
				disableOnInteraction : false,
			},
		});

		// 중간베너
		var thumbSwiper = new Swiper('#sw-main-thumb-banner', {
			loop : true,
			autoplay : {
				delay : 3000,
				disableOnInteraction : false,
			},
			slidesPerView : 1,
			pagination : {
				el : '#sw-main-thumb-banner-pagination',
				clickable : true,
			},
		});

		// 위아크루
		var blogSwiper = new Swiper('#sw-main-blog', {
			slidesPerView : 4,
			spaceBetween : 10,
			pagination : {
				el : '#sw-main-blog-pagination',
				clickable : true,
			},
		});

	} else {
		// 모바일사이즈일때

		var mainvisualSwiper = new Swiper('#sw-main-visual-mobile', {
			loop : true,
			centeredSlides : true,
			autoplay : {
				delay : 8000,
				disableOnInteraction : true,
			},
			navigation : {
				nextEl : '#sw-main-visual-silde-next-mobile',
				prevEl : '#sw-main-visual-silde-prev-mobile',
			},
		});

		// 퀵메뉴 
		var quickmenuSwiper = new Swiper('#sw-main-quickmenu', {
			slidesPerView : 1,
			navigation : {
				nextEl : '#sw-main-quickmenu-next-button',
				prevEl : '#sw-main-quickmenu-prev-button',
			},
		});

		// 크루모먼트
		var cmSwiper = new Swiper('#sw-main-crewmoment', {
			slidesPerView : 2,
			slidesPerColumn : 1,
			spaceBetween : 10,
			speed : 1000,
			autoplay : {
				delay : 3000,
				disableOnInteraction : false,
			},
		});

		// 커리큘럼
		var curkoSwiper = new Swiper('#sw-curri-thumb', {
			slidesPerView : 1.5,
			slidesPerColumn : 1,
			spaceBetween : 10,
			speed : 1000,
			loop : true,
			autoplay : {
				delay : 4000,
				disableOnInteraction : false,
			},
		});

		//중간베너
		var thumbSwiper = new Swiper('#sw-main-thumb-banner', {
			loop : true,
			autoplay : {
				delay : 3000,
				disableOnInteraction : false,
			},
			slidesPerView : 1,
			pagination : {
				el : '#sw-main-thumb-banner-pagination',
				clickable : true,
			},
		});

		// 위아크루
		var blogSwiper = new Swiper('#sw-main-blog', {
			autoplay : {
				delay : 3000,
				disableOnInteraction : false,
			},
			slidesPerView : 1,
			pagination : {
				el : '#sw-main-blog-pagination',
				clickable : true,
			},
		});

	}
});

function startSilde(swiper) {
	swiper.autoplay.start();
}

function stopSilde(swiper) {
	swiper.autoplay.stop();
}

</script>


</body>
</html>