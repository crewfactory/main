<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>


<%@ include file="../include/header.jsp"%>
<style>
	.ck-content h4 { font-size:18px; font-weight:600; }
	.ck-content h4 strong {	font-weight:600; }
	
	#sw-pro-li-container .swiper-slide .pro-wrapper { background-color:#e3e5e8; height:200px; }	
	#sw-pro-li-container .swiper-slide-thumb-active .pro-wrapper, #sw-pro-li-container .swiper-slide .pro-wrapper:hover { background-color:#0072ff; color:#fff; cursor:pointer; }
	.sw-pro-li-cantainer-pagination .swiper-pagination-bullet { margin: 20px 3px; }
	
	.pro-main-container { height:470px;	}
	.pro-img-container {	width:400px; bottom:0px; right:0px;	}
	.pro-title-container { width:450px; margin-top:60px; padding-left:50px;	}
	.pro-list-container { margin-top:50px; }	
	.pro-list-container .pro-list-container-txt { width:180px; position:aubsolute; z-index:800; margin-top:50px; margin-left:30px; margin-right:10px; }
	.pro-wrapper img { width:150px; position:absolute; right:0px; bottom:0px; }
	.pro-title-container .mt-5p { margin-top: 1.5rem !important; }
	
@media only screen and (max-width: 767px) {
	.ck-content h4 { font-size:14px; }
	#sw-pro-li-container .swiper-slide .pro-wrapper { height:170px; }
	.pro-main-container { height:290px;	}
	.pro-title-container { padding-left:30px; width:300px; margin-top:30px;	}
	.pro-img-container {	width:250px; bottom:0px; right:-50px;	}
	.pro-list-container { margin-top:.0px;	}	
	.pro-list-container .pro-list-container-txt { width:120px; margin-top:30px; margin-left:10px; padding-right:20px; }
	.pro-wrapper img { width:130px; right:-30px; bottom:0px; }
	.pro-title-container .mt-5p { margin-top: 1.5rem !important; }	
	.pro-img-modal { width:150px; bottom:0px; right:-30px; }
	
}
</style>
</head>
<body>

<div class="container-fluid">
	<div class="row main-row">
		<div class="col-12 text-center">
			<img src="https://www.crew-factory.com/img/main-sign-txt-7.png" class="mobile-75-percent">
		</div>
	</div>
</div>
		
<div class="container-fluid" id="containter-body">
	<div class="row main-row">
		<div class="col-12 px-2">
			<div class="swiper-container" id="sw-pro-thumb-container">
				<div class="swiper-wrapper">					
					<c:forEach items="${pro}" var="pro" varStatus="status">
						<div class="swiper-slide">
							<div class="col-7 pro-main-container rad-div-20 off-hide mobile-100-percent" style="position:relative; background:url('/img/pro-sign-bg.jpg') no-repeat left bottom;">
								<img src="${pro.thumbnail}" class="pro-img-container" style="position:absolute; z-index:500;">
								<div class="pro-title-container" style="position:relative; z-index:600;">
									<p class="font-white font-40" style="color:#5be2ff; font-weight:500; word-break:keep-all;">${pro.subject}</p>
									<div class="col-12 mt-5p font-white font-28" style="font-weight:500;">
										<div class="col-5">${pro.proname}<span class="ml-2">${pro.ranks }</span></div>
										<div class="col-4 mx-2 mobile-show"><a href="javascript:viewModal('#modalNum${status.count}')"><img src="/img/ico-more-view-btn.png"></a></div>
									</div>
									<div class="col-12 mt-5p font-white font-18" style="font-weight:500; word-break:keep-all;">${pro.sentence}</div>
									<div class="col-12 mt-4">
										<div class="col-1"><img src="/img/ico-watch-img.png" class="mobile-75-percent"></div>
										<div class="col-11 pl-2"><span class="font-white font-14" style="font-weight:400; word-break:keep-all;">${pro.schedule }</span></div>
									</div>
									<div class="col-12 mt-3">
										<div class="col-1"><img src="/img/ico-schedule-img.png" class="mobile-75-percent"></div>
										<div class="col-11 pl-2"><span class="font-white font-14" style="font-weight:400; word-break:keep-all;">${pro.classnm }</span></div>
									</div>
								</div>
							</div>
							<div class="col-5 mobile-hidden" style="padding-left:50px;">
								<div class="col-12 rad-div-20 px-5 py-5" style="border:1px solid #cecece; height:470px;">
									<div class="ck-content">${pro.history }</div>
								</div>
							</div>
						</div>
					</c:forEach>					
				</div>
			</div>			
		</div>
		<div class="col-12 pro-list-container">
			<div class="swiper-container" id="sw-pro-li-container">
			<ul class="swiper-wrapper pl-1">
				<c:forEach items="${pro}" var="pro" varStatus="status">
					<li class="swiper-slide px-1 py-2" style="width:20%;">
						<div class="col-12 rad-div-10 border off-hide pro-wrapper" style="height:170px;">
							<img src="${pro.thumbnail}">
							<div class="col-12 pro-list-container-txt">
								<p class="font-20 font-bold" style="color:#00285a;"><strong>${pro.proname}</strong><span class="ml-2 font-14">${pro.ranks }</span></p>
								<p class="font-14 mt-4" style="word-break:keep-all;">${pro.subject}</p>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
			</div>
			<div class="sw-pro-li-cantainer-pagination text-center"></div>
		</div>
	</div>
