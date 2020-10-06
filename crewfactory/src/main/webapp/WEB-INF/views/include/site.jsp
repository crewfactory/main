<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%
	String domain = request.getServerName();
	String site = "https://www.crew-factory.com";
	String site_title = "강남크루팩토리승무원학원";
	String site_descript = "승무원학원가격, 스튜어디스학원추천, 항공사지상직승무원, 소수정예승무원과외, 인하공전항공운항과, 승무원되는법, 항공과, 강남, 인천캠퍼스";
	String ipsi_rink = "http://www.crewschool.co.kr";
	
	String strParam = request.getQueryString();	
	String URL = "http://" + request.getServerName() + request.getAttribute("javax.servlet.forward.request_uri");  
	if(strParam != null){
		URL = URL + "?" + strParam;
	}
	
	
	if(domain.equals("www.crewfac.com") || domain.equals("crewfac.com")){
		site = "http://www.crewfac.com";
		site_title = "소수정예승무원학원 크루팩토리";
		site_descript = "소수정예승무원학원, 아시아나항공 승무원 채용, 대한항공 승무원 채용, 외항사 승무원 채용, 스튜어디스학원 강남 승무원학원 가격, 비용, 수강료";
		ipsi_rink = "http://www.crewgo3.com";
	}else if(domain.equals("www.crewseoul.com") || domain.equals("crewseoul.com")){
		site = "http://www.crewseoul.com";
		site_title = "승무원과외전문 크루팩토리스튜어디스학원";
		site_descript = "강남 1:1 승무원과외, 비용, 추천, 승무원영어, 지원동기, 외항사과외, 승무원준비, 항공서비스학과, 승무원메이크업, 항공학과, 항공사유니폼, 스튜어드, 남자승무원, 외항사승무원, 이미지메이킹";
		ipsi_rink = "http://www.crewgo3.com";
	}else{
		site = "https://www.crew-factory.com";
		site_title = "강남크루팩토리승무원학원";
		site_descript = "승무원학원가격, 스튜어디스학원추천, 항공사지상직승무원, 소수정예승무원과외, 인하공전항공운항과, 승무원되는법, 항공과, 강남, 인천캠퍼스";
		ipsi_rink = "http://www.crewschool.co.kr";
	}
%>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
<meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="robots" content="index, follow">
<meta name="subject" content="<%=site_title%>"/>
<meta name="author" content="<%=site_title%>">
<meta name="keywords" content="<%=site_descript%>"/>
<meta property="og:type" content="website">
<meta property="og:image" content="/img/logo.png">
<meta property="og:url" content"<%=URL%>"/>

<meta name="naver-site-verification" content="071ef3f5ed783d52d857aa53d07b16c1b8fe726d"/>
<meta name="google-site-verification" content="KxIrKQFgeRd3l37FScVaPMlbXu6Nn6ULkuiKH7yv_-c" />

<link rel="canonical" href="https://www.crew-factory.com">

<script type="application/ld+json">
{
 "@context": "http://schema.org",
 "@type": "Person",
 "name": "<%=site_title%>",
 "url": "<%=site%>",
 "sameAs": [
   "https://www.facebook.com/crewseoul",
   "https://www.instagram.com/crewfactory_fly/"
 ]
}
</script>