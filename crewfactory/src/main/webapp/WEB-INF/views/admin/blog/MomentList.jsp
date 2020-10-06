<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="now" class="java.util.Date" />
<%@ include file = "../include/header.jsp" %>

<body>   
  <div class="container-scroller">
    <%@ include file="../include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="../include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">         
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="d-flex justify-content-between flex-wrap">
                <div class="d-flex align-items-end flex-wrap">
                  <div class="mr-md-3 mr-xl-5">
                    <h3 class="under-line mx-1">크루모먼트관리@</h3>
                  </div>
                </div>
                <div class="d-flex justify-content-between align-items-end flex-wrap">
                  <button type="button" class="btn btn-danger bg-white btn-icon mr-3 mt-2 mt-xl-0" onclick="goWrite()">
                    <i class="mdi mdi-plus text-muted"></i>
                  </button>
                  <button type="button" class="btn btn-light bg-white btn-icon mr-3 d-none d-md-block ">
                    <i class="mdi mdi-download text-muted"></i>
                  </button>
                  <button type="button" class="btn btn-light bg-white btn-icon mr-3 mt-2 mt-xl-0">
                    <i class="mdi mdi-clock-outline text-muted"></i>
                  </button>
                  <!-- button class="btn btn-primary mt-2 mt-xl-0">Download report</button-->
                </div>
              </div>
            </div>
          </div>


          <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <div class="table-responsive">
                    <table id="tabler" class="table table-striped table-bordered" style="width:100%;">
                      <thead>
                        <tr>
                            <th>#</th>
                            <th>썸네일</th>
                            <th>제목</th>
                            <th><img src=/img/ico-like.png alt="좋아요"></th>
                            <th><img src=/img/ico-view.png alt="조회수"></th>
                            <th>등록일</th>
                            <th>관리자</th>
                            <th>공개</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${result}" var="list">
                        <tr>
                            <td>${list.idx}</td>
                            <td width="250px" height="200px">
                            	<c:choose>
	                            	<c:when test="${list.thumbnail eq ''}">
	                            		<img src="/admin/images/no-image.png" style="width:100%; height:100%; border-radius:0%;">
	                            	</c:when>
	                            	<c:otherwise>
	                            		<img src="${list.thumbnail}" style="width:100%; height:100%; border-radius:0%;">
	                            	</c:otherwise>                            	
                            	</c:choose>
                            </td>
                            <td>
							    <a href="/manager/blog/MomentView.do?idx=${ list.idx }">${ list.title}</a>
							    <span class="mx-2">
							      <fmt:formatDate value="${now}" var="nowday" pattern="yyyy-MM-dd"/>
								  <fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="nowdate"></fmt:parseNumber>
								  <fmt:formatDate value="${list.regdate}" var="regday" pattern="yyyy-MM-dd"/>
								  <fmt:parseNumber value="${list.regdate.time / (1000*60*60*24)}" integerOnly="true" var="regdate"></fmt:parseNumber>
								  <c:if test="${ nowdate <= regdate + 14 }"><button class="vsm-btn">N</button></c:if>
							    </span>
							</td>
                            <td>${ list.likely }</td>
							<td>${ list.visit }</td>
							<td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" /></td>
							<td>${list.regid}</td>
							<td>
							  <c:choose>
							    <c:when test="${ list.openyn eq 'Y' }">공개</c:when>
							    <c:otherwise>비공개</c:otherwise>
							  </c:choose>
							</td>
                        </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
		<%@ include file="../include/footer.jsp" %>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
 </body>

<script>
 	
 	$(document).ready(function() {
    	$('#tabler').DataTable({
    		"order": [[0, 'desc']]
    	});
	});
 	
 	function goWrite(){
 		document.location.href="/manager/blog/MomentWrite.do";
 	}
 	
 </script>


