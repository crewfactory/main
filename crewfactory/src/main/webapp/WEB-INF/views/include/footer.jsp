<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="container-fluid bg-navy">
  <div class="row main-row">
    <div class="col-12 py-5 mb-5" id="footer-outlink">
      <div class="col-4">
        <img src="/img/logo-white.png">
        <div class="mt-2">
          <ul>
      	  	<li class="float-left px-3"><a href="https://www.facebook.com/crewseoul" target="_blank"><img src="../img/sns-facebook-ico.png"></a></li>
				  	<li class="float-left px-3"><a href="https://www.instagram.com/crewfactory_fly/" target="_blank"><img src="../img/sns-instagram-ico.png"></a></li>
				  	<li class="float-left px-3"><a href="https://pf.kakao.com/_QWAEl" target="_blank"><img src="../img/sns-kakao-ico.png"></a></li>
				  	<li class="float-left px-3"><a href="https://map.naver.com/v5/entry/place/34589774?c=14140743.5947732,4510655.1054681,15,0,0,0,dh"><img src="../img/sns-naver-ico.png"></a></li>
					</ul>
        </div>
      </div>
      <div class="col-8">
        <div class="col-12 my-3">
          <ul>
            <li class="px-3 float-left font-white"><b>강남캠퍼스</b></li>
            <li class="px-3 float-left"><a href="http://www.crewfa.com/" target="_blank" class="font-white">인천캠퍼스</a></li>
            <li class="px-3 float-left"><a href="http://www.crewgo3.com/" target="_blank" class="font-white">항공운항과입시</a></li>
            <li class="px-3 float-left"><a href="http://www.crew-gs.com/" target="_blank" class="font-white">항공사지상직</a></li>
            <li class="px-3 float-left"><a href="http://www.crew-gs.com/" target="_blank" class="font-white">여행사취업</a></li>
          </ul>
        </div>
        <div class="col-12">
        	<div class="col-2 mt-2 px-3" id="mobile-100-percent">
        		<p class="font-white">강남캠퍼스 본관</p>
        	</div>
        	<div class="col-10" id="mobile-100-percent">  
	          <ul class="px-3 mt-2">
	            <li class="font-gray">서울특별시 강남구 논현동 18-4 성일빌딩 1F, 2F 크루팩토리 승무원학원 (주)백아</li>
	          </ul>
	          <ul class="px-3 mt-1">
	            <li class="font-gray"><span>tel. 02-2038-0065</span><span class="mx-4">fax. 02-512-1467</span><a href="/detail/fee1.do" target="_blank" class="font-gray">수강료안내</a></li>
	          </ul>
	        </div>
	        <div class="col-2 mt-2 px-3" id="mobile-100-percent">
        		<p class="font-white">강남캠퍼스 제2관</p>
        	</div>
        	<div class="col-10" id="mobile-100-percent">  
	          <ul class="px-3 mt-2">
	            <li class="font-gray">서울특별시 강남구 논현동 17-5 극동빌딩 7층</li>
	          </ul>
	          <ul class="px-3 mt-1">
	            <li class="font-gray"><span>tel. 02-547-7279</span><span class="mx-4">fax. 02-548-4095</span><a href="/detail/fee2.do" target="_blank" class="font-gray">수강료안내</a></li>
	          </ul>
          </div>
          <div class="col-2 mt-2 px-3" id="mobile-100-percent">
        		<p class="font-white">인천캠퍼스</p>
        	</div>
        	<div class="col-10" id="mobile-100-percent">  
	          <ul class="px-3 mt-2">
	            <li class="font-gray">인천광역시 부평구 경원대로 1382 대한빌딩 5층</li>
	          </ul>
	          <ul class="px-3 mt-1">
	            <li class="font-gray"><span>tel. 032-502-3356</span><span class="mx-4">fax. 032-361-3346</span><a href="/detail/fee3.do" target="_blank" class="font-gray">수강료안내</a></li>
	          </ul>
	        </div>
        </div>
        <div class="col-12 px-3 mt-5 font-white">Copyright ⓒ  백아(주), All rights reserved.</div>  
      </div>
    </div>
  </div>
</div>


<%@page import="java.net.URLEncoder, java.net.URLDecoder" %>
<%
	String visiter_refer = request.getHeader("referer");
	String visiter_ipaddr = request.getRemoteAddr();
	String visiter_agent = request.getHeader("User-Agent");
	String visiter_domain = request.getServerName();
	String getParam = request.getQueryString();	
	String currentUrl = "http://" + request.getServerName() + request.getAttribute("javax.servlet.forward.request_uri");  
	if(getParam != null){
		currentUrl = currentUrl + "?" + getParam;
	}
%>
<script>
	$(document).ready(function(){
		var dec = decodeURI("<%=visiter_refer%>");
		var dec2 = decodeURI("<%=currentUrl%>");
		console.log(dec);
		console.log("<%=visiter_ipaddr%>");
		if(dec != 'null' || dec != null || dec != ''){
			$.ajax({
				type: "POST",
				contentType: "application/json",
				url: "/visit/counter.do",
				data: JSON.stringify({
				ipaddr : "<%=visiter_ipaddr%>",
				path : dec,
				current : dec2,
				domain : "<%=visiter_domain%>",
				agent : "<%=visiter_agent%>",
			}),
				dataType: 'json',
				error: function (e) { }	
			});
		}
	});
</script>




