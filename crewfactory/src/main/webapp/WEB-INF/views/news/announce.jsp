<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-공지사항</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>

<%@ include file = "../include/nav.jsp" %>
<%@ include file = "../include/floating-left.jsp" %>


<div class="container-fluid">
	<div class="row sm-row site-map-row mt-5 mb-4">
		<div class="col-12">
		  <div class="col-12 mb-1">
		    <h1>공지사항</h1>
		  </div>
		  <div class="col-12 py-2 line-2-black" style="width:200px; margin:0 auto;"></div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row sm-row">	
		<div class="col-12">
			<div class="search col-12 mt-2">
				<form role="form" name="frmSearch" id="frmSearch" action="/news/announce.do">
				<input type="hidden" name="init" value="${init}" />
				<input type="hidden" name="section" value="${param.section}" />
				<input type="hidden" name="startPage" id="startPage" value="" />
				<input type="hidden" name="visiblePages" id="visiblePages" value="" />
				<div class="input-group search-row">
					<input class="form-control search-bar" name="searchText" id="searchText" type="text" placeholder="검색어를 입력하세요" value="${param.searchText}">
					<div class="input-group-append">
						<button class="btn btn-primary" name="searchBtn" id="searchBtn"><img class="faq-search-btn" src="../img/ico-search-wh.png"></button>
					</div>
				</div>
				</form>				
			</div>
		</div>
	</div>
</div>

<div class="container-fluid" id="containter-body">
	<div class="row sm-row">	
		<div class="col-12 my-2"></div>
		<div class="col-12 font-20 font-bold table-header">
			<!-- ul>
				<li class="pt-3 pl-4" style="width:60%;">제목</li>
				<li class="pt-3 text-center" style="width:15%;">일자</li>
				<li class="pt-3 text-center" style="width:15%;">조회수</li>
			</ul-->
		</div>
		<table class="table">
			<tbody>
				<c:forEach items="${result}" var="list" >
				<tr class="align-middle" style="height:4rem;">
					<%-- <td width="20%" id="bbs-thumbnail"><img src="/docs/bbs/${list.thumbnail}" class="align-middle" style="width:250px;"></td> --%>
					<td width="100%" style="padding:20px;">
						<span class="sm-label">
					  	<c:choose>
					    	<c:when test="${list.section eq 'notice'}">공지</c:when>
					    	<c:when test="${list.section eq 'event'}">행사</c:when>
					    	<c:when test="${list.section eq 'special'}">특강</c:when>
					    	<c:when test="${list.section eq 'etc'}">기타</c:when>
					    	<c:otherwise>공지</c:otherwise>
					  	</c:choose>
					  </span>
					  <span class="font-20 align=middle mx-3 py-4">
					    <a href="/news/annview.do?idx=${list.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}&section=${param.section}">${ list.title }</a>
					  </span>
					  <span class="font-18 mobile-hidden float-right"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/></span>					  
					</td> 
				</tr>
				</c:forEach >
			</tbody>
			<tfoot>
			  <tr>
			    <td colspan="3"></td>
			  </tr>  
			</tfoot>
		</table>
		<div class="col-12 paging text-center mb-5">
		  <ul class="pagination pagination-lg" id="pagination"></ul>
		</div>
	</div>
</div>


<!-- 하단링크 -->
<%@ include file = "../include/footlink.jsp" %>

<!-- 상담신청 -->
<%@ include file = "../include/counsel.jsp" %>

<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>


<script>

$(document).ready(function() {
       
	$("#search").click(function(){
	    $("#frmSearch").submit();
	});
	     
	var totalPages = ${totalPage};	//전체 페이지
	var visiblePages = 3;			//리스트 보여줄 페이지
	var startPage = ${startPage};	//현재 페이지
	 
	$('#pagination').twbsPagination({
	    totalPages: totalPages,
	    visiblePages: visiblePages,
        startPage: startPage,
        onPageClick: function (event, page) {
        	$('#startPage').val(page);//보고 싶은 페이지
        	$('#visiblePages').val(visiblePages);
        	$("#frmSearch").submit();
        }
	});
});

</script>

</body>
</html>