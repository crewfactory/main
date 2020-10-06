<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<%@ include file = "../include/header.jsp" %>
<body>
  <div class="container-scroller">
    <%@ include file="../include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="../include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">
          
		  <form action="/manager/various/insert" name="form" id="form" method="post" data-toggle="validator">          
          <input type="hidden" name="regid" value="${sessionScope.ManagerInfo.userid}">
          <input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
          <div class="row">
            <div class="col-md-8 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <!-- div class="form-group">
                      <label for="section">구분</label>
                      <div class="input-group">
                        <select class="form-control mr-2" name="section" id="section">
                          <option value="공지">공지</option>
                          <option value="이벤트">이벤트</option>
                          <option value="행사">행사</option>
                          <option value="특강">특강</option>
                          <option value="기타">기타</option>
                        </select>
                      </div>
                      <div class="help-block with-errors text-danger"></div>
                    </div--> 
                    <div class="form-group">
                      <label for="title" class="control-label">제목</label>
                      <input type="text" class="form-control" value="" name="title" id="title" placeholder="제목" data-error="제목을 입력하세요." required>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="editor" class="control-label">내용</label>
	                  	<textarea class="form-control" name="content" id="editor" data-error="내용을 입력하세요." required></textarea>
	                  <div class="help-block with-errors text-danger"></div>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">저장</button>
                    <a href="../various" class="btn btn-light">취소</a>
                </div>
              </div>
            </div>
          </div>	
		
		</form>          

        </div>
        <!-- content-wrapper ends -->
		<%@ include file="../include/footer.jsp" %>
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

<script> 

	var editor = new FroalaEditor('textarea#editor', {
		heightMin: 700,
		heightMax: 900,
		imageUploadURL: '/docs',
	    imageUploadParam: 'file',
	    imageUploadMethod: 'POST',
	    imageUploadParams: {folder: 'data'},
	    imageAllowedTypes: ['jpeg', 'jpg', 'png', 'gif'],
	    videoUploadURL: '/docs',
	    videoUploadParam: 'file',
	    videoUploadMethod: 'POST',
	    videoUploadParams: {folder: 'data'},
	    videoAllowedTypes: ['webm', 'mp4', 'ogg'],
	    fileUploadURL: '/docs',
	    fileUploadParam: 'file',
	    fileUploadMethod: 'POST',
	    fileUploadParams: {folder: 'data'},
	    fileAllowedTypes: ['*']
	});
 
 	$(document).ready(function() {
	 	$("#form").validator();	//폼발리데이터
	}); 	

</script>

</body>  
</html>


  


