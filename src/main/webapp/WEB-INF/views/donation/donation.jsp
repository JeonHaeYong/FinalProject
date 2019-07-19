<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700, 900|Vollkorn:400i" rel="stylesheet">
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

<style>
#left_img, #right_img {
	width: 80%;
	height: auto;
}

#donation_link
{
	color: #EC7357 !important;
	font-weight: 600 !important;
}

#donation_btn
{
	background-color: #EC7357 !important;
}

#donation_btn:hover
{
	background-color: black !important;
}

.c-img
{
	width: 100% !important;
	height: 300px !important;
}
</style>

</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	<jsp:include page="/WEB-INF/views/module/menu.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/module/loginstyle.jsp" ></jsp:include>
	<!-- -----여기까지 고정 Header입니다----------------------------------------------------------------------------------------------------------- -->


	<section class="site-section bg-light block-13">

	<div id="container" class="container">

		<div class="row justify-content-center">

			<div class="col-12 col-lg-6 my-5">

				<div class="row justify-content-center">

					<div class="col-5 text-center">


						<div id="carouselExampleInterval" class="carousel slide" data-ride="carousel">
							<div id="carousel-inner" class="carousel-inner">
								
								<c:if test="${dto.image1 != '없음'}">
									<div class="carousel-item" data-interval="3000">
										<img src="${dto.image1}" class="d-block w-100 c-img" alt="...">
									</div>
								</c:if>
								
								<c:if test="${dto.image2 != '없음'}">
									<div class="carousel-item" data-interval="3000">
										<img src="${dto.image2}" class="d-block w-100 c-img" alt="...">
									</div>
								</c:if>
								
								<c:if test="${dto.image3 != '없음'}">
									<div class="carousel-item" data-interval="3000">
										<img src="${dto.image3}" class="d-block w-100 c-img" alt="...">
									</div>
								</c:if>
								
								<c:if test="${ ((dto.image1 == '없음') && (dto.image2 == '없음')) && (dto.image3 == '없음') }">
									<div class="carousel-item" data-interval="3000">
										<img src="resources/images/dog_1.jpg" class="d-block w-100 c-img" alt="...">
									</div>
								</c:if>
								
							</div>
							<a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-slide="prev"> 
								<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span>
							</a> 
							<a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-slide="next"> 
								<span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span>
							</a>
						</div>

					</div>

					<div class="col-7 text-center">

						<h3>${dto.title}</h3>
						<br>${dto.explanation}

					</div>

				</div>

			</div>
		
			<div class="col-12 text-center my-5">

				<div class="row">
				
					<div class="col-12 col-lg-6 my-3 text-center">
						
						<img src="/resources/donation/left.jpg" alt="사진이 없습니다." id="left_img" class="mx-5">
					
					</div>
					
					<div class="col-12 col-lg-6 my-3 text-center">
					
						<img src="/resources/donation/right.jpg" alt="사진이 없습니다." id="right_img" class="mx-5">
					
					</div>
				
				</div>
				
				<div class="row">
				
					<div class="col-12 text-center">
					
						<input id="donation_btn" class="btn btn-info mt-5" type="button" value="후원">
						
					</div>
				
				</div>

			</div>

			<div class="col-12 col-md-6 text-center my-5">

				<img src="/resources/images/clock-64.png" alt="사진이 없습니다.">
				<span id="last_time_span"></span>

			</div>

			<div class="col-12 col-md-6 text-center my-5">

				<img src="/resources/images/pie-chart-64.png" alt="사진이 없습니다.">
				<span>${dto.currentmoney} / ${dto.goalmoney}</span>

			</div>

		</div>

	</div>

	</section>










	<!-- ----Footer부분입니다^_^---------------------------------------------------------------------------------------------------------- -->
	<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
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
<script>
	$(function()
    {
		
		$("#carousel-inner div:first-child").addClass("active");
		
		var time = "${dto.enddate}";
		var forTime = time.substring(5, 7)+"/"+time.substring(8, 10)+"/"+time.substring(0, 4);
		
	    CountDownTimer(forTime, 'last_time_span'); //첫번째 인수로 넣은 날짜까지
// 		CountDownTimer('01/01/2018 00:00 AM', 'newcountdown'); // 2018년 1월 1일까지, 시간을 표시하려면 01:00 AM과 같은 형식을 사용합니다.
	    
	    function CountDownTimer(dt, id)
	    {
		    var end = new Date(dt);
		    
		    var _second = 1000;
		    var _minute = _second * 60;
		    var _hour = _minute * 60;
		    var _day = _hour * 24;
		    var timer;
		    
		    var targetId = "#" + id;
		    
		    var $target = $(targetId);
		    
		    function showRemaining()
		    {
			    var now = new Date();
			    var distance = end - now;
			    if(distance < 0)
			    {
				    
				    clearInterval(timer);
				    $target.text = '종료!';
				    
				    return;
			    }
			    
			    var days = Math.floor(distance / _day);
			    var hours = Math.floor((distance % _day) / _hour);
			    var minutes = Math.floor((distance % _hour) / _minute);
			    var seconds = Math.floor((distance % _minute) / _second);
			    
			    $target.text(days + '일 ' + hours + '시간 ' + minutes + '분 ' + seconds + '초');
		    }
		    
		    timer = setInterval(showRemaining, 1000);
	    }
	    // Source: stackoverflow
	   
	    
	    $("img").on("error", function()
		{
	    	$(this).attr("src","resources/images/dog_1.jpg");
		});
	    
    });
    
    onload = function()
    {
		
    };
</script>
</html>