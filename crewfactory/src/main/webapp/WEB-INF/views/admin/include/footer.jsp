<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<footer class="footer">
  <div class="d-sm-flex justify-content-center justify-content-sm-between">
    <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright Â© 2018 <a href="http://www.crew-factory.com/" target="_blank">Baek Ah</a>. All rights reserved.</span>
    <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
  </div>
</footer>

<script>
	$(document).ready(function(){
		var id = "${sessionScope.ManagerInfo.usernm}";
		
		if(id != ""){
			//console.log("id : "+id);
		}else{
			//console.log("id : 메니져세션정보 없음");
			location.href = "/manager/index.do";
		}
	});
</script>