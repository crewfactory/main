<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%= site_title %>-강사의능력이합격입니다</title>
<meta name="description" content="<%= site_descript %>" />
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file="../include/header.jsp"%>

</head>
<body>
	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>


	<!-- 사이즈 1920로 스크롤생김 -->


   <!-- 사이즈 1920로 스크롤생김 -->
	<!-- 모바일버전 -->
	<div style="text-align: center;">
		<img src="/img/d5_01.png" alt="합격률" id="mobile-100-percent" class="mobile-show">
   </div>
   
	<div style="text-align: center;">
		<img src="/img/d5_03.png" alt="합격률" id="mobile-100-percent" class="mobile-show">
   </div>
	
	
	<!-- 웹버전 -->
	<div style="text-align: center;">
		<img src="/img/d5_01_01.png" alt="합격률" id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
   </div>
  
	<div style="text-align: center;">
		<img src="/img/d5_03_03.png" alt="합격률" id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
   </div>


	<!-- 하단링크 -->
	<%@ include file="../include/footlink.jsp"%>

	<!-- 상담신청 -->
	<%@ include file="../include/counsel.jsp"%>

	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>



	<script>
		$(document).ready(function($) {
			$('.counter').counterUp({
				delay : 10,
				time : 3000
			});
		});

		var wow = new WOW({
			animateClass : 'animated',
			offset : 100
		});

		wow.init();
	</script>
	<script src="../dist/js/jquery.counterup.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<script src="../dist/js/bootstrap.min.js"></script>
	<script src="../dist/js/swiper.min.js"></script>
</body>
</html>