</div>

<script>

if ($(window).width() > 768) {
	var proliSwiper = new Swiper('#sw-pro-li-container', {
		slidesPerView : 4,
		pagination: {el: ".sw-pro-li-cantainer-pagination", clickable: true, },
		loop: true,
		autoplay: {
	        delay: 2000,
	        disableOnInteraction: false,
	      },
	});
	var proThumbSwiper = new Swiper('#sw-pro-thumb-container', {
		slidesPerView : 1,
		thumbs: {
	        swiper: proliSwiper
	      }
	});	
} else {
	var proliSwiper = new Swiper('#sw-pro-li-container', {
		slidesPerView : 2.5,
		pagination: {el: ".sw-pro-li-cantainer-pagination", clickable: true, },
	});
	var proThumbSwiper = new Swiper('#sw-pro-thumb-container', {
		slidesPerView : 1,
		thumbs: {
	        swiper: proliSwiper
	      }
	});
}

</script>

<script>
	function viewModal(str){
		var modal = str;
		$(modal).show();
	}
	function closeModal(str){
		var modal = str;
		$(modal).hide();
	}
	
</script>

<c:forEach items="${pro}" var="prolist" varStatus="status">
<div class="modal" id="modalNum${status.count}" style="display:none; width:100%; height:100%; background: rgba(0, 0, 0, 0.7); position:fixed; z-index:999;">
  <div class="modal-dialog" role="document" style="max-width:600px; min-width:350px;">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"></h5>
        <button type="button" class="close" onclick="closeModal('#modalNum${status.count}')">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="col-12">
			<div class="col-12 px-2 py-4 pro-main-modal off-hide mobile-100-percent" style="position:relative; background:url('/img/pro-sign-bg.jpg') no-repeat left bottom;">
				<img src="${prolist.thumbnail}" class="pro-img-modal" style="position:absolute;z-index:500;">
				<div class="pro-title-modal" style="position:relative; z-index:600;">
					<p class="font-white font-20" style="color:#5be2ff; font-weight:500; word-break:keep-all;">${prolist.subject }</p>
					<p class="mt-4 font-white font-16" style="font-weight:500;">${prolist.proname}<span class="ml-2">${prolist.ranks }</span></p>
					<p class="mt-4 font-white font-14" style="font-weight:500; word-break:keep-all;">${prolist.sentence }</p>
					<div class="col-12 mt-4">
						<div class="col-1"><img src="/img/ico-watch-img.png" width="15px"></div>
						<div class="col-11 pl-2"><span class="font-white font-14" style="font-weight:400; word-break:keep-all;">${prolist.schedule }</span></div>
					</div>
					<div class="col-12 mt-3">
						<div class="col-1"><img src="/img/ico-schedule-img.png" width="15px"></div>
						<div class="col-11 pl-2"><span class="font-white font-14" style="font-weight:400; word-break:keep-all;">${prolist.classnm }</span></div>
					</div>
				</div>
			</div>
			<div class="col-12">
				<div class="col-12 px-3 py-5">
					<div class="ck-content">${prolist.history }</div>
				</div>
			</div>
      </div>
    </div>
  </div>
</div>
</c:forEach>
	
</body>
</html>