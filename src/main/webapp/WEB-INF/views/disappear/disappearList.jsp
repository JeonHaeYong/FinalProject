<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700, 900|Vollkorn:400i"
	rel="stylesheet">
<link rel="stylesheet" href="resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/jquery-ui.css">
<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="resources/css/aos.css">
<link rel="stylesheet" href="resources/css/style.css">
<jsp:include page="/WEB-INF/views/module/loginstyle.jsp"></jsp:include>
<style>
	/* -------------------infobox -----------------   */
  #title{text-align: center;}
    .disappearList{width: 80%; margin: auto;}
.infowrapper {
font-family: 'Gamja Flower', cursive;
	box-sizing: border-box;
	height: 300px;
	overflow: hidden;
	border: 2px solid #754F4470;
}

.dtocol {
	padding-top: 50px;
}

.infoimg, .infotext,.infoextra {

	
overflow: hidden;

}
.infoimg{
margin-left:15px;
margin-top:15px;
margin-right:15px;
box-sizing: border-box;
height:60%;
}
.inforecommend{
border-top:1px solid #754F4470;
padding-left:5px;
margin-top:2px;
margin-left:15px;
margin-right:15px;
text-align:left;
height:7%;
box-sizing:border-box;
overflow:hidden;
}
.infotext{

font-size:18px;
text-align:left;
margin-left:15px;
margin-right:15px;
padding-left:5px;
height:18%;
margin-top:2px;
}
.infoimg>img {
width:100%;
	top: 0;
	left: 0;
	height: 100%;
}
.writeInfo>div{float: left; height: 15%;}
.writer{margin-left: 20px;}
.writeDate{margin-left: 100px;}
.footer{text-align:right; margin-right:120px; margin-bottom: 30px;}
.write-btn{background-color: #EC7357; color:white; border-style: none; border-radius:5px;}
.write-btn:hover{background-color:#f0522e; font-weight:bold; }


</style>
<script>
	$(function(){
		$(".write-btn").on("click",function(){
			location.href="toReportForm";
		});
	});
</script>
</head>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300" id="home-section">
	<jsp:include page="/WEB-INF/views/module/menu.jsp"></jsp:include>
	<!-- -----여기까지 고정 Header입니다----------------------------------------------------------------------------------------------------------- -->
	<div id="title"><h1>잠시 길 잃은 동물들</h1></div>
	<div class="containier ">
		<div class="row disappearList">
		<%-- <c:forEach var="list" items="${list }"> --%>
			<div class="col-lg-4 col-md-6 col-sm-6 dtocol">
				<div class="infowrapper">
					<div class="infoimg">이미</div>
				    <div class="inforecommend">♥</div>
                    <div class="infotext">제목</div>
                    <div class="writeInfo">
                    <div class="writer"> 작성자</div>
                    <div class="writeDate">작성날짜</div>
                    </div>
				</div>
			</div>
			<%-- </c:forEach> --%>
			
			
		</div>
		<div class="row navi-section">
			<div class="col-12">${navi }</div>
		</div>
		<div class="row mt-5 footer" align="right">
			<div class="col-12">
					<input type="button" value="글쓰기" class="write-btn">
			</div>
		</div>
	</div>
	<!-- ----Footer부분입니다^_^---------------------------------------------------------------------------------------------------------- -->
	<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	<script src="resources/js/jquery-ui.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.countdown.min.js"></script>
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<script src="resources/js/aos.js"></script>
	<script src="resources/js/jquery.fancybox.min.js"></script>
	<script src="resources/js/jquery.sticky.js"></script>
	<script src="resources/js/isotope.pkgd.min.js"></script>
	<script src="resources/js/main.js"></script>
</body>
</html>