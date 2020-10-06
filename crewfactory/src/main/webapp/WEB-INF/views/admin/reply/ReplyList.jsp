<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
                    <h3 class="under-line mx-1">리뷰관리@</h3>
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
                            <th width="">순번</th>
                            <th width="">경로</th>
                            <th width="">평점</th>
                            <th width="">내용</th>
                            <th width="">등록일자</th>
                            <th width="">관리자</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${result}" var="list">
                        <tr>
                        	<td>${list.idx}</td>
                       		<td>${list.section}</td>
                           <td>
                           	<c:choose>
                       		  		<c:when test="${ list.grade eq '01' }">★</c:when>
                           		<c:when test="${ list.grade eq '02' }">★★</c:when>
                           		<c:when test="${ list.grade eq '03' }">★★★</c:when>
                           		<c:when test="${ list.grade eq '04' }">★★★★</c:when>
                           		<c:when test="${ list.grade eq '05' }">★★★★★</c:when>
                           	</c:choose>
                           </td>
                           <td><a href="/manager/reply/view.do?idx=${list.idx}">${fn:substring(list.content, 0, 30)}</a></td>
                           <td>${list.regdate}</td>
                           <td>${list.regid}</td>
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
    		"order": [[0, 'desc'], [1, 'desc']],
    		"iDisplayLength": 200
    	});
	});
 	
 	function goWrite(){
 		document.location.href="/manager/reply/write.do";
 	}
 	
 </script>


