<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OMG</title>
</head>

<style>
	.card { width: 120%;}	
	.btn-box {float:right;}

</style>

<body id="page-top">
<!-- wrap -->
<div id="wrapper">
	<!-- side_bar -->
	<%@include file="/WEB-INF/views/inc/side_bar.jsp" %>
	<!-- //side_bar -->
		<!-- Content Wrapper -->
    	<div id="content-wrapper" class="d-flex flex-column">

	      	<!-- Main Content -->
	      	<div id="content">
	      		<!-- top_bar -->
	      		<%@include file="/WEB-INF/views/inc/top_bar.jsp" %>
	      		<!-- //top_bar -->
	      		
	      		<!-- page Content -->
	      		<div class="container-fluid">

					<!-- Page Heading -->
					<div class="d-sm-flex align-items-center justify-content-between mb-4" >
					  <h1 class="h3 mb-0 text-gray-800">문서 등록 페이지</h1>
					  <div class="btn-box">
					  	<a id="insert" href="${hContext}/document/document.do"  onClick="insertDcoument()" class="btn btn-sm btn-primary shadow-sm"><i class="fas fa-file-upload fa-sm text-white-50"></i>등록</a>
					  	<a href="${hContext}/document/document.do" class="btn btn-sm btn-primary shadow-sm"><i class="fas fa-backspace fa-sm text-white-50"></i>취소</a>
					  </div>
					</div>
					
				
					<!-- Content Row -->
					
					<div class="row">
					
					  <!-- Area Chart -->
					  <div class="col-xl-15 col-lg-10">
					    <div class="card shadow mb-4">
					      <!-- Card Header - Dropdown -->
					      <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
					        <h6 class="m-0 font-weight-bold text-primary">문서 등록</h6>
					        <div class="dropdown no-arrow">
					          <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
					          </a>
					          <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
					            <div class="dropdown-header">Dropdown Header:</div>
					            <a class="dropdown-item" href="#">Action</a>
					            <a class="dropdown-item" href="#">Another action</a>
					            <div class="dropdown-divider"></div>
					            <a class="dropdown-item" href="#">Something else here</a>
					          </div>
					        </div>
					      </div>
					      <!-- Card Body -->
					      <div class="card-body">
					        <div class="chart-area">
					      		<!-- to do : 값들 name/id 부여 -->
					      		<!-- 제목  -->
					      		<div>
						      		<div class="card-body-label" style="display: inline-block; width:7%; margin-bottom:10px;">
						      			<div class="title-header bg-primary text-white btn-sm" style="text-align:center;" >
						      				제목
						      			</div>
						      		</div>
						      		<div class="title-body" style="display: inline-block;">
						      			<input id="title" class="title-input" type="text" style=" width :900px;">
						      		</div>
					        	</div>
					        	<!-- //제목  -->
					        	<!-- 종류 / 기간   -->
					        	<div>
						        	<div class="card-body-label" style="display: inline-block; width:7%; margin-bottom:10px;">
						      			<div class="kind-header bg-primary text-white btn-sm" style="text-align:center;" >
						      				종류
						      			</div>
						      		</div>
						      		<div class="kind-body" style="display: inline-block;">
						      			<!-- to do : for문 사용해서 문서 종류 데이터 입력   -->
						      			<select id="kind" class="kind-body-select" style="width:400px;">
							      			<option >----------</option>
							      			<option >0</option>
							      			<option >1</option>
							      		</select>
						      		</div>
						      		<div class="card-body-label" style="display: inline-block; width:7%; margin-bottom:10px;">
						      			<div class="dDay-header bg-primary text-white btn-sm" style="text-align:center;" >
						      				기간
						      			</div>
						      		</div>
						      		<div class="dDay-body" style="display: inline-block;">
						      			<input id="dDay" type="date" style="width:400px;">
						      		</div>
						      	</div>
						      	<!--// 종류 / 기간   -->
						      	<!-- 파일 등록  -->
						      	<div>
						      		<div class="card-body-label" style="display: inline-block; width:7%; margin-bottom:10px;">
						      			<div class="file-header bg-primary text-white btn-sm" style="text-align:center;" >
						      				파일 
						      			</div>
						      		</div>
						      		<!-- to do : 파일 등록 모양 만들기  -->
						      		<div class="file-body" style="display: inline-block;">
						      			<input class="file-input" multiple="multiple"   type="file" multiple style=" width :300px;">
						      		</div>
					        	</div>
					        	<!--// 파일 등록 -->
					        	<!-- 결재자 -->
					        	<div>
						        	<div class="card-body-label" style="display: inline-block; width:7%; margin-bottom:10px;">
						      			<div class="approval-header bg-primary text-white btn-sm" style="text-align:center;" >
						      				결재자
						      			</div>
						      		</div>
						      		<div class="approval-body" style="display: inline-block;">
						      			<!-- to do : for문 사용해서 사원 입력하기  -->
						      			<select id="approval"  class="approval-body-select" style="width:400px;">
							      			<option >----------</option>
							      			<option >인사팀 부장 홍길동</option>
							      			<option >총무팀 팀장 철수</option>
							      		</select>
						      		</div>
						      	</div>
					        	<div class="card-body-label" style="width:7%; margin-bottom:10px;">
						      			<div class="cont-header bg-primary text-white btn-sm" style="text-align:center; width:100px;" >
						      				문서 내용
						      			</div>
						      	</div>
						      	<input id="cont" class="cont-body" type="text" style="width:900px; height:100px;">
					        </div>
					      </div>
					    </div>
					  </div>
					</div>
					
		        </div>
		        <!-- // page Content -->
	      	
	      	</div>
	      	<!-- //Main Content -->
	      	
	      	<!-- footer -->
	      	<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	      	<!-- //footer -->
	      	
		</div>
		<!-- //Content Wrapper -->
</div>
<!-- //wrap -->
</body>

<script type="text/javascript">


	//title : 제목 ,  kind : 종류 ,dDay :기간 , approval : 결재자, cont : 내용
	function insertDcoument (){

		$.ajax({
			url:"${hContext}/document/doInsert.do",
			type:"GET",
			data:{"title" :  $("#title").val(), 
				  "kind" :	$("#kind option:selected").val(),
				  "dDay" :	$("#dDay").val(),
				  "okUser" :$("#approval option:selected").val()	,
				  "documentCont" : $("#cont").val()	
				},
			dataType:"json",
		success:function(data){
		 	alert("등록이 성공 하였습니다.")
		},
		error:function(err){
			alert("등록이 실패 하였습니다.")
		}

		});					

	}



</script>


</html></html